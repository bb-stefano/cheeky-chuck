"""Section titles of the settings "Accounts" tab (game/html/im/s_*.png), drawn in the style of the 2012 ones:
a grey glyph on the left, the name in grey rounded bold from x=67. Written at 2x (the pages set width/height),
so they stay sharp on today's screens.  Run: .venv/bin/python dev/sns_titles.py
  s_x.png            X, with the official X mark (X brand kit path, viewBox 0 0 1200 1227)
  s_facebook.png     Facebook, with today's round "f" badge (2012 image kept as s_facebook_2012.png)
  s_instagram.png    Instagram, with the Instagram glyph (rounded square, lens, flash dot)
  s_cheekychuck.png  CheekyChuck.jocogiant.com (Chuck's tile kept from the 2012 image, s_cheekychuck_2012.png)
"""
import os
import re
from PIL import Image, ImageDraw, ImageFont

HERE = os.path.dirname(os.path.abspath(__file__))
IM = os.path.join(HERE, "..", "game", "html", "im")
FONT = "/System/Library/Fonts/Supplemental/Arial Rounded Bold.ttf"
GREY = (204, 204, 204, 255)
S = 2                    # output scale
SS = 4                   # supersampling on top of it
H, TEXT_X, CAP_TOP, BASE = 44, 67, 23, 36  # 1x metrics measured on s_facebook.png
MAX_W = 280              # .mega width in chuck.css
X_PATH = ("M714.163 519.284L1160.89 0H1055.03L667.137 450.887L357.328 0H0L468.492 681.821L0 1226.37H105.866"
          "L515.491 750.218L842.672 1226.37H1200L714.163 519.284ZM569.165 687.828L521.697 619.934L144.011 79.6944"
          "H306.615L611.412 515.685L658.88 583.579L1055.08 1150.3H892.476L569.165 687.828Z")


def x_polys():
    """The X path is straight lines only (M/L/H/Z): turn it into two polygons in its viewBox units."""
    polys, cur, x, y = [], [], 0.0, 0.0
    for cmd, args in re.findall(r"([MLHZ])([^MLHZ]*)", X_PATH):
        nums = [float(v) for v in re.findall(r"-?[\d.]+", args)]
        if cmd in "ML":
            x, y = nums[0], nums[1]
            if cmd == "M" and cur:
                polys.append(cur); cur = []
            cur.append((x, y))
        elif cmd == "H":
            x = nums[0]; cur.append((x, y))
        elif cmd == "Z":
            polys.append(cur); cur = []
    return polys


def canvas(width):
    k = S * SS
    return Image.new("RGBA", (width * k, H * k), (0, 0, 0, 0)), k


def finish(img, width, name):
    img = img.resize((width * S, H * S), Image.LANCZOS)
    img.save(os.path.join(IM, name), optimize=True)
    print(name, img.size, "-> width=%d height=%d" % (width, H))


def text(img, k, s, width_limit):
    """Name in the 2012 lettering: cap height 13 px from y=23, squeezed like the original (Facebook = 81 px)."""
    cap = (BASE - CAP_TOP) * k
    size = int(cap / 0.716)                      # Arial Rounded Bold cap height = 0.716 em
    f = ImageFont.truetype(FONT, size)
    squeeze = 81 * k / f.getlength("Facebook")   # match the original's letter widths
    w = f.getlength(s) * squeeze
    scale = min(1.0, width_limit * k / w)        # a long name gets smaller instead of wrapping
    f = ImageFont.truetype(FONT, int(size * scale))
    tw, th = int(f.getlength(s)) + 4 * k, int(size * 1.3)
    t = Image.new("RGBA", (tw, th), (0, 0, 0, 0))
    ImageDraw.Draw(t).text((0, 0), s, font=f, fill=GREY)
    t = t.crop(t.getchannel("A").getbbox())
    t = t.resize((max(1, int(t.width * squeeze)), t.height), Image.LANCZOS)
    # placed by the cap top (descenders hang below the baseline); a shrunk name keeps the original baseline
    img.alpha_composite(t, (TEXT_X * k, int(CAP_TOP * k + (BASE - CAP_TOP) * k * (1 - scale))))
    return TEXT_X + t.width / k


