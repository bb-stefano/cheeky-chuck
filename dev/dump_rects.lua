-- Dev: append every visible leaf at least 300x400 (full-screen layers: overlays, backdrops) to Documents/rects.txt.
local f = io.open(system.pathForFile("rects.txt", system.DocumentsDirectory), "a")
local out = {}
local function walk(g)
  for i = 1, g.numChildren do
    local c = g[i]
    if c.isVisible and c.alpha > 0 then
      if c.numChildren then walk(c)
      elseif c.width >= 300 and c.height >= 400 then
        local b = c.contentBounds
        out[#out + 1] = string.format("%dx%d@%.0f,%.0f..%.0f,%.0f fill=%s", c.width, c.height, b.xMin, b.yMin, b.xMax, b.yMax, tostring(c.fill and c.fill.type))
      end
    end
  end
end
walk(display.getCurrentStage())
f:write(string.format("t=%.1f\n  %s\n", system.getTimer() / 1000, table.concat(out, "\n  ")))
f:close()
