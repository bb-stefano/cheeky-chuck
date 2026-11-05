"""Paint the window's sunlight on scene 01's floor as one correct-perspective parallelogram.
Edges: two along the right wall's depth direction (toward the back corner), two along the sun
direction (from the window leftward across the floor). Lightens whatever floor-plane pixel it
covers (beige floor, rug, shadows) so the patch is continuous; walls and furniture are excluded."""
import sys
from PIL import Image, ImageDraw, ImageFilter
import numpy as np
src, dst = sys.argv[1], sys.argv[2]
im = Image.open(src).convert('RGB'); W, H = im.size
S = 4
P1 = (1024 + 60, 1235)   # front end at the right edge (just past the image edge so the patch runs off-screen)
P2 = (770, 1078)         # back end, where the right wall meets the floor in front of the desk
sun = (-520, 92)         # sun direction across the floor (leftward, slightly toward the viewer)
poly = [P1, P2, (P2[0] + sun[0], P2[1] + sun[1]), (P1[0] + sun[0], P1[1] + sun[1])]
m = Image.new('L', (W * S, H * S), 0)
ImageDraw.Draw(m).polygon([(x * S, y * S) for x, y in poly], fill=255)
mask = np.asarray(m.resize((W, H), Image.LANCZOS).filter(ImageFilter.GaussianBlur(2.5)), dtype=np.float32) / 255
a = np.asarray(im, dtype=np.float32)
r, g, b = a[..., 0], a[..., 1], a[..., 2]
beige = (r > 190) & (r - b > 25) & (r - b < 90) & (g > 150)           # floor and its soft shadows
rug = (b > 150) & (b - r > 60)                                        # blue rug incl. dark border
plane = (beige | rug) & (np.arange(H)[:, None] > 980)
k = 0.22 * mask * plane
out = a + (255 - a) * k[..., None]
Image.fromarray(np.clip(out, 0, 255).astype(np.uint8)).save(dst)
print('light painted ->', dst)
