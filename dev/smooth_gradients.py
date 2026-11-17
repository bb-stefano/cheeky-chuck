"""Smooth the gradients the 4x upscale stepped (upscale.py: Real-ESRGAN's anime model flattens soft shading into
plateaus, and the 256-colour palette save adds more steps).  For each image: outlines and hard colour edges keep the
Real-ESRGAN pixels; everywhere the 2012 original only shades softly, the pixels come from a smooth (bicubic)
enlargement of the original instead.  Saved in true colour.  The tall home background (whose painted extension
was stored with 49 colours) is rebuilt from the original 320x480 one, its gradients continued up and down.

Run: .venv/bin/python dev/smooth_gradients.py [--dry]   (prints what it would touch with --dry)
"""
import argparse
import glob
import os
import numpy as np
from PIL import Image, ImageFilter

GAME = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "game")
TARGETS = [
    "uipic/menu_*.png",                      # 1. the round buttons below the game area
    "uipic/buttons_bkg.png",                 #    and their panel
    "uipic/splash_new*.png", "uipic/splash_resume*.png", "uipic/splash_help*.png",  # 2. home's orange buttons
    "animpic/splash_page_en_hand_?-1.png",   # 3. the big hands
    "uipic/splash_screen_background.png",    # 4. the sky (the tall one: rebuild_tall_sky)
    "animpic/splash_page_en_charactor-1.png",  # 5. 6. Chuck on the home screen: shoes, pants
    "hints/*/hint_*.png",                    # 7. the yellow hint cards
]
EDGE_LO, EDGE_HI = 8 / 255, 22 / 255         # 1x neighbour step: below = soft shading, above = an edge
DERIVED_MAX = 8.0                            # mean |4x box-downscaled - 1x|; above: the @4x was not made from this 1x


def load(path):
    return np.asarray(Image.open(path).convert("RGBA"), np.float32) / 255


def premul(a):
    out = a.copy(); out[..., :3] *= a[..., 3:4]; return out


def unpremul(a):
    out = a.copy(); al = a[..., 3:4]
    out[..., :3] = np.where(al > 1e-4, a[..., :3] / np.maximum(al, 1e-4), 0)
    return np.clip(out, 0, 1)


def smooth_up(a1, size):
    """Bicubic enlargement, premultiplied so transparent pixels don't bleed their hidden colour."""
    p = premul(a1)
    ch = [np.asarray(Image.fromarray(p[..., i], "F").resize(size, Image.BICUBIC)) for i in range(4)]
    return unpremul(np.clip(np.stack(ch, -1), 0, 1))


def edge_mask(a1, size):
    """1 on outlines and colour edges of the original, 0 on soft shading; feathered, at the 4x size."""
    p = premul(a1)
    h, w, _ = p.shape
    pad = np.pad(p, ((1, 1), (1, 1), (0, 0)), mode="edge")
    step = np.zeros((h, w), np.float32)
    for dy in (-1, 0, 1):
        for dx in (-1, 0, 1):
            if dx or dy:
                step = np.maximum(step, np.abs(pad[1 + dy:1 + dy + h, 1 + dx:1 + dx + w] - p).max(-1))
    m = np.clip((step - EDGE_LO) / (EDGE_HI - EDGE_LO), 0, 1)
    m = Image.fromarray((m * 255).astype(np.uint8)).filter(ImageFilter.MaxFilter(3))  # cover both sides
    m = m.resize(size, Image.BILINEAR).filter(ImageFilter.GaussianBlur(2))
    return np.asarray(m, np.float32)[..., None] / 255


def hybrid(f1, f4):
    a1, a4 = load(f1), load(f4)
    size = (a4.shape[1], a4.shape[0])
    m = edge_mask(a1, size)
    return m * a4 + (1 - m) * smooth_up(a1, size)


def save(a, path):
    Image.fromarray((np.clip(a, 0, 1) * 255 + 0.5).astype(np.uint8), "RGBA").save(path, optimize=True)


def derived(f1, f4):
    a1 = load(f1)
    a4 = load(f4)
    p4 = premul(a4)
    b = np.stack([np.asarray(Image.fromarray(p4[..., i], "F").resize((a1.shape[1], a1.shape[0]), Image.BOX))
                  for i in range(4)], -1)
    return np.abs(premul(a1) - b).mean() * 255  # premultiplied: transparent pixels' hidden colour doesn't count


def rebuild_tall_sky(dry):
    """splash_screen_background_tall: the original 480-row art centred in 720 rows (tallbg.lua's layout),
    the 120 rows above continue the sky's top rows, the 120 below continue the sea's gradient."""
    base1 = os.path.join(GAME, "uipic/splash_screen_background.png")
    tall1 = os.path.join(GAME, "uipic/splash_screen_background_tall.png")
    tall4 = os.path.join(GAME, "uipic/splash_screen_background_tall@4x.png")
    print("rebuild", os.path.relpath(tall4, GAME), "+ 1x")
    if dry:
        return
    mid = hybrid(base1, base1.replace(".png", "@4x.png"))      # 1280 x 1920
    H4, pad4 = 2880, 480
    out = np.zeros((H4, mid.shape[1], 4), np.float32)
    out[pad4:pad4 + mid.shape[0]] = mid
    # above: from the art's top row, each column fades within ~30 px into a widely blurred version of that row,
    # which itself turns plain towards the top (no streaks carried up from where the glow meets the edge)
    top = mid[0]
    x = np.arange(-900, 901, dtype=np.float32)
    kern = np.exp(-(x / 300) ** 2 / 2); kern /= kern.sum()
    padded = np.pad(top, ((900, 900), (0, 0)), mode="edge")
    wide = np.stack([np.convolve(padded[:, i], kern, mode="valid") for i in range(4)], -1)
    plain = top.mean(0, keepdims=True)
    d = np.arange(pad4, 0, -1, dtype=np.float32)[:, None, None]  # distance from the seam, pad4 at the very top
    w1 = 1 - np.exp(-d / 30)
    w2 = np.clip(d / pad4, 0, 1) ** 1.5
    far = wide[None] * (1 - w2) + plain[None] * w2
    out[:pad4] = top[None] * (1 - w1) + far * w1
    # below: continue the vertical gradient of the last 200 rows (its slope), per column, eased out
    slope = (mid[-40:].mean((0, 1)) - mid[-240:-200].mean((0, 1))) / 200  # per row; the sea shades only vertically
    k = np.arange(1, pad4 + 1, dtype=np.float32)[:, None, None]
    ease = k - k * k / (2 * pad4 * 1.6)           # slows down towards the bottom edge
    out[pad4 + mid.shape[0]:] = np.clip(mid[-1][None] + slope * ease, 0, 1)
    out[..., 3] = 1
    save(out, tall4)
    img = Image.open(tall4)
    img.resize((img.width // 4, img.height // 4), Image.LANCZOS).save(tall1, optimize=True)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry", action="store_true")
    args = ap.parse_args()
    files = sorted({f for g in TARGETS for f in glob.glob(os.path.join(GAME, g)) if "@4x" not in f})
    done = skipped = 0
    for f1 in files:
        f4 = f1[:-4] + "@4x.png"
        rel = os.path.relpath(f1, GAME)
        if not os.path.exists(f4):
            continue
        d = derived(f1, f4)
        if d > DERIVED_MAX:
            print("skip (4x not made from this 1x, diff %.1f)" % d, rel); skipped += 1
            continue
        if not args.dry:
            save(hybrid(f1, f4), f4)
        done += 1
    print("smoothed", done, "skipped", skipped)
    rebuild_tall_sky(args.dry)


if __name__ == "__main__":
    main()
