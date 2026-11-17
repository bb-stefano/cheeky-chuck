"""Codex redraws of the Lua-drawn dialog buttons in game/html/im (ok / cancel / send, 55x55 round buttons shared
with the HTML pages): upscale.py never covered that folder, so the phone drew the 55 px art 3-4x enlarged (the
win screen's OK button looked blurry).

  python -I art/ui/make_jobs.py build     jobs/<name>/: big.png (the button 8x, nearest neighbour, for Codex to
                                           read the shapes), prompt.txt, inputs.txt
  sh art/ui/run_codex.sh                  runs every job without an out.png (parallel), then collects
  python -I art/ui/make_jobs.py collect   jobs/<name>/out.png (1024x1024, button on magenta) -> keyed out, fitted
                                           to the original's circle, game/html/im/<name>@4x.png (220x220) and the
                                           html/im/<name>.png entries in game/imgsizes.lua (compat.lua then routes
                                           display.newImage through newImageRect and Solar2D picks the @4x file)
"""
import os, re, sys
import numpy as np
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
IM = os.path.join(GAME, "html", "im")
JOBS = os.path.join(HERE, "jobs")
OUT = 1024
MAGENTA = np.array([255, 0, 255], np.float32)

BUTTON = ("a round glossy dark charcoal-grey button: a dark circle with a soft lighter radial highlight in its upper "
          "half fading to near-black at the bottom, a thin {ring} ring just inside its edge and a thin very dark outline "
          "around the outside; in the middle, {icon}, drawn as a chunky flat shape with a lighter top face, a darker "
          "side face and a soft dark drop shadow toward the lower right")
ICONS = {
    "ok": ("mint-green", "a bold mint-green checkmark (tick), its short stroke at the lower left and the long stroke rising to the upper right"),
    "cancel": ("salmon-coral", "a bold salmon-coral X (two crossed strokes), slightly tilted"),
    "send": ("mint-green", "a light-grey paper plane pointing to the upper right"),
}

def build():
    for name, (ring, icon) in ICONS.items():
        d = os.path.join(JOBS, name); os.makedirs(d, exist_ok=True)
        im = Image.open(os.path.join(IM, name + ".png")).convert("RGBA")
        big = Image.new("RGBA", (im.width * 8, im.height * 8), (255, 0, 255, 255))
        big.alpha_composite(im.resize(big.size, Image.NEAREST)); big.convert("RGB").save(os.path.join(d, "big.png"))
        open(os.path.join(d, "prompt.txt"), "w", encoding="utf-8").write(f"""
One attachment. big.png is a 55x55 pixel button of a 2012 mobile game shown 8x enlarged without smoothing (so it looks
blocky), on a magenta background that is NOT part of the button. The button is {BUTTON.format(ring=ring, icon=icon)}.
Using your image generation tool, produce ONE {OUT}x{OUT} image: this exact button redrawn at high resolution, crisp and
smooth, with the same composition, colours, proportions, gloss and shadow, the circle filling the image almost edge to
edge and centred, on a flat pure magenta (#FF00FF) background everywhere outside the circle's dark outline. No text, no
extra elements, no watermark. Save it as out.png in the current directory. Reply with one line.
""".strip() + "\n")
        open(os.path.join(d, "inputs.txt"), "w").write("big.png\n")
        print("job:", d)

def key_out(a):
    """Alpha from the magenta share of each pixel (R and B high, G low), only in a band around the button's edge
    (inside, coloured rings would otherwise read as partly magenta). Returns premultiplied-free RGBA float."""
    rgb = a[..., :3].astype(np.float32)
    mag = np.clip((rgb[..., 0] - rgb[..., 1] + rgb[..., 2] - rgb[..., 1]) / 510.0, 0, 1)
    solid = mag < 0.5                           # the button proper
    ys, xs = np.where(solid)
    cy, cx = (ys.min() + ys.max()) / 2, (xs.min() + xs.max()) / 2
    r = max(ys.max() - ys.min(), xs.max() - xs.min()) / 2
    yy, xx = np.mgrid[:a.shape[0], :a.shape[1]]
    dist = np.hypot(yy - cy, xx - cx)
    alpha = np.where(dist > r + 3, 0.0, np.where(dist < r - 6, 1.0, 1 - mag))
    alpha = alpha.astype(np.float32)
    col = np.where(alpha[..., None] > 0.02, (rgb - (1 - alpha[..., None]) * MAGENTA) / np.maximum(alpha[..., None], 0.02), rgb)
    return np.clip(col, 0, 255), alpha, (cy, cx, r)

def collect():
    sys.path.insert(0, os.path.join(ROOT, "art", "bg_tall")); from extend import update_sizes
    sizes, done = {}, []
    for name in ICONS:
        out = os.path.join(JOBS, name, "out.png")
        if not os.path.exists(out): continue
        im = Image.open(out).convert("RGB")
        if im.size != (OUT, OUT): print(f"{name}: out.png is {im.size}, expected {OUT}x{OUT}, skipped"); continue
        col, alpha, (cy, cx, r) = key_out(np.asarray(im))
        src = Image.open(os.path.join(IM, name + ".png")).convert("RGBA")
        sa = np.asarray(src)[..., 3] > 127                       # the original's circle: where it sits in 55x55
        ys, xs = np.where(sa)
        ocy, ocx = (ys.min() + ys.max() + 1) / 2 * 4, (xs.min() + xs.max() + 1) / 2 * 4
        od = (max(ys.max() - ys.min(), xs.max() - xs.min()) + 1) * 4   # diameter at 4x
        rgba = Image.fromarray(np.concatenate([col, alpha[..., None] * 255], axis=2).astype(np.uint8), "RGBA")
        d = int(round(2 * r + 6))
        crop = rgba.crop((int(round(cx - d / 2)), int(round(cy - d / 2)), int(round(cx - d / 2)) + d, int(round(cy - d / 2)) + d))
        s = od / (2 * r)
        crop = crop.resize((max(1, int(round(d * s))), max(1, int(round(d * s)))), Image.LANCZOS)
        canvas = Image.new("RGBA", (src.width * 4, src.height * 4), (0, 0, 0, 0))
        canvas.alpha_composite(crop, (int(round(ocx - crop.width / 2)), int(round(ocy - crop.height / 2))))
        canvas.save(os.path.join(IM, name + "@4x.png"), optimize=True)
        sizes[f"html/im/{name}.png"] = (src.width, src.height); done.append(name)
        print(f"{name}: circle r={r:.0f} at ({cx:.0f},{cy:.0f}) -> html/im/{name}@4x.png {canvas.size}")
    if sizes: update_sizes(sizes); print("imgsizes.lua: +", ", ".join(done))

cmd = sys.argv[1] if len(sys.argv) > 1 else ""
{"build": build, "collect": collect}.get(cmd, lambda: print(__doc__))()
