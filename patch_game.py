"""Apply the few textual patches the decompiled code needs on top of compat.lua.
Run: python -I patch_game.py game   (idempotent)"""
import re, sys, pathlib

root = pathlib.Path(sys.argv[1])
n = 0

for f in root.glob("*.lua"):
    s = orig = f.read_text(encoding="utf-8", errors="surrogateescape")
    # obj.xReference = v  ->  compat.setXRef(obj, v)   (property sets can't be intercepted in v2)
    s = re.sub(r"^(\s*)([\w.\[\]]+)\.([xy])Reference = (.+)$",
               lambda m: f"{m[1]}compat.set{m[3].upper()}Ref({m[2]}, {m[4]})", s, flags=re.M)
    # obj.xScale/yScale/rotation = v on a pivoted group must scale/rotate around the v1 reference point
    s = re.sub(r"^(\s*)([\w.\[\]]+)\.(xScale|yScale|rotation) = (.+)$",
               lambda m: f'{m[1]}compat.setProp({m[2]}, "{m[3]}", {m[4]})', s, flags=re.M)
    # v1 line.width (stroke width) -> v2 line.strokeWidth, only within 8 lines after display.newLine
    lines = s.split("\n")
    for i, l in enumerate(lines):
        if l.rstrip().endswith(".newLine"):
            for j in range(i + 1, min(i + 9, len(lines))):
                if "= display" in lines[j]: break  # next constructor: stop
                lines[j] = re.sub(r"\.width = ", ".strokeWidth = ", lines[j])
    s = "\n".join(lines)
    if s != orig:
        f.write_text(s, encoding="utf-8", errors="surrogateescape"); n += 1

# touchGesture's log() was compiled out; give it a body so gesture diagnostics reach the console
tg = root / "touchGesture.lua"
s = tg.read_text(encoding="utf-8")
s, n_log = re.subn(r"  function L4_2\(A0_3, A1_3\)\n  end\n\s*\n  L3_2\.log = L4_2",
              "  function L4_2(A0_3, A1_3)\n    if TOUCH_DEBUG then print(\"[touch] \" .. tostring(A1_3)) end\n  end\n\n  L3_2.log = L4_2", s)
assert n_log == 1, "touchGesture log hook not found"
tg.write_text(s, encoding="utf-8")

# Hint chooser: the decompiled if-nesting leaves the hint image nil on several paths (crash on "..").
# ponytail: fall back to a random known hint instead of reconstructing the original condition chain.
dv = root / "discovery.lua"
s = dv.read_text(encoding="utf-8")
s, n_hint = re.subn(r"( +)L12_3 = L8_3\n +L13_3 = \"/\"\n +L14_3 = L9_3\n",
    lambda m: m[0].replace("L14_3 = L9_3", "if L9_3 == nil then\n%slocal hs = A0_3.removableHints\n%sif #hs > 0 then L9_3 = hs[math.random(1, #hs)].img else L9_3 = L29_1[math.random(1, #L29_1)].img end\n%sA0_3.lastShownRemovableHint = L9_3\n%send\n%sL14_3 = L9_3" % ((m[1] + "  ",) * 3 + (m[1],) * 2)), s)
assert n_hint >= 1, f"hint fallback sites: {n_hint}"
dv.write_text(s, encoding="utf-8")

# touch-id diagnostics for the "non-existing finger" resets
s = tg.read_text(encoding="utf-8")
s = s.replace('L5_3 = "ERROR illegal event on non-existing finger, reset everything"',
              'L5_3 = "ERROR illegal event on non-existing finger, reset everything phase=" .. tostring(A1_3.phase) .. " id=" .. tostring(A1_3.id) .. " at " .. tostring(A1_3.x) .. "," .. tostring(A1_3.y)')
s = s.replace('L6_3 = "added new finger, count=%d, gestureFingerCount=%d, state=%d"',
              'L6_3 = "added new finger, count=%d, gestureFingerCount=%d, state=%d id=" .. tostring(A1_3.id)')
