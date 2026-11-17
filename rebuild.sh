#!/bin/sh
# Rebuild game/ from the decompiled sources: src/*.lua + overlay/* + patches. Assets in game/ are left alone.
set -e
cd "$(dirname "$0")"
PY=${PYTHON:-$( [ -x ./.venv/bin/python ] && echo ./.venv/bin/python || command -v python3 || command -v python )}  # Windows: python, macOS: python3
cp src/*.lua game/
"$PY" -I andfix.py 'game/*.lua' | tail -1
"$PY" -I patch_game.py game
"$PY" -I degoto.py 'game/*.lua' | tail -1
"$PY" -I upvalfix.py 'game/*.lua'
"$PY" -I upvalcheck.py 'game/*.lua' | tail -1
cp overlay/* game/
"$PY" -I luacheck51.py 'game/*.lua' | tail -1
node scripts/check-no-ai-mentions.mjs game  # nothing that ships may name an AI tool (CoronaBuilder packages game/)
