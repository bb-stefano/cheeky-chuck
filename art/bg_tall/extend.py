"""Tall backdrops for the game from the 1024x1536 masters in this folder.

Each master holds the original 322x322 scene in its central square with the camera-tilt bands above and
below. The game needs 1024x2048 (322x644 content px, 162 px above and below the scene square, enough for
2.5:1 screens): a 1024x2048 master (drawn by Codex, see make_jobs.py) is used as is; an older 1024x1536
master gets EXT fake rows at the top and bottom (edge row stretched, softened with a horizontal blur that
grows with the distance from the real art) as a stopgap. Written as game/animpic/background_<scene>[_1|_2]_tall.jpg (1x, 322x644) and
..._tall@4x.jpg (the extended master itself; Solar2D only needs the 1x size, see imgsizes.lua).
tallbg.lua picks them up by name. Run: python -I art/bg_tall/extend.py [scene ...]
"""
import os, re, sys
import numpy as np
from PIL import Image, ImageFilter

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
MASTER_W, MASTER_H, EXT = 1024, 1536, 256
BASE_W = 322  # content px of the master's width (the original scene square is 322x322)

def band(row_block, n, flip):
    """n rows continuing `row_block` (the EXT_SRC outermost rows of the art) outward. The outermost row is
    stretched; blur widens with the distance so the strip reads as out-of-focus continuation, not streaks."""
    edge = row_block[-1] if not flip else row_block[0]  # the very last row of real art
    strip = Image.fromarray(np.repeat(edge[None, :, :], n, axis=0).astype(np.uint8))
    out = np.zeros((n, MASTER_W, 3), np.float32)
    levels = [(0, 0), (16, 3), (64, 8), (160, 16), (n, 28)]
    blurred = {r: np.asarray(strip.filter(ImageFilter.GaussianBlur(r)) if r else strip, np.float32) for _, r in levels}
    for (y0, r0), (y1, r1) in zip(levels, levels[1:]):
        for y in range(y0, min(y1, n)):
            t = (y - y0) / max(1, (y1 - y0))
            out[y] = blurred[r0][y] * (1 - t) + blurred[r1][y] * t
    if flip: out = out[::-1]
    return out

FADE, CAP = 96, 24  # rows over which a band's colour correction fades out; max correction per channel

def match_band(a, y, band_rows):
    """Codex's painted band meets the master with a small colour step (3-12 levels on plain ceilings and
    skies: a visible line across the width). Shift the band by the per-column step at the boundary
    (smoothed across columns, capped at CAP) and fade the shift out FADE rows into the band. y is the first
    master row for the top band / the first band row for the bottom band; band_rows lists the band rows
    nearest the master first."""
    inside, outside = (a[y], a[y - 1]) if band_rows[0] < y else (a[y - 1], a[y])
    diff = outside - inside                                            # per column, per channel
    k = np.exp(-0.5 * (np.arange(-48, 49) / 16.0) ** 2); k /= k.sum()  # horizontal gaussian, sigma 16 px
    diff = np.stack([np.convolve(np.pad(diff[:, c], 48, mode="edge"), k, mode="valid") for c in range(3)], axis=1)
    diff = np.clip(diff, -CAP, CAP)
    for i, r in enumerate(band_rows[:FADE]):
        a[r] -= diff * (1 - i / FADE)

def extend(src):
    im = Image.open(src).convert("RGB")
    if im.size == (MASTER_W, MASTER_H + 2 * EXT):  # already 1024x2048 (Codex, make_jobs.py): just heal the band seams
        a = np.asarray(im, np.float32).copy()
        if re.search(r"_[12]\.png$", src) is None:  # level master: Codex bands around the pixel-exact master
            match_band(a, EXT, list(range(EXT - 1, -1, -1)))                           # top band, nearest row first
            match_band(a, EXT + MASTER_H, list(range(EXT + MASTER_H, MASTER_H + 2 * EXT)))  # bottom band
        return Image.fromarray(np.clip(a + 0.5, 0, 255).astype(np.uint8))
    assert im.size == (MASTER_W, MASTER_H), f"{src}: {im.size}, expected {MASTER_W}x{MASTER_H} or {MASTER_W}x{MASTER_H + 2 * EXT}"
    a = np.asarray(im, np.float32)
    top = band(a[:8], EXT, flip=True)      # above: continue the first row upward
    bottom = band(a[-8:], EXT, flip=False)  # below: continue the last row downward
    out = np.concatenate([top, a, bottom], axis=0)
    return Image.fromarray(np.clip(out + 0.5, 0, 255).astype(np.uint8))

def save_quantized(im, dst):  # same rule as upscale.py: palette unless the gradients band
    q = im.quantize(256, method=Image.Quantize.FASTOCTREE)
    err = np.abs(np.asarray(q.convert("RGB"), dtype=np.int16) - np.asarray(im, dtype=np.int16)).mean()
    (q if err < 1.0 else im).save(dst, optimize=True)

def update_sizes(entries):
    p = os.path.join(GAME, "imgsizes.lua")
    s = open(p, encoding="utf-8").read()
    for rel, (w, h) in entries.items():
        line = f'  ["{rel}"] = {{{w}, {h}}},'
        if re.search(r'^  \["%s"\]' % re.escape(rel), s, re.M):
            s = re.sub(r'^  \["%s"\] = \{\d+, \d+\},$' % re.escape(rel), line, s, flags=re.M)
        else:
            s = s.replace("\n}", "\n" + line + "\n}", 1)
    open(p, "w", encoding="utf-8").write(s)

def check_square(scene, master):
    """How faithfully the master's central square reproduces the original scene (mean abs diff, 0..255)."""
    orig = os.path.join(GAME, "animpic", f"{scene}_static_background-1@4x.png")
    if not os.path.exists(orig): return None
    o = Image.open(orig).convert("RGB").resize((MASTER_W, MASTER_W), Image.LANCZOS)
    m = master.crop((0, EXT, MASTER_W, EXT + MASTER_W))
    return np.abs(np.asarray(o, np.int16) - np.asarray(m, np.int16)).mean()

if __name__ == "__main__":
    names = sys.argv[1:] or sorted(re.sub(r"\.png$", "", f) for f in os.listdir(HERE)
                                     if re.match(r"background_[\w]+\.png$", f) and f != "sheet.png")
    sizes = {}
    for name in names:
        src = os.path.join(HERE, name + ".png")
        im = extend(src)
        scene = re.sub(r"_[12]$", "", name)
        # opaque painted scenes: JPG (quality 90, full-resolution colour) is a sixth of the PNG, nothing visible lost
        dst4 = os.path.join(GAME, "animpic", f"{name}_tall@4x.jpg")
        dst1 = os.path.join(GAME, "animpic", f"{name}_tall.jpg")
        im.convert("RGB").save(dst4, quality=90, subsampling=0, optimize=True)
        h1 = round(im.height * BASE_W / MASTER_W)
        im.convert("RGB").resize((BASE_W, h1), Image.LANCZOS).save(dst1, quality=90, subsampling=0, optimize=True)
        sizes[f"animpic/{name}_tall.jpg"] = (BASE_W, h1)
        d = check_square(scene, im) if name == scene else None
        print(f"{name}: {im.width}x{im.height} -> {BASE_W}x{h1}" + (f"  square diff vs original {d:.2f}/255" if d is not None else ""))
    update_sizes(sizes)
    print("imgsizes.lua updated:", len(sizes))
