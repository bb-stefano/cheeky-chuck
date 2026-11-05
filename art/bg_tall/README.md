# Tall backgrounds (2026-11-05)

Six 1024x1536 masters drawn by Codex (`codex exec … -i canvas.png -i top.png -i bottom.png`, prompts in `prompt_<scene>.txt`,
loop in `run_codex.sh`): the original 322x322 base scene sits in the central square (y 256..1280 at 1024 wide), the top and
bottom bands continue it, consistent with the game's camera-tilt frames (`background_<scene>_1_*` up, `_2_*` down).
Scene 01's floor sunlight is painted afterwards by `light_01.py` (one correct-perspective parallelogram), since the model
could not keep its perspective consistent. Not wired into the game yet (layout + tilt decisions pending).
