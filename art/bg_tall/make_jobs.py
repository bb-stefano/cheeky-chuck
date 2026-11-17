"""Build the Codex image jobs for the tall backgrounds (one folder per job under jobs/), and collect results.

  python -I art/bg_tall/make_jobs.py extend    jobs/<scene>:    grow the 1024x1536 master to 1024x2048
                                                                (256 more rows of ceiling/sky above, floor below)
  python -I art/bg_tall/make_jobs.py tilt      jobs/<scene>_1, _2: the camera-tilt views (up / down) as 1024x2048
                                                                masters, redrawn from scratch after the level master
  python -I art/bg_tall/make_jobs.py splash    jobs/splash:     grow the 320x480 home-screen background
                                                                (game/uipic/splash_screen_background@4x.png) to 320x720
  python -I art/bg_tall/make_jobs.py lawn      jobs/lawn_03:    repaint the Halloween master from its fence row down
                                                                as plain lawn (the original fence is pinned above the
                                                                button panel by tallbg.lua, see fence_03.py)
  python -I art/bg_tall/make_jobs.py collect   copy every finished jobs/*/out.png (must be 1024x2048) to
                                                                background_<job>.png here, then run extend.py;
                                                                jobs/splash/out.png (1024x2304) becomes
                                                                game/uipic/splash_screen_background_tall(@4x).png

Each job folder has canvas.png (magenta = to paint), reference images, prompt.txt and inputs.txt (the attachment
list run_codex.sh passes with -i). Run the jobs with: sh art/bg_tall/run_codex.sh
"""
import os, re, sys, shutil
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GAME = os.path.join(ROOT, "game")
JOBS = os.path.join(HERE, "jobs")
W, H_OLD, H_NEW, EXT, SQ = 1024, 1536, 2048, 256, 1024
MAGENTA = (255, 0, 255)
SCENES = ["01", "02", "03", "christmas_01", "newyear", "valentinesday"]

STYLE = ("flat vector cartoon game background, soft gradients, outlined shapes; same style, palette, line weight and "
         "lighting everywhere; every edge, gradient and perspective line continues across the band boundaries with no "
         "visible seam, no repeated object and no new horizontal line; no characters, no animals, no text, no watermark")

DESC = {
    "01": "a tidy room: grey wall and ceiling with a wooden four-blade ceiling fan, an orange-framed open door on the left, "
          "an orange desk with a white computer and a red stool on the right, a window on the right wall, beige floor with a blue rug",
    "02": "a desert: orange dunes, a green cactus on the right, pale distant dunes, an orange-to-violet sunset sky, a blue water pool in the foreground",
    "03": "a night scene: dark-navy starry sky with a full moon, dark tree silhouettes, a haunted-looking house on the right, "
          "a green grassy hill with pale stones ending in a rocky edge of stone columns",
    "christmas_01": "a Christmas living room: warm orange wall, a wooden window on the top-left, a brick fireplace with a stocking on the right, "
                    "a decorated Christmas tree with gifts on yellow wooden floorboards",
    "newyear": "a Chinese New Year scene: red sky with hanging red paper lanterns, golden pagoda buildings with a bridge over a blue canal, "
               "a grey round stone plaza with a pearl railing in the foreground",
    "valentinesday": "a Valentine meadow: pink sky with white clouds, faint hearts and a rainbow, a big green tree with pink roses at its foot, "
                     "rolling yellow meadow hills down to a bed of purple flowers with white daisies",
}
ABOVE = {  # what the camera sees further up / further down, for the new bands
    "01": ("more of the grey ceiling receding toward the viewer, plain, the fan stays where it is",
           "more beige floor coming toward the viewer, the blue rug closing with its dark border, soft sunlight patches from the window"),
    "02": ("the violet-blue upper sky with a few faint stars", "orange sand coming toward the viewer with the water pool's near shore and small green shrubs"),
    "03": ("the dark starry sky, sparse small stars", "the rocky stone-column edge continuing down into darkness, a few pale stones"),
    "christmas_01": ("the warm orange wall going up to a plain ceiling line, soft sparkles, the chimney bricks continue", "yellow floorboards coming toward the viewer with a little confetti"),
    "newyear": ("deep red night sky with soft sparkles and a couple more hanging lanterns", "the blue canal water with its pearl railing curving around the plaza, a few red firecracker scraps"),
    "valentinesday": ("pink sky with white clouds and the rainbow arc fading out", "the purple flower bed with white daisies and pink roses coming toward the viewer"),
}

