-- Dev: dump the tall-screen layout (tallbg.lua state, UI groups, stage z-order) to Documents/dbg.txt.
-- Inject from the simulator: echo 'lua dofile("<repo>/dev/dump_layout.lua")' > touchcmd.txt
local f = io.open(system.pathForFile("dbg.txt", system.DocumentsDirectory), "w")
local function bb(o)
  if not o then return "nil" end
  local b = o.contentBounds
  return string.format("%.0f,%.0f..%.0f,%.0f vis=%s a=%.1f", b.xMin, b.yMin, b.xMax, b.yMax, tostring(o.isVisible), o.alpha)
end
local s = package.loaded.tallbg.state()
f:write("scene " .. tostring(s.scene) .. "\n")
f:write("group " .. bb(s.group) .. " rot=" .. tostring(s.group.rotation) .. "\n")
f:write("main " .. bb(s.main) .. "\n")
f:write("tilt " .. bb(s.tilt) .. "\n")
f:write("bars " .. bb(s.bars) .. "\n")
f:write("hidden " .. #s.hidden .. "\n")
for i, g in ipairs(s.hidden) do f:write("  hidden " .. i .. " " .. bb(g) .. "\n") end
f:write("panel " .. bb(SCREEN_CONTROL_PANEL) .. " y=" .. SCREEN_CONTROL_PANEL.y .. "\n")
f:write("happiness " .. bb(SCREEN_HAPPINESS_BAR) .. " y=" .. SCREEN_HAPPINESS_BAR.y .. "\n")
f:write("shot " .. bb(SCREENSHOT_GROUP) .. "\n")
f:write("bg " .. bb(SCREEN_BACKGROUND) .. "\n")
f:write("splash " .. bb(SCREEN_SPLASHSCREEN) .. " kids=" .. SCREEN_SPLASHSCREEN.numChildren .. "\n")
local st = display.getCurrentStage()
for i = 1, st.numChildren do
  local c = st[i]
  local tag = c == s.group and "BACKDROP" or c == s.bars and "BARS" or c == SCREENSHOT_GROUP and "SHOT"
    or c == SCREEN_CONTROL_PANEL and "PANEL" or c == SCREEN_SPLASHSCREEN and "SPLASH" or c == SCREEN_HAPPINESS_BAR and "HAPPY" or ""
  f:write(string.format("stage %d %s %s kids=%s\n", i, tag, bb(c), tostring(c.numChildren)))
end
f:close()
