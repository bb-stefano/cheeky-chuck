"""Syntax-check Lua files with a real Lua 5.1 parser (lupa.lua51). Run: python -I luacheck51.py 'game/*.lua'"""
import sys, glob
from lupa.lua51 import LuaRuntime, LuaSyntaxError

L = LuaRuntime()
bad = 0
for pat in sys.argv[1:]:
    for f in sorted(glob.glob(pat)):
        src = open(f, "rb").read()
        try:
            L.compile(src.decode("utf-8", errors="replace"))
        except LuaSyntaxError as e:
            bad += 1; print(f, "->", str(e).replace("\n", " ")[:300])
print("errors:", bad)
sys.exit(1 if bad else 0)
