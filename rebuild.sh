#!/bin/sh
# Rebuild game/ from the decompiled sources: src/*.lua + overlay/* + patches. Assets in game/ are left alone.
set -e
cd "$(dirname "$0")"
cp src/*.lua game/
python -I andfix.py 'game/*.lua' | tail -1
python -I patch_game.py game
python -I degoto.py 'game/*.lua' | tail -1
python -I upvalfix.py 'game/*.lua'
python -I upvalcheck.py 'game/*.lua' | tail -1
cp overlay/* game/
python -I luacheck51.py 'game/*.lua' | tail -1
