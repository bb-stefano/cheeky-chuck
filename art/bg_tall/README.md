# Tall backgrounds (2026-11-05)

Six 1024x1536 masters drawn by Codex (`codex exec … -i canvas.png -i top.png -i bottom.png`, prompts in `prompt_<scene>.txt`,
loop in `run_codex.sh`): the original 322x322 base scene sits in the central square (y 256..1280 at 1024 wide), the top and
bottom bands continue it, consistent with the game's camera-tilt frames (`background_<scene>_1_*` up, `_2_*` down).
Scene 01's floor sunlight is painted afterwards by `light_01.py` (one correct-perspective parallelogram), since the model
could not keep its perspective consistent. Wired in by `extend.py` (-> `game/animpic/background_<scene>_tall[@4x].png`, 322x644 content px with
blurred edge extensions for screens up to 2.5:1) and `overlay/tallbg.lua` (draws it under the world, pins the UI to the
screen edges). Tilt views: drop `background_<scene>_1.png` (up) / `_2.png` (down) masters here, rerun `extend.py`, and
tallbg crossfades to them; until then the original 322x322 tilt frames play inside the scene square.

## Codex jobs (2026-11-05)

`make_jobs.py extend` builds `jobs/<scene>/` (canvas 1024x2048 with the current master in rows 256..1792, tilt references,
prompt); `sh run_codex.sh` runs every job without an `out.png` through `codex exec` (needs `codex login`) and collects the
1024x2048 results back here as `background_<scene>.png`, then regenerates the game assets. Second stage, once the six
masters are 2048 tall: `make_jobs.py tilt` builds `jobs/<scene>_1` (camera up) and `_2` (down) around the game's last tilt
frame with the new master as reference; `sh run_codex.sh` again. tallbg.lua crossfades to `background_<scene>_1/_2_tall`
when they exist. `jobs/` is not committed (out.png and codex.log are large); the collected masters are.

## Home screen (2026-11-05)

The splash background (`game/uipic/splash_screen_background.png`, 320x480) gets the same treatment:
`python -I art/bg_tall/make_jobs.py splash` builds `jobs/splash` (canvas 1024x2304, the art in rows 384..1920),
`sh art/bg_tall/run_codex.sh splash` has Codex paint 120 content px of sky above and hills below, and `collect`
writes `game/uipic/splash_screen_background_tall(@4x).png` (320x720, original rows pixel-exact, band colours matched)
plus its `imgsizes.lua` entry. `tallbg.lua` draws it instead of the 320x480 image on tall screens (scaled up to cover
anything taller than 2.25:1) and leaves the letterbox bars off; logo, character and buttons are untouched.

On tall screens `tallbg.lua` also spreads the home screen out (logo, shine and the silhouette acts up under the
safe top; face, finger, Chuck, shadow, light rays, buttons and version tag down to the bottom; see
`SPLASH_SHIFT_UP/DOWN`), and the "?" hint overlay uses the smooth, taller banner frames from `art/splash/banner.py`.
`art/splash/acts.py` sequences the three black-silhouette gags of the splash timeline so only one is on screen
at a time (walker, then rope swinger, then bungee drop); it rewrites the act1/act2 sprite blocks in
`game/anim_splash_page_<lang>.data` and adds the blank `animpic/splash_page_en_blank.png`.
`art/hints/make_jobs.py` + `run_codex.sh` re-letter the website line of the "Cheeky Chuck Champ" hint banner
(`game/hints/<lang>/banner_CC2.png`) to cheekychuck.jocogiant.com; originals in `art/hints/orig/`.
`art/icon/` holds the app icon redrawn by Codex at 1024x1024 (`icon.png`, edge to edge; `icon_adaptive.png`, zoomed out
for the Android adaptive safe zone) and `make_icons.py`, which writes every size: `game/Icon-*.png`,
`game/AndroidResources/res/` (legacy + adaptive launcher icons, what the APK uses), `icon_512.png` for the store
listing and the website's `site/assets/icon.png` / `site/favicon.png`. The 2012 114 px original is in `art/icon/orig/`.

## Halloween fence, rain sheet, teleport fix, dialog buttons (2026-11-09)

Scene 03's Codex band continued the picket fence as tall planks, which showed between the fence and the button
panel on a tall phone. Now `fence_03.py` cuts the ORIGINAL fence rows (with the stones in front of them) into
`game/animpic/background_03_tall_fence(@4x).png` and `tallbg.lua` pins that strip just above the button panel on
any screen (tilt views fade it out); `lawn_03.py` repaints the master from the fence row down as plain lawn
(trend + shading of the rows above, the master's own small stones copied, the previous master kept in
`old/`) and reruns `extend.py`. Codex was out of quota that day, so the lawn is synthesised, not painted; the
`make_jobs.py lawn` job (`jobs/lawn_03`) is ready for a painted version later (`sh run_codex.sh lawn_03`
re-collects it into the master; rerun `lawn_03.py` only if you want the synthetic one back).

`tallbg.lua` also scales the rain animations' flat black sheet (`animpic/rain_ending_front_black-1.png`,
362x482) 3x around its centre so it darkens the whole tall screen; photos get it back at 1:1.

The "Chuck teleports to the left edge" bug was anim.lua's v1 `rotateAt` epilogue (`group.x = x` assumed group.x is
the reference point; in v2 it is the origin, so a flipped character landed a timeline-width to the left until the
next flip). `patch_game.py` routes it to `compat.placeAt`, which puts the pivot where v1 did.

The round ok / cancel / send buttons the Lua dialogs draw live in `game/html/im/` (shared with the HTML pages),
which `upscale.py` did not cover, so they were blurry on phones: `html/im` is in its DIRS now and the three have
`@4x` files (Real-ESRGAN anime, `models/RealESRGAN_x4plus_anime_6B.onnx` from Hugging Face
`RekluzLabs/realesrgan_anime6b.onnx`, onnxruntime in `.venv`). `art/ui/` holds an equivalent Codex job set.
`upscale.py --only` used to rewrite `imgsizes.lua` with just the selected files; fixed (always the whole table).
