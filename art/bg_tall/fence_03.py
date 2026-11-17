"""The Halloween fence strip: the ORIGINAL picket fence of scene 03 (the bottom rows of the 2012 scene square,
with the pale stones in front of it, untouched) as game/animpic/background_03_tall_fence(@4x).png.
tallbg.lua draws it under the world, pinned just above the button panel on any screen, so the fence is the
scene's bottom edge again (no tall planks under it; the master gets plain lawn there, see lawn_03.py).
The strip starts at the row above the first stone that overlaps the fence (4x row 1120 of the 1288x1288
original: 42 content px), and its lawn pixels fade in over the first rows so its top edge melts into the
lawn drawn under it. Run: python -I art/bg_tall/fence_03.py"""
import os, sys
import numpy as np
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
GAME = os.path.abspath(os.path.join(HERE, "..", "..", "game"))
SRC = os.path.join(GAME, "animpic", "background_03_static_background-1@4x.png")
TOP, FADE, LAWN_TOL = 1120, 32, 14   # first row kept; fade rows; colour distance that still counts as lawn

sys.path.insert(0, HERE); from extend import update_sizes, save_quantized

im = Image.open(SRC).convert("RGB")
a = np.asarray(im, np.float32)[TOP:]
H, W, _ = a.shape
alpha = np.ones((H, W), np.float32)
for y in range(FADE):
    row = a[y]
    lawn = np.median(row, axis=0)                       # the lawn dominates these rows
    is_lawn = np.abs(row - lawn).max(axis=1) <= LAWN_TOL
    alpha[y, is_lawn] = y / FADE
rgba = np.concatenate([a, alpha[..., None] * 255], axis=2)
out4 = Image.fromarray(np.clip(rgba + 0.5, 0, 255).astype(np.uint8), "RGBA")
dst4 = os.path.join(GAME, "animpic", "background_03_tall_fence@4x.png")
dst1 = os.path.join(GAME, "animpic", "background_03_tall_fence.png")
out4.save(dst4, optimize=True)
# 1x: premultiplied resize so transparent pixels do not darken the edges
pm = rgba.copy(); pm[..., :3] *= pm[..., 3:4] / 255.0
small = np.asarray(Image.fromarray(np.clip(pm + 0.5, 0, 255).astype(np.uint8), "RGBA").resize((W // 4, H // 4), Image.LANCZOS), np.float32)
sa = np.maximum(small[..., 3:4], 1.0)
small[..., :3] = np.clip(small[..., :3] * 255.0 / sa, 0, 255)
Image.fromarray(np.clip(small + 0.5, 0, 255).astype(np.uint8), "RGBA").save(dst1, optimize=True)
update_sizes({"animpic/background_03_tall_fence.png": (W // 4, H // 4)})
print(f"fence strip: rows {TOP}..{TOP + H} of the original -> {W}x{H} @4x, {W // 4}x{H // 4} 1x; lawn pixels fade over the top {FADE} rows")
