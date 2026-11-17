-- Dev: append the tall backdrop state (main art, fence strip, tilt) bounds to Documents/fence.txt.
local t = require("tallbg").state()
local f = io.open(system.pathForFile("fence.txt", system.DocumentsDirectory), "a")
local function b(o) if not o then return "nil" end local c = o.contentBounds; return string.format("%.0f,%.0f..%.0f,%.0f alpha=%.2f", c.xMin, c.yMin, c.xMax, c.yMax, o.alpha) end
f:write(string.format("t=%.1f scene=%s main=%s fence=%s tilt=%s bars=%s\n", system.getTimer() / 1000, tostring(t.scene), b(t.main), b(t.fence), b(t.tilt), tostring(t.bars.isVisible)))
f:close()
