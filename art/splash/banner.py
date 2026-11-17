"""Smooth hint-overlay gradient for the home screen's "?" page.

The splash transition's banner (animpic/splash_page_transition_en_banner-9..13, used by every language) is a
black panel whose alpha grows downward in flat steps (8 palette entries: seven visible bands). This rebuilds
the five frames as smooth ramps through the same band values, so the fade-in animation keeps its timing
and darkness, and makes them 322x487 instead of 322x367 so the panel reaches the bottom of a 2.25:1 screen
(tallbg.lua moves Chuck and the buttons down there); on a 3:2 screen the extra rows are off-screen.
Run: python -I art/splash/banner.py   (reads the originals from art/splash/orig/, kept on first run)
"""
import os, re, shutil, sys
import numpy as np
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
ORIG = os.path.join(HERE, "orig")
sys.path.insert(0, os.path.join(ROOT, "art", "bg_tall")); from extend import update_sizes
NAME = "splash_page_transition_en_banner-%d"
W, H_OLD, H_NEW = 1288, 1468, 1948   # 4x; content 322x367 -> 322x487
ALPHA_MAX = 240

def bands(alpha_rows):
    """(centre row, value) of each flat run of the per-row alpha profile."""
    out, start = [], 0
    for y in range(1, len(alpha_rows) + 1):
        if y == len(alpha_rows) or alpha_rows[y] != alpha_rows[start]:
            out.append(((start + y - 1) / 2, float(alpha_rows[start]))); start = y
    return out

def smooth(frame):
    src = os.path.join(ORIG, NAME % frame + "@4x.png")
    a = np.asarray(Image.open(src).convert("RGBA"), np.int16)[:, :, 3]
    prof = np.median(a, axis=1).astype(int)          # the band edges are wavy: the median ignores them
    b = bands(prof)
    while len(b) > 1 and b[-1][1] < b[-2][1]: b.pop()  # the old bottom edge fades out: not part of the ramp
    ys, vs = [c for c, _ in b], [v for _, v in b]
    y = np.arange(H_NEW, dtype=np.float32)
    if len(b) > 1:  # continue the ramp's last slope below the old bottom edge, capped
        slope = (vs[-1] - vs[-2]) / (ys[-1] - ys[-2])
        ys.append(H_NEW - 1); vs.append(min(ALPHA_MAX, vs[-1] + slope * (H_NEW - 1 - ys[-2])))
    ramp = np.interp(y, ys, vs)
    ramp[: int(ys[0])] = vs[0]  # flat above the first band centre, as before
    rgba = np.zeros((H_NEW, W, 4), np.uint8)
    rgba[:, :, 3] = np.clip(ramp + 0.5, 0, 255).astype(np.uint8)[:, None]
    return Image.fromarray(rgba, "RGBA"), b

os.makedirs(ORIG, exist_ok=True)
sizes = {}
for frame in (9, 10, 11, 12, 13):
    for suffix in ("", "@4x"):
        o = os.path.join(ORIG, NAME % frame + suffix + ".png")
        if not os.path.exists(o): shutil.copy(os.path.join(GAME, "animpic", NAME % frame + suffix + ".png"), o)
    im, b = smooth(frame)
    im.save(os.path.join(GAME, "animpic", NAME % frame + "@4x.png"), optimize=True)
    im.resize((W // 4, H_NEW // 4), Image.LANCZOS).save(os.path.join(GAME, "animpic", NAME % frame + ".png"), optimize=True)
    sizes["animpic/" + NAME % frame + ".png"] = (W // 4, H_NEW // 4)
    print(f"frame {frame}: {len(b)} bands {[int(v) for _, v in b]} -> smooth {W}x{H_NEW}")
# frame 1 (fully transparent) must match the new size too
Image.new("RGBA", (W, H_NEW), (0, 0, 0, 0)).save(os.path.join(GAME, "animpic", NAME % 1 + "@4x.png"), optimize=True)
Image.new("RGBA", (W // 4, H_NEW // 4), (0, 0, 0, 0)).save(os.path.join(GAME, "animpic", NAME % 1 + ".png"), optimize=True)
sizes["animpic/" + NAME % 1 + ".png"] = (W // 4, H_NEW // 4)
update_sizes(sizes)
print("imgsizes.lua updated:", len(sizes))