tg.write_text(s, encoding="utf-8")

s = tg.read_text(encoding="utf-8")
s = s.replace('L11_3 = "tap detected"',
              'L11_3 = "tap detected state=" .. tostring(A0_3.state) .. " eat=" .. tostring(A0_3.animegg.isEating) .. " sleep=" .. tostring(A0_3.animegg.isSleeping) .. " hang=" .. tostring(A0_3.animegg.isHangFromScreen) .. " fall=" .. tostring(A0_3.animegg.isFallOnScreen) .. " react=" .. tostring(A0_3.animegg.isPlayReactionAnim)')
s, n_at = re.subn(r"( +)A0_3\.lastTapTime = L2_3\n", lambda m: m[1] + 'if TOUCH_DEBUG then print("[touch] after tap state=" .. tostring(A0_3.state) .. " now=" .. tostring(L2_3) .. " last=" .. tostring(A0_3.lastTapTime)) end\n' + m[0], s)
assert n_at == 1, f"after-tap sites: {n_at}"
s, n_dg = re.subn(r"( +)L2_3 = A0_3\.detectSingleTouchGesture\n( +)L4_3 = A1_3\n +L2_3\(L3_3, L4_3\)\n", lambda m: m[0] + m[1] + 'if TOUCH_DEBUG then print("[touch] detectGestures state=" .. tostring(A0_3.state)) end\n', s)
assert n_dg == 1, f"detectGestures sites: {n_dg}"
tg.write_text(s, encoding="utf-8")

# Double-tap fix: the tail of detectSingleTouchGesture drops the "tapped once" state (110) on every
# "moved" event. The 2012 iPhone sent none for a clean tap; the simulator and modern Android send
# moved events for a stationary finger, so the second tap never saw state 110 and double taps
# (punch/kick, light switch, cat) never fired. Only drop the state when the finger really moved.
s = tg.read_text(encoding="utf-8")
tail = s.index("L3_2.detectSingleTouchGesture = L4_2")
k = s.rindex("if L9_3 == L10_3 then\n", 0, tail)
assert s[k:tail].count("A0_3.state = L9_3") == 1 and "L12_1" in s[k:tail]
s = s[:k] + "if L9_3 == L10_3 and L6_3 > TAP_MAX_DISTANCE then\n" + s[k + len("if L9_3 == L10_3 then\n"):]
tg.write_text(s, encoding="utf-8")

# touchsim.lua (the devs' UDP touch injector, simulator only): surface bind failures
ts = root / "touchsim.lua"
s = ts.read_text(encoding="utf-8")
s, n_ts = re.subn(r"(  L5_2 = L1_1\n)  L2_2\(L3_2, L4_2, L5_2\)\n", r'\1  print("[touchsim] bind :" .. tostring(L1_1), L2_2(L3_2, L4_2, L5_2))\n', s)
assert n_ts == 1, f"touchsim bind site: {n_ts}"
ts.write_text(s, encoding="utf-8")

# unluac collapses `not a and not b() and not c()` (one register reused) into `not X and X` (always
# false). Four sites, rewritten from the bytecode (every test is `test r 1` = negated operand).
def fix_chain(fname, old, new):
    p = root / fname
    s = p.read_text(encoding="utf-8")
    assert s.count(old) == 1, f"{fname}: chain pattern count {s.count(old)}"
    p.write_text(s.replace(old, new), encoding="utf-8")
fix_chain("animegg.lua",
    "    L1_3 = A0_3.isPunchShowReaction\n    L2_3 = A0_3\n    L1_3 = A0_3.isInLoopState\n    L1_3 = L1_3(L2_3)\n    L2_3 = A0_3\n    L1_3 = A0_3.isFallingDown\n    L1_3 = L1_3(L2_3)\n    L1_3 = not L1_3 and L1_3\n",
    "    L1_3 = not A0_3.isPunchShowReaction and not A0_3:isInLoopState() and not A0_3:isFallingDown()\n")
