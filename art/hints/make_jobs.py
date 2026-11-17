"""Codex jobs for the hint banner (game/hints/<lang>/banner_CC2.png, the "Cheeky Chuck Champ" ad): re-letter the
website line as cheekychuck.jocogiant.com, everything else pixel for pixel.

  python -I art/hints/make_jobs.py jobs      build jobs/banner_<lang>/ (banner.png + prompt.txt + inputs.txt)
  sh art/hints/run_codex.sh [job ...]        run them (parallel), then collect
  python -I art/hints/make_jobs.py collect   jobs/*/out.png -> game/hints/<lang>/banner_CC2(@4x).png
"""
import os, re, shutil, sys
import numpy as np
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
JOBS = os.path.join(HERE, "jobs")
ORIG = os.path.join(HERE, "orig")
LANGS = ["en", "it", "jp", "zh"]
OLD = {"en": "WWW.CHEEKYCHUCK.COM", "it": "WWW.CHEEKYCHUCK.COM", "jp": "WWW.CHEEKYCHUCK.COM", "zh": "WWW.QIQIKAKA.CN"}
NEW = "CHEEKYCHUCK.JOCOGIANT.COM"

def src(lang, suffix=""): return os.path.join(GAME, "hints", lang, f"banner_CC2{suffix}.png")

def keep_originals():
    os.makedirs(ORIG, exist_ok=True)
    for lang in LANGS:
        for suffix in ("", "@4x"):
            o = os.path.join(ORIG, f"banner_CC2_{lang}{suffix}.png")
            if not os.path.exists(o): shutil.copy(src(lang, suffix), o)

def url_rows(im):
    """Row span of the last text line (the URL): the lowest run of opaque rows right of the icon."""
    a = np.asarray(im.convert("RGBA"))[:, :, 3]
    x0 = int(im.width * 0.3)                        # the mascot icon fills the left ~29%
    rows = np.where(a[:, x0:].max(axis=1) > 128)[0]   # the "transparent" background carries alpha noise up to 10
    gaps = np.where(np.diff(rows) > 3)[0]
    start = rows[gaps[-1] + 1] if len(gaps) else rows[0]
    return int(start), int(rows[-1])

def jobs():
    keep_originals()
    for lang in LANGS:
        d = os.path.join(JOBS, f"banner_{lang}"); os.makedirs(d, exist_ok=True)
        im = Image.open(os.path.join(ORIG, f"banner_CC2_{lang}@4x.png")).convert("RGBA")
        im.save(os.path.join(d, "banner.png"))
        y0, y1 = url_rows(im)
        prompt = f"""
One attachment. banner.png is a finished {im.width}x{im.height} RGBA game banner with a TRANSPARENT background: a cartoon
mascot icon on the left and comic-style text on the right. Its last text line (rows {y0}..{y1}, white bold italic
capitals with a thin dark outline, underlined) reads "{OLD[lang]}".
Produce ONE {im.width}x{im.height} RGBA image that is pixel for pixel identical to banner.png everywhere (same alpha channel,
same transparency, same icon, same other text lines) except that last line, which must instead read "{NEW}":
same font style (white bold italic comic capitals with the same thin dark outline), same underline, same left edge,
same baseline and the same right margin as the old line; the new text is longer, so scale its letters down uniformly
(and tighten the tracking a little) until it fits that width, keeping it crisp and legible. Nothing else may change,
and the area around the new letters must stay fully transparent, exactly like around the old ones.
Do it however works best (for instance render the text yourself with a matching font, or generate just the line with your
image tool on a transparent background and composite it over the erased old line); check the result at 100% zoom before
saving. Save it as out.png in the current directory. Reply with one line."""
        open(os.path.join(d, "prompt.txt"), "w", encoding="utf-8").write(prompt.strip() + "\n")
        open(os.path.join(d, "inputs.txt"), "w", encoding="utf-8").write("banner.png\n")
        print(f"job banner_{lang}: url rows {y0}..{y1} of {im.height}")

def collect():
    keep_originals()
    for lang in LANGS:
        out = os.path.join(JOBS, f"banner_{lang}", "out.png")
        if not os.path.exists(out): print(f"banner_{lang}: no out.png"); continue
        im = Image.open(out).convert("RGBA")
        orig = Image.open(os.path.join(ORIG, f"banner_CC2_{lang}@4x.png")).convert("RGBA")
        if im.size != orig.size: print(f"banner_{lang}: out.png is {im.size}, expected {orig.size}, not collected"); continue
        y0, y1 = url_rows(orig)
        a, b = np.asarray(im, np.int16), np.asarray(orig, np.int16)
        diff_outside = np.abs(a[: max(0, y0 - 4)] - b[: max(0, y0 - 4)]).max()
        im.save(src(lang, "@4x"), optimize=True)
        im.resize((im.width // 4, im.height // 4), Image.LANCZOS).save(src(lang), optimize=True)
        print(f"banner_{lang}: collected ({im.width}x{im.height}); max change above the url line: {diff_outside}")

{"jobs": jobs, "collect": collect}.get(sys.argv[1] if len(sys.argv) > 1 else "", lambda: print(__doc__))()
