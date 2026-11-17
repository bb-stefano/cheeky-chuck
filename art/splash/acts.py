"""One black Chuck at a time on the home screen.

The splash timeline (game/anim_splash_page_<lang>.data, 252 frames) runs three silhouette gags: act1 walks in
from the right and reaches x 52 at frame 95, act2 (hanging on the rope) sits at that spot from frame 1 and
swings away off the right edge over frames 106..190, act3 drops in on the bungee at 206..241. act1 and act2
are 5- and 7-frame cycles that loop for the whole timeline, so two silhouettes were on screen at once (the
walker next to the swinger from the start, the walker still standing during the drop). This rewrites the two
cycles over the full 252 frames with a blank image outside their turn: act1 shows for frames 1..105 (walk in,
stand a moment), act2 from 106 (it takes the walker's place and swings off), act3 is untouched.
Run: python -I art/splash/acts.py   (idempotent: rewrites the act1/act2 sprite blocks from scratch)
"""
import os, re, sys
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
sys.path.insert(0, os.path.join(ROOT, "art", "bg_tall")); from extend import update_sizes
TOTAL, SWITCH = 252, 106              # act2 starts moving at frame 106
BLANK = "splash_page_en_blank.png"    # 4x4 transparent, shared by every language

def cycle(var, first, last, images, start=1):
    return [f"{var}.frame(i={i},d=1,x=0,y=0,o={images[(i - start) % len(images)]})" for i in range(first, last + 1)]

def block(var, name, ret, lines):
    return "\n".join([f"{var}=layer(name={name})"] + lines + [f"return {ret}"]) + "\n"

Image.new("RGBA", (16, 16), (0, 0, 0, 0)).save(os.path.join(GAME, "animpic", BLANK.replace(".png", "@4x.png")))
Image.new("RGBA", (4, 4), (0, 0, 0, 0)).save(os.path.join(GAME, "animpic", BLANK))
update_sizes({"animpic/" + BLANK: (4, 4)})

for lang in ("en", "jp", "zh"):
    p = os.path.join(GAME, f"anim_splash_page_{lang}.data")
    s = open(p, encoding="utf-8").read()
    for var in ("act1", "act2"):
        m = re.search(rf"^{var}=layer\(name=(\S+)\)\r?\n(.*?)^return ([^\r\n]+)\r?\n", s, re.M | re.S)
        assert m, f"{lang}: no {var} block"
        name, body, ret = m.group(1), m.group(2), m.group(3)
        images = []
        for img in re.findall(r"o=(splash_page_\w+_" + var + r"-\d+\.png)", body):
            if img not in images: images.append(img)
        assert images, f"{lang}: {var} has no images"
        if var == "act1":
            lines = cycle(var, 1, SWITCH - 1, images) + [f"{var}.frame(i={SWITCH},d={TOTAL - SWITCH + 1},x=0,y=0,o={BLANK})"]
        else:
            lines = [f"{var}.frame(i=1,d={SWITCH - 1},x=0,y=0,o={BLANK})"] + cycle(var, SWITCH, TOTAL, images, start=SWITCH)
        s = s[: m.start()] + block(var, name, ret, lines) + s[m.end():]
        print(f"{lang} {var}: {len(images)} images -> {len(lines)} frames ({name})")
    open(p, "w", encoding="utf-8").write(s)
