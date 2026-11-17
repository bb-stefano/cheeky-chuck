-- Dev: append the visible silhouette sprites of the splash timeline (name + bounds) to Documents/acts.txt.
local f = io.open(system.pathForFile("acts.txt", system.DocumentsDirectory), "a")
local function walk(g, out)
  for i = 1, g.numChildren do
    local c = g[i]
    if c.isVisible and c.alpha > 0 then
      if c.numChildren then walk(c, out)
      elseif c.width > 8 and c.width < 300 and c.height < 300 then
        local b = c.contentBounds
        out[#out + 1] = string.format("%dx%d@%.0f,%.0f", c.width, c.height, b.xMin, b.yMin)
      end
    end
  end
end
local out = {}
walk(SCREEN_SPLASHSCREEN, out)
f:write(string.format("t=%.1f %s\n", system.getTimer() / 1000, table.concat(out, " ")))
f:close()