def last_frame(scene, view):  # the game's last tilt frame for view "1" (up) / "2" (down), at 4x
    data = open(os.path.join(GAME, f"anim_background_{scene}.data"), encoding="utf-8").read()
    names = re.findall(rf"^{view}_static_background\.frame\(.*?o=([^)]+)\)", data, re.M)
    base = names[-1][:-4]
    return os.path.join(GAME, "animpic", base + "@4x.png")

def square(path):  # a 322-based frame (1288 at 4x) scaled to the 1024 scene square
    return Image.open(path).convert("RGB").resize((SQ, SQ), Image.LANCZOS)

def job_dir(name):
    d = os.path.join(JOBS, name); os.makedirs(d, exist_ok=True); return d

def write(d, prompt, inputs):
    open(os.path.join(d, "prompt.txt"), "w", encoding="utf-8").write(prompt.strip() + "\n")
    open(os.path.join(d, "inputs.txt"), "w", encoding="utf-8").write("\n".join(inputs) + "\n")

def extend_jobs():
    for s in SCENES:
        master = Image.open(os.path.join(HERE, f"background_{s}.png")).convert("RGB")
        if master.size != (W, H_OLD):
            print(f"{s}: master is {master.size}, skipping (already tall?)"); continue
        d = job_dir(s)
        canvas = Image.new("RGB", (W, H_NEW), MAGENTA); canvas.paste(master, (0, EXT)); canvas.save(os.path.join(d, "canvas.png"))
        square(last_frame(s, "1")).save(os.path.join(d, "top.png")); square(last_frame(s, "2")).save(os.path.join(d, "bottom.png"))
        up, down = ABOVE[s]
        write(d, f"""
Three attachments. canvas.png is a 1024x2048 canvas: rows 256..1792 hold a FINISHED {STYLE.split(',')[0]} ({DESC[s]});
the magenta bands at the top (rows 0..256) and bottom (rows 1792..2048) are EMPTY. top.png shows the same scene when the game camera
tilts up, bottom.png when it tilts down (references for what lies beyond the edges).
Using your image generation tool, produce ONE 1024x2048 image: reproduce rows 256..1792 EXACTLY as given, pixel for pixel, every
object at the same position and size, and paint the two bands as a seamless continuation of the same scene ({STYLE}).
TOP band: {up}. BOTTOM band: {down}. Save it as out.png in the current directory. Reply with one line.""",
              ["canvas.png", "top.png", "bottom.png"])
        print("extend job:", d)

def tilt_jobs():
    """Full redraws: the level master is the reference for every object, the game's old 322x322 tilt frame
    only shows the framing. Nothing is pasted, so there is no stitching seam to hide."""
    for s in SCENES:
        main = os.path.join(HERE, f"background_{s}.png")
        for view, word, what in (("1", "up", ABOVE[s][0]), ("2", "down", ABOVE[s][1])):
            d = job_dir(f"{s}_{view}")
            shutil.copy(main, os.path.join(d, "main.png"))
            square(last_frame(s, view)).save(os.path.join(d, "ref.png"))
            if view == "1":
                framing = ("the camera has tilted UP: the upper part of main.png (its top band and the upper half of the scene) fills the "
                           "lower two thirds of the image, and above it the view continues further up: " + what)
            else:
                framing = ("the camera has tilted DOWN: the lower part of main.png (the lower half of the scene and its bottom band) fills the "
                           "upper two thirds of the image, and below it the view continues further down, closer to the viewer: " + what)
            write(d, f"""
Two attachments. main.png is a finished 1024x2048 {STYLE.split(',')[0]} ({DESC[s]}) with the camera level. ref.png is the
game's old, small, low-quality frame of the same scene seen with the camera tilted {word}: use it ONLY to understand the framing,
never copy its pixels, its colours or its crude shapes.
Using your image generation tool, produce ONE 1024x2048 image, drawn entirely from scratch as one picture: the scene of main.png as
seen when {framing}. Every object must look exactly like it does in main.png (same colours, shapes, line weight, lighting and
perspective rules; for instance a rug keeps the same blue and the same dark border it has in main.png), just seen from this tilted
camera, and the objects must sit where ref.png shows them. {STYLE}. No pasting, no stitching, no horizontal band or line anywhere.
Save it as out.png in the current directory. Reply with one line.""",
                  ["main.png", "ref.png"])
            print("tilt job:", d)

