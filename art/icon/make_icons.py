"""App icon set from the Codex redraws (art/icon/jobs/icon/out.png, jobs/icon_adaptive/out.png; see run_codex.sh).

  python -I art/icon/make_icons.py collect   copy the job outputs to icon.png / icon_adaptive.png here (1024x1024)
  python -I art/icon/make_icons.py           write every icon file from those two masters:
    game/Icon-<dpi>.png                      legacy Android launcher icons, ldpi..xxxhdpi (36..192)
    game/Icon.png, game/Icon@2x.png          the old iOS files (57/114), refreshed with the new art
    game/AndroidResources/res/               what Solar2D builds into the APK: mipmap-<dpi>/ic_launcher.png (48..192,
                                             Android 7 and earlier) + ic_launcher_foreground.png (108..432, Android 8+
                                             adaptive icon: Chuck inside the central 66% safe zone, blue glow around),
                                             mipmap-anydpi-v26/ic_launcher.xml, values/values.xml (background colour)
    art/icon/icon_512.png                    Play Store listing icon
    site/assets/icon.png, site/favicon.png   the website's copies (512 / 64)
"""
import os, shutil, sys
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
RES = os.path.join(GAME, "AndroidResources", "res")
DPI = {"ldpi": 36, "mdpi": 48, "hdpi": 72, "xhdpi": 96, "xxhdpi": 144, "xxxhdpi": 192}
ADAPTIVE_ZOOM = 1.15  # Codex drew Chuck at ~48% of the width; this brings him to ~55%, still inside the 66% safe zone
FG = {"mdpi": 108, "hdpi": 162, "xhdpi": 216, "xxhdpi": 324, "xxxhdpi": 432}

def collect():
    for job, name in (("icon", "icon.png"), ("icon_adaptive", "icon_adaptive.png")):
        out = os.path.join(HERE, "jobs", job, "out.png")
        if not os.path.exists(out): print(f"{job}: no out.png"); continue
        im = Image.open(out)
        if im.size != (1024, 1024): print(f"{job}: out.png is {im.size}, expected 1024x1024, not collected"); continue
        im.convert("RGB").save(os.path.join(HERE, name)); print(f"{job}: collected as art/icon/{name}")

def save(im, path, size):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    im.resize((size, size), Image.LANCZOS).save(path, optimize=True)

def build():
    icon = Image.open(os.path.join(HERE, "icon.png")).convert("RGB")
    adaptive = Image.open(os.path.join(HERE, "icon_adaptive.png")).convert("RGB")
    z = int(1024 / ADAPTIVE_ZOOM); adaptive = adaptive.crop(((1024 - z) // 2, (1024 - z) // 2, (1024 - z) // 2 + z, (1024 - z) // 2 + z))
    for dpi, n in DPI.items(): save(icon, os.path.join(GAME, f"Icon-{dpi}.png"), n)
    save(icon, os.path.join(GAME, "Icon.png"), 57); save(icon, os.path.join(GAME, "Icon@2x.png"), 114)
    for dpi, n in DPI.items():
        if dpi != "ldpi": save(icon, os.path.join(RES, f"mipmap-{dpi}", "ic_launcher.png"), n)
    for dpi, n in FG.items(): save(adaptive, os.path.join(RES, f"mipmap-{dpi}", "ic_launcher_foreground.png"), n)
    r, g, b = adaptive.getpixel((8, 8))  # the corner of the glow: what shows if a launcher ever peeks past the foreground
    os.makedirs(os.path.join(RES, "mipmap-anydpi-v26"), exist_ok=True); os.makedirs(os.path.join(RES, "values"), exist_ok=True)
    open(os.path.join(RES, "mipmap-anydpi-v26", "ic_launcher.xml"), "w").write(
        '<?xml version="1.0" encoding="utf-8"?>\n<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <background android:drawable="@color/ic_launcher_background"/>\n'
        '    <foreground android:drawable="@mipmap/ic_launcher_foreground"/>\n</adaptive-icon>\n')
    open(os.path.join(RES, "values", "values.xml"), "w").write(
        '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n    <color name="ic_launcher_background">#%02x%02x%02x</color>\n</resources>\n' % (r, g, b))
    save(icon, os.path.join(HERE, "icon_512.png"), 512)
    save(icon, os.path.join(ROOT, "site", "assets", "icon.png"), 512); save(icon, os.path.join(ROOT, "site", "favicon.png"), 64)
    print("icons written; adaptive background colour #%02x%02x%02x" % (r, g, b))

(collect if sys.argv[1:] == ["collect"] else build)()
