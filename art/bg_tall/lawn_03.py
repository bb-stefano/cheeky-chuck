"""Halloween (scene 03) master: plain lawn from the fence's top row down, instead of the picket fence and the
tall planks Codex drew at the bottom of its band (the fence sat 20-30 content px above the button panel on a
2.2:1 phone, with the planks showing under it). The game now pins the ORIGINAL fence rows just above the button
panel on any screen (fence_03.py + tallbg.lua), so under Codex's lawn (gravestone, rose, stones) the backdrop
must simply be more lawn.
The lawn is extended from the master's own pixels: the vertical colour trend and the left-right shading of the
lawn rows above the fence are extrapolated down; stones the new boundary would cut are erased; a few copies
(some mirrored) of the lawn's own small stones, with their outlines and shadows, land on the new rows.
Source: old/background_03_before_lawn.png (made from background_03.png on the first run), so the script is
idempotent. Writes background_03.png and reruns extend.py for it. Run: python -I art/bg_tall/lawn_03.py"""
import os, sys, subprocess, collections
import numpy as np
from PIL import Image, ImageFilter

HERE = os.path.dirname(os.path.abspath(__file__))
MASTER = os.path.join(HERE, "background_03.png")
TOL = 10            # colour distance from the lawn colour that marks a stone / outline / shadow pixel
FIT_ROWS = 140      # lawn rows above the fence the colour trend is fitted on
PLACE = [(0, 120, 24, True), (1, 640, 10, False), (0, 880, 40, True), (1, 380, 70, True), (0, 760, 110, False)]
                    # (small-stone index, x, rows under the fence row, mirrored)

def components(mask, min_px):
    H, W = mask.shape; seen = np.zeros_like(mask, bool); out = []
    for y in range(H):
        for x in range(W):
            if mask[y, x] and not seen[y, x]:
                q = collections.deque([(y, x)]); seen[y, x] = True; miny = maxy = y; minx = maxx = x; n = 0
                while q:
                    cy, cx = q.popleft(); n += 1
                    miny, maxy, minx, maxx = min(miny, cy), max(maxy, cy), min(minx, cx), max(maxx, cx)
                    for dy, dx in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                        ny, nx = cy + dy, cx + dx
                        if 0 <= ny < H and 0 <= nx < W and mask[ny, nx] and not seen[ny, nx]: seen[ny, nx] = True; q.append((ny, nx))
                if n >= min_px: out.append((miny, maxy, minx, maxx, n))
    return out

def main():
    old = os.path.join(HERE, "old"); os.makedirs(old, exist_ok=True)
    keep = os.path.join(old, "background_03_before_lawn.png")
    if not os.path.exists(keep): Image.open(MASTER).convert("RGB").save(keep)
    m = Image.open(keep).convert("RGB"); assert m.size == (1024, 2048), m.size
    src = np.asarray(m, np.float32); a = src.copy()
    i = src.astype(np.int64)
    caps = (i[..., 0] > 235) & (i[..., 1] > 232) & (i[..., 2] < 215)   # the pale yellow picket caps (stones are darker beige)
    rows = np.where(caps[1500:].sum(axis=1) >= 8)[0]
    ROW = 1500 + int(rows[0]) - 3
    FIT = (ROW - FIT_ROWS, ROW - 6)
    block = src[FIT[0]:FIT[1]]
    med = np.median(block, axis=1); offs = np.median(block - med[:, None, :], axis=0)
    ys = np.arange(FIT[0], FIT[1]); coef = [np.polyfit(ys, med[:, c], 1) for c in range(3)]
    def lawn(y0, y1, x0=0, x1=1024):
        base = np.array([np.polyval(coef[c], np.minimum(np.arange(y0, y1), FIT[1] + 200)) for c in range(3)]).T
        return np.clip(base[:, None, :] + offs[None, x0:x1, :], 0, 255)
    a[ROW:] = lawn(ROW, 2048)
    # stones (beige) the boundary would cut: erase them above it too
    beige = (i[..., 0] > 170) & (i[..., 1] > 160) & (i[..., 2] > 120) & (i[..., 0] - i[..., 2] > 25)
    stones = [(y0 + ROW - 160, y1 + ROW - 160, x0, x1, n) for (y0, y1, x0, x1, n) in components(beige[ROW - 160:ROW + 60], 150)]
    erased = 0
    for (y0, y1, x0, x1, n) in stones:
        if y0 < ROW <= y1 + 8:
            Y0, Y1, X0, X1 = max(y0 - 8, 0), ROW, max(x0 - 8, 0), min(x1 + 12, 1024)
            a[Y0:Y1, X0:X1] = lawn(Y0, Y1, X0, X1); erased += 1
    # small whole stones from the lawn above, copied as offsets from the lawn colour (so they take the new rows' tint)
    small = sorted([s for s in stones if s[1] < ROW - 10 and 150 <= s[4] <= 2500], key=lambda s: s[4])
    placed = 0
    for idx, x, dy, flip in PLACE:
        if idx >= len(small): break
        y0, y1, x0, x1, n = small[idx]
        y0, y1, x0, x1 = max(y0 - 8, 0), y1 + 12, max(x0 - 8, 0), min(x1 + 12, 1024)
        p = src[y0:y1, x0:x1] - lawn(y0, y1, x0, x1)
        mask = (np.abs(p).max(axis=2) > TOL).astype(np.float32)
        mask = np.asarray(Image.fromarray((mask * 255).astype(np.uint8)).filter(ImageFilter.MaxFilter(5)).filter(ImageFilter.GaussianBlur(1.2)), np.float32) / 255
        if flip: p, mask = p[:, ::-1], mask[:, ::-1]
        h, w = mask.shape; y = ROW + dy
        if y + h > 2048 or x + w > 1024: continue
        a[y:y + h, x:x + w] = np.clip(a[y:y + h, x:x + w] + p * mask[..., None], 0, 255); placed += 1
    Image.fromarray(np.clip(a + 0.5, 0, 255).astype(np.uint8)).save(MASTER)
    print(f"fence caps found at master row {ROW + 3}: lawn from row {ROW} (trend fitted on rows {FIT}); "
          f"{erased} cut stone(s) erased, {placed} stones placed; background_03.png rewritten")
    subprocess.run([sys.executable, "-I", os.path.join(HERE, "extend.py"), "background_03"], check=True)

main()
