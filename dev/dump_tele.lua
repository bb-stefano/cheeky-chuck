-- Dev: the "teleport" check. Flip the character's current timeline, run the v1 rotateAt(0) epilogue, flip back;
-- the timeline's content bounds must stay put at every step. Appends to Documents/tele.txt.
local f = io.open(system.pathForFile("tele.txt", system.DocumentsDirectory), "a")
local tl = ANIMEGG and ANIMEGG.currentTimeline
if not tl then f:write("no ANIMEGG/currentTimeline\n"); f:close(); return end
local function b() local c = tl.group.contentBounds; return string.format("x=%.1f bounds %.0f,%.0f..%.0f,%.0f xScale=%d", tl.group.x, c.xMin, c.yMin, c.xMax, c.yMax, tl.group.xScale) end
f:write("anim=" .. tostring(tl.animationName) .. " pivot=" .. tostring(tl.group._pivot and tl.group._pivot.x) .. "\n")
f:write("  start      " .. b() .. "\n")
compat.setProp(tl.group, "xScale", -tl.group.xScale); f:write("  flipped    " .. b() .. "\n")
tl:rotateAt(0, 160, 160);                             f:write("  rotateAt0  " .. b() .. "\n")
compat.setProp(tl.group, "xScale", -tl.group.xScale); f:write("  flipped bk " .. b() .. "\n")
tl:rotateAt(0, 160, 160);                             f:write("  rotateAt0  " .. b() .. "\n")
f:close()
