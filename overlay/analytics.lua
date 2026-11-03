-- ponytail: stub for the 2012 analytics plugin; drop in a real Solar2D plugin later if wanted
local M = {}
function M.init() end
function M.logEvent(name, params) print("[analytics]", name) end
return M