fix_chain("touchGesture.lua",
    "    L2_3 = A0_3.animegg\n    L2_3 = L2_3.isPlayReactionAnim\n    L2_3 = A0_3.animegg\n    L2_3 = L2_3.isFallOnScreen\n    L2_3 = A0_3.animegg\n    L2_3 = L2_3.isHangFromScreen\n    L2_3 = not L2_3 and L2_3\n",
    "    L2_3 = not A0_3.animegg.isPlayReactionAnim and not A0_3.animegg.isFallOnScreen and not A0_3.animegg.isHangFromScreen\n")
gm = root / "game.lua"
s = gm.read_text(encoding="utf-8")
s, n_snd = re.subn("    L0_3 = self\n    L0_3 = L0_3.configuration\n    L0_3 = L0_3.soundfx\n    L0_3 = self\n    L0_3 = L0_3.configuration\n    L0_3 = L0_3.soundbg\n    L0_3 = not L0_3 and L0_3\n",
    "    L0_3 = not self.configuration.soundfx and not self.configuration.soundbg\n", s)
assert n_snd == 2, f"game.lua sound chain sites: {n_snd}"
gm.write_text(s, encoding="utf-8")

# v1 group.xReference reads (anim.lua moveTo compensates `group.x = x` moving the reference point).
# In v2 group.x is the origin, so the compensation must be zero.
an0 = root / "anim.lua"
s = an0.read_text(encoding="utf-8")
s, n_xr = re.subn(r"\.([xy])Reference\n", r".\1Reference or 0\n", s)
assert n_xr == 8, f"xReference reads: {n_xr}"
an0.write_text(s, encoding="utf-8")

# animegg entry tracing for the reaction methods (TOUCH_DEBUG only)
ae = root / "animegg.lua"
s = ae.read_text(encoding="utf-8")
for name in ("allowPunch", "stopAndPlayPunchStomach", "stopAndPlayPunchFace", "stopAndPlayKickFoot", "stopAndPlayTurnOffLight"):
    s, n_w = re.subn(rf"^(  L7_2\.{name} = L109_2\n)",
        lambda m: m[1] + f'  do local f = L7_2.{name}; L7_2.{name} = function(self, ...) local r = f(self, ...); if TOUCH_DEBUG then print("[animegg] {name} -> " .. tostring(r) .. " offended=" .. tostring(self.isOffended) .. " tl=" .. tostring(self.currentTimeline and self.currentTimeline.name)) end; return r end end\n', s, flags=re.M)
    assert n_w == 1, f"animegg wrapper {name}: {n_w}"
ae.write_text(s, encoding="utf-8")

# hit-test diagnostics (anim.lua containsPointAt), printed only when TOUCH_DEBUG
an = root / "anim.lua"
s = an.read_text(encoding="utf-8")
s, n_hit = re.subn(r"( +)L18_3 = L9_3\n +return L11_3\(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3\)",
    lambda m: m[0].replace("return", 'if TOUCH_DEBUG then print(string.format("[hit] layer=%s pt=%.0f,%.0f box=%.0f,%.0f %.0fx%.0f rot=%s tl=%.0f,%.0f -> %s", tostring(A3_3), A1_3, A2_3, L6_3, L7_3, L8_3, L9_3, tostring(L10_3), A0_3.x, A0_3.y, tostring(L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)))) end\n' + m[1] + "return"), s)
assert n_hit == 1, f"hit debug sites: {n_hit}"
an.write_text(s, encoding="utf-8")

main = root / "main.lua"
s = main.read_text(encoding="utf-8")
if 'require("compat")' not in s:
    main.write_text('require("compat")\n' + s, encoding="utf-8"); n += 1
print("patched files:", n)
