"""game/html/im/share@4x.png + share.png: the photo screen's Share button (photosend.lua), in the style of
send@4x.png (same green ring, dark disc) with the share glyph (three linked dots) in the paper plane's light grey.
Run: .venv/bin/python dev/share_button.py"""
import os
from PIL import Image, ImageDraw, ImageFilter

IM = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "game", "html", "im")
src = Image.open(os.path.join(IM, "send@4x.png")).convert("RGBA")
W, H = src.size
cx, cy, r_in = W / 2, H / 2, 86            # inside the green ring
out = src.copy()
px = out.load()
for y in range(H):
    for x in range(W):
        if (x - cx) ** 2 + (y - cy) ** 2 <= r_in ** 2:
            px[x, y] = (48, 48, 48, 230)   # the disc's colour, measured on send@4x.png

K = 4                                      # supersampling
g = Image.new("RGBA", (W * K, H * K), (0, 0, 0, 0))
d = ImageDraw.Draw(g)
dots = [(cx + 30, cy - 36), (cx - 34, cy), (cx + 30, cy + 36)]
lw, rr = 11, 19
for a, b in ((dots[1], dots[0]), (dots[1], dots[2])):
    d.line([(a[0] * K, a[1] * K), (b[0] * K, b[1] * K)], fill=(255, 255, 255, 255), width=lw * K)
for x, y in dots:
    d.ellipse(((x - rr) * K, (y - rr) * K, (x + rr) * K, (y + rr) * K), fill=(255, 255, 255, 255))
mask = g.getchannel("A").resize((W, H), Image.LANCZOS)
# light grey, a touch brighter at the top like the plane, over a soft drop shadow
shade = Image.linear_gradient("L").resize((W, H)).point(lambda v: 235 - v * 55 // 255)
glyph = Image.merge("RGBA", (shade, shade, shade, mask))
shadow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
shadow.putalpha(mask.point(lambda v: v * 150 // 255))
shadow = shadow.filter(ImageFilter.GaussianBlur(4))
out.alpha_composite(shadow, (3, 5))
out.alpha_composite(glyph)
out.save(os.path.join(IM, "share@4x.png"), optimize=True)
small = Image.open(os.path.join(IM, "send.png")).size
out.resize(small, Image.LANCZOS).save(os.path.join(IM, "share.png"), optimize=True)
print("share@4x.png", out.size, "share.png", small)