SPLASH = os.path.join(GAME, "uipic", "splash_screen_background")  # + "@4x.png": 1280x1920 = 320x480 content px
SPLASH_W, SPLASH_H, SPLASH_EXT = 1280, 1920, 480                   # 480 rows (120 content px) above and below
SPLASH_JOB = (1024, 2304)                                           # the same 320x720 shape at Codex's 1024 width

def splash_job():
    """The home screen keeps the 320x480 art pixel for pixel; Codex paints 120 content px of sky above and of
    hills below, so the splash fills a 2.25:1 screen (tallbg.lua scales it up for anything taller)."""
    d = job_dir("splash")
    master = Image.open(SPLASH + "@4x.png").convert("RGB").resize((SPLASH_JOB[0], SPLASH_H * SPLASH_JOB[0] // SPLASH_W), Image.LANCZOS)
    ext = (SPLASH_JOB[1] - master.height) // 2
    canvas = Image.new("RGB", SPLASH_JOB, MAGENTA); canvas.paste(master, (0, ext)); canvas.save(os.path.join(d, "canvas.png"))
    write(d, f"""
One attachment. canvas.png is a {SPLASH_JOB[0]}x{SPLASH_JOB[1]} canvas: rows {ext}..{ext + master.height} hold a FINISHED flat vector
cartoon game title-screen background (a pale sky-blue landscape: a big soft white sun glow filling the upper sky, pale blue cloud
bands, flat white silhouettes of a small town on the horizon (a clock tower with a dome, a house, a steeple), then rolling hills
drawn as stacked wavy horizontal bands of blue, each lower band a little darker, down to deep blue at the bottom);
the magenta bands at the top (rows 0..{ext}) and bottom (rows {ext + master.height}..{SPLASH_JOB[1]}) are EMPTY.
Using your image generation tool, produce ONE {SPLASH_JOB[0]}x{SPLASH_JOB[1]} image: reproduce rows {ext}..{ext + master.height} EXACTLY as
given, pixel for pixel, and paint the two bands as a seamless continuation of the same picture ({STYLE}).
TOP band: nothing but the same smooth pale sky: the round top edge of the white sun glow continues as one smooth arc and the glow fades
evenly into pale blue toward the very top; absolutely no shapes, silhouettes, clouds, marks or texture in the top band, only a smooth gradient.
BOTTOM band: two or three more wavy hill bands of ever deeper blue, in the same stacked style and spacing as the ones above them.
Save it as out.png in the current directory. Reply with one line.""", ["canvas.png"])
    print("splash job:", d)

def collect_splash(out):
    sys.path.insert(0, HERE); from extend import match_band, update_sizes, save_quantized
    import numpy as np
    im = Image.open(out).convert("RGB")
    if im.size != SPLASH_JOB:
        print(f"splash: out.png is {im.size}, expected {SPLASH_JOB}, not collected"); return False
    tall = im.resize((SPLASH_W, SPLASH_H + 2 * SPLASH_EXT), Image.LANCZOS)
    tall.paste(Image.open(SPLASH + "@4x.png").convert("RGB"), (0, SPLASH_EXT))     # the original rows, exact
    a = np.asarray(tall, np.float32).copy()
    match_band(a, SPLASH_EXT, list(range(SPLASH_EXT - 1, -1, -1)))
    match_band(a, SPLASH_EXT + SPLASH_H, list(range(SPLASH_EXT + SPLASH_H, SPLASH_H + 2 * SPLASH_EXT)))
    tall = Image.fromarray(np.clip(a + 0.5, 0, 255).astype(np.uint8))
    save_quantized(tall, SPLASH + "_tall@4x.png")
    tall.resize((SPLASH_W // 4, tall.height // 4), Image.LANCZOS).save(SPLASH + "_tall.png", optimize=True)
    update_sizes({"uipic/splash_screen_background_tall.png": (SPLASH_W // 4, tall.height // 4)})
    print(f"splash: {tall.width}x{tall.height} -> uipic/splash_screen_background_tall(@4x).png, imgsizes.lua updated")
    return True

LAWN = {"03": 1145}  # scene -> first master row to repaint: the Halloween fence (and everything under it) becomes lawn

def lawn_jobs():
    """Halloween (scene 03): the original 322x322 ends in a picket fence that Codex's bottom band continued as
    tall planks. The game now pins the ORIGINAL fence rows (fence_03.py -> background_03_tall_fence.png) just
    above the button panel, so the master needs plain lawn from the fence's top row down instead."""
    for s, row in LAWN.items():
        master = Image.open(os.path.join(HERE, f"background_{s}.png")).convert("RGB")
        assert master.size == (W, H_NEW), f"{s}: master is {master.size}"
        d = job_dir(f"lawn_{s}")
        canvas = master.copy(); canvas.paste(MAGENTA, (0, row, W, H_NEW)); canvas.save(os.path.join(d, "canvas.png"))
        write(d, f"""
One attachment. canvas.png is a {W}x{H_NEW} canvas: rows 0..{row} hold a FINISHED {STYLE.split(',')[0]} ({DESC[s]});
the magenta band at the bottom (rows {row}..{H_NEW}) is EMPTY.
Using your image generation tool, produce ONE {W}x{H_NEW} image: reproduce rows 0..{row} EXACTLY as given, pixel for pixel,
every object at the same position and size, and paint the band as the green lawn simply continuing straight down toward
the viewer: the same grass colour and the same smooth gradient, a few more of the same pale rounded stones with their soft
shadows scattered the same way (the stone cut by the top boundary of the band continues naturally; no other stone touches
that boundary), and nothing else: no fence, no wall, no rocky edge, no planks, no path, no horizontal line of any kind,
all the way to the bottom edge, which may be a little darker ({STYLE}). Save it as out.png in the current directory.
Reply with one line.""", ["canvas.png"])
        print("lawn job:", d)

def collect_lawn(scene, out):
    sys.path.insert(0, HERE); from extend import match_band
    import numpy as np
    row = LAWN[scene]
    im = Image.open(out).convert("RGB")
    if im.size != (W, H_NEW):
        print(f"lawn_{scene}: out.png is {im.size}, expected {W}x{H_NEW}, not collected"); return False
    master_path = os.path.join(HERE, f"background_{scene}.png")
    master = Image.open(master_path).convert("RGB")
    old = os.path.join(HERE, "old"); os.makedirs(old, exist_ok=True)
    keep = os.path.join(old, f"background_{scene}_before_lawn.png")
    if not os.path.exists(keep): master.save(keep)
    a = np.asarray(im, np.float32).copy()
    a[:row] = np.asarray(master, np.float32)[:row]                 # the rows above the band, exact
    match_band(a, row, list(range(row, H_NEW)))                     # heal the colour step at the boundary
    Image.fromarray(np.clip(a + 0.5, 0, 255).astype(np.uint8)).save(master_path)
    print(f"lawn_{scene}: master background_{scene}.png rewritten from row {row} (previous copy in old/)")
    return True

def collect():
    done = []
    for name in sorted(os.listdir(JOBS)) if os.path.isdir(JOBS) else []:
        out = os.path.join(JOBS, name, "out.png")
        if not os.path.exists(out): continue
        if name == "splash":
            if collect_splash(out): done.append(name)
            continue
        if name.startswith("lawn_"):
            if collect_lawn(name[5:], out): done.append(name[5:])
            continue
        im = Image.open(out)
        if im.size != (W, H_NEW):
            print(f"{name}: out.png is {im.size}, expected {W}x{H_NEW}, not collected"); continue
        im.convert("RGB").save(os.path.join(HERE, f"background_{name}.png")); done.append(name)
    print("collected:", ", ".join(done) or "nothing")
    if done:
        scenes = [n for n in done if n != "splash"]
        if scenes: os.system(f'"{sys.executable}" -I "{os.path.join(HERE, "extend.py")}" ' + " ".join("background_" + n for n in scenes))

cmd = sys.argv[1] if len(sys.argv) > 1 else ""
{"extend": extend_jobs, "tilt": tilt_jobs, "splash": splash_job, "lawn": lawn_jobs, "collect": collect}.get(cmd, lambda: print(__doc__))()
