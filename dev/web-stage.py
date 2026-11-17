"""Stage game/ for the web build (dev/build-web.lua builds build/web-game, not game/).

Every phone today shows the @4x images, so the web download carries only those: each name@4x.png (or .jpg) is
staged under the 1x name and the 1x file is left out. The game always draws its images at their 1x size
(display.newImageRect with game/imgsizes.lua, compat.lua), so a bigger file under the 1x name looks the same at any
screen scale. html/ is copied as is: the settings pages show their images at natural size.
Files are hard links into game/ (nothing is copied).  Run: python3 -I dev/web-stage.py
"""
import os
import shutil
import subprocess
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
GAME = os.path.join(ROOT, "game")
DST = os.path.join(ROOT, "build", "web-game")


def main():
    if os.path.isdir(DST):
        shutil.rmtree(DST)
    saved = linked = 0
    for d, _, files in os.walk(GAME):
        rel = os.path.relpath(d, GAME)
        os.makedirs(os.path.join(DST, rel), exist_ok=True)
        keep_1x = rel == "html" or rel.startswith("html" + os.sep)
        names = set(files)
        for f in files:
            base, ext = os.path.splitext(f)
            src = os.path.join(d, f)
            if not keep_1x and ext in (".png", ".jpg"):
                if base.endswith("@4x") and base[:-3] + ext in names:
                    os.link(src, os.path.join(DST, rel, base[:-3] + ext))  # the 4x image under the 1x name
                    linked += 1
                    continue
                if base + "@4x" + ext in names:
                    saved += os.path.getsize(src)                          # the 1x original: not shipped
                    continue
            os.link(src, os.path.join(DST, rel, f))
    print("build/web-game: %d images staged at 4x under their 1x names, %.1f MB of 1x originals left out"
          % (linked, saved / 1e6))
    # nothing that ships may name an AI tool: stop before CoronaBuilder packages the staged folder
    if subprocess.call(["node", os.path.join(ROOT, "scripts", "check-no-ai-mentions.mjs"), DST]):
        sys.exit(1)


if __name__ == "__main__":
    main()