def make_x():
    width = 100
    img, k = canvas(width)
    d = ImageDraw.Draw(img)
    hgt = 30 * k
    sc = hgt / 1227
    ox, oy = 33 * k - 600 * sc, 24 * k - hgt / 2
    for p in x_polys():
        d.polygon([(ox + px * sc, oy + py * sc) for px, py in p], fill=GREY)
    # the second polygon is the hole between the strokes' outlines: cut it out
    holes = x_polys()[1]
    d.polygon([(ox + px * sc, oy + py * sc) for px, py in holes], fill=(0, 0, 0, 0))
    text(img, k, "X", 100)
    finish(img, width, "s_x.png")


def make_instagram():
    width = 170
    img, k = canvas(width)
    d = ImageDraw.Draw(img)
    cx, cy, side, sw = 33 * k, 24 * k, 32 * k, int(3.4 * k)
    x0, y0 = cx - side // 2, cy - side // 2
    d.rounded_rectangle((x0, y0, x0 + side, y0 + side), radius=int(9.5 * k), outline=GREY, width=sw)
    r = int(7.6 * k)
    d.ellipse((cx - r, cy - r, cx + r, cy + r), outline=GREY, width=sw)
    fr, fx, fy = int(2.1 * k), x0 + int(24.6 * k), y0 + int(7.4 * k)
    d.ellipse((fx - fr, fy - fr, fx + fr, fy + fr), fill=GREY)
    text(img, k, "Instagram", width - TEXT_X)
    finish(img, width, "s_instagram.png")


def make_facebook():
    """Today's Facebook mark: a solid round badge with the "f" cut out of it, ending at the badge's bottom edge."""
    width = 160
    img, k = canvas(width)
    badge = Image.new("L", img.size, 0)
    d = ImageDraw.Draw(badge)
    cx, cy, r = 33 * k, 24 * k, 16 * k
    d.ellipse((cx - r, cy - r, cx + r, cy + r), fill=255)
    f = Image.new("L", img.size, 0)
    e = ImageDraw.Draw(f)
    u = r / 12                                   # 1 unit = 1/24 of the badge
    sx = cx + 1.1 * u                            # the stem's centre, a little right of the badge's
    stem, top = 3.4 * u, cy - 4.6 * u            # stem width, where the hook's curve starts
    e.rectangle((sx - stem / 2, top, sx + stem / 2, cy + r + 2 * u), fill=255)        # stem, through the bottom
    e.rectangle((sx - 5.4 * u, cy - 0.3 * u, sx + 4.6 * u, cy + 3.1 * u), fill=255)   # crossbar
    hr = 4.6 * u                                 # the hook: a quarter ring from the stem's top to the right
    e.arc((sx - stem / 2, top - hr, sx - stem / 2 + 2 * hr, top + hr), 180, 270, fill=255, width=int(stem))
    e.rectangle((sx - stem / 2 + hr, top - hr, sx + 5.2 * u, top - hr + stem), fill=255)
    badge = Image.composite(Image.new("L", img.size, 0), badge, f)
    grey = Image.new("RGBA", img.size, GREY)
    grey.putalpha(badge)
    img.alpha_composite(grey)
    text(img, k, "Facebook", width - TEXT_X)
    finish(img, width, "s_facebook.png")


def make_cheekychuck():
    src = os.path.join(IM, "s_cheekychuck_2012.png")
    if not os.path.exists(src):
        os.rename(os.path.join(IM, "s_cheekychuck.png"), src)
    old = Image.open(src).convert("RGBA")
    width = MAX_W
    img, k = canvas(width)
    tile = old.crop((0, 0, 60, H)).resize((60 * S * SS, H * S * SS), Image.BICUBIC)
    img.alpha_composite(tile, (0, 0))
    text(img, k, "CheekyChuck.jocogiant.com", width - TEXT_X - 2)
    finish(img, width, "s_cheekychuck.png")


if __name__ == "__main__":
    make_x()
    make_facebook()
    make_instagram()
    make_cheekychuck()
