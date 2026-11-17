-- Dev: dump the splash-screen layout (tallbg bars, every splash child with its bounds) to Documents/dbg.txt.
local f = io.open(system.pathForFile("dbg.txt", system.DocumentsDirectory), "w")
local function bb(o)
  local b = o.contentBounds
  return string.format("%.0f,%.0f..%.0f,%.0f vis=%s a=%.1f", b.xMin, b.yMin, b.xMax, b.yMax, tostring(o.isVisible), o.alpha)
end
local s = package.loaded.tallbg.state()
f:write("screen " .. display.screenOriginY .. ".." .. (display.contentHeight - display.screenOriginY) .. " safe " .. tostring(display.safeScreenOriginY) .. "\n")
f:write("shift up " .. tostring(SPLASH_SHIFT_UP) .. " down " .. tostring(SPLASH_SHIFT_DOWN) .. "\n")
f:write("bars " .. bb(s.bars) .. "\n")
local g = SCREEN_SPLASHSCREEN
for i = 1, g.numChildren do
  local c = g[i]
  f:write(string.format("splash %d %s kids=%s\n", i, bb(c), tostring(c.numChildren)))
  if c.numChildren and c.numChildren > 3 then
    for j = 1, c.numChildren do f:write(string.format("   layer %d %s\n", j, bb(c[j]))) end
  end
end
f:close()
