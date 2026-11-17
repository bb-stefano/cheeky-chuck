"""Point the webview pages (game/html) at the Real-ESRGAN @4x images produced by upscale.py, keeping the
CSS layout size: background-image urls get a background-size of the base image, <img> tags without an
explicit size get width/height of the base image. Idempotent. Run: .venv/bin/python -I dev/html_hidpi.py"""
import glob, os, re, struct

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
HTML = os.path.join(ROOT, "game", "html")
IM = os.path.join(HTML, "im")

def png_size(path):
    with open(path, "rb") as f:
        head = f.read(24)
    assert head[:8] == b"\x89PNG\r\n\x1a\n", path
    return struct.unpack(">II", head[16:24])

def hi(name):
    """name = 'thumb_2.png' -> ('thumb_2@4x.png', w, h) if the @4x file exists, else None"""
    base, ext = os.path.splitext(name)
    if ext != ".png" or base.endswith("@4x"):
        return None
    big = base + "@4x.png"
    if not os.path.exists(os.path.join(IM, big)) or not os.path.exists(os.path.join(IM, name)):
        return None
    w, h = png_size(os.path.join(IM, name))
    return big, w, h

def fix_css(text):
    def rule(m):
        body = m.group(2)
        urls = re.findall(r"url\(['\"]?(?:\.\./)?im/([^'\")]+)['\"]?\)", body)
        if len(urls) != 1 or "background-size" in body:
            return m.group(0)
        info = hi(urls[0])
        if not info:
            return m.group(0)
        big, w, h = info
        body = body.replace("im/" + urls[0], "im/" + big)
        body = body.rstrip()
        if not body.endswith(";"):
            body += ";"
        body += " background-size:%dpx %dpx;" % (w, h)
        return m.group(1) + "{" + body + "}"
    return re.sub(r"([^{}]*)\{([^{}]*)\}", rule, text)

def fix_html(text):
    def img(m):
        tag = m.group(0)
        if re.search(r"\bwidth=", tag):
            return tag
        name = m.group(1)
        info = hi(name)
        if not info:
            return tag
        big, w, h = info
        tag = tag.replace('src="im/' + name + '"', 'src="im/%s" width="%d" height="%d"' % (big, w, h))
        return tag
    return re.sub(r'<img[^>]*src="im/([^"]+)"[^>]*>', img, text)

changed = 0
for path in glob.glob(os.path.join(HTML, "lib", "*.css")):
    s = open(path).read(); t = fix_css(s)
    if t != s: open(path, "w").write(t); changed += 1
for path in glob.glob(os.path.join(HTML, "*.html")):
    s = open(path).read(); t = fix_html(s)
    if t != s: open(path, "w").write(t); changed += 1
print("files changed:", changed)
