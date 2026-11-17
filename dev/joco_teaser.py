"""Builds the two 934x700 Cheeky Chuck cards for jocogiant.com (home screen + gameplay).
Each card: the portrait screenshot, rounded and shadowed, centred over a blurred, darkened copy of itself."""
import sys
from PIL import Image, ImageFilter, ImageDraw, ImageEnhance

W, H = 934, 700

def card(src, out):
    im = Image.open(src).convert("RGB")
    bg = im.resize((W, int(im.height * W / im.width)), Image.LANCZOS)
    top = (bg.height - H) // 2
    bg = bg.crop((0, top, W, top + H)).filter(ImageFilter.GaussianBlur(28))
    bg = ImageEnhance.Brightness(bg).enhance(0.55)
    ph = H - 56
    pw = round(im.width * ph / im.height)
    shot = im.resize((pw, ph), Image.LANCZOS)
    r = 26
    mask = Image.new("L", (pw, ph), 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, pw - 1, ph - 1), r, fill=255)
    x, y = (W - pw) // 2, (H - ph) // 2
    shadow = Image.new("L", (W, H), 0)
    ImageDraw.Draw(shadow).rounded_rectangle((x, y + 10, x + pw, y + ph + 10), r, fill=170)
    shadow = shadow.filter(ImageFilter.GaussianBlur(18))
    bg.paste(Image.new("RGB", (W, H), (0, 0, 0)), (0, 0), shadow)
    frame = Image.new("L", (pw + 12, ph + 12), 0)
    ImageDraw.Draw(frame).rounded_rectangle((0, 0, pw + 11, ph + 11), r + 6, fill=255)
    bg.paste(Image.new("RGB", frame.size, (255, 255, 255)), (x - 6, y - 6), frame)
    bg.paste(shot, (x, y), mask)
    bg.save(out, "WEBP", quality=86, method=6)

if __name__ == "__main__":
    card(sys.argv[1], sys.argv[2])
