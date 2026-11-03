-- compat.lua — Corona Graphics 1.0 (2012) → Solar2D Graphics 2.0 shim.
-- Loaded first by main.lua. Keeps the decompiled game code untouched where possible.
-- Deliberate ceilings are marked "ponytail:".
compat = {}
if ONLINE_ENABLED == nil then ONLINE_ENABLED = false end -- dead backend; flip when a server exists again
TOUCH_DEBUG = true -- ponytail: gesture log to console while we chase input bugs; set false for release

display.setDefault("isAnchorClamped", false)

-- v1 reference-point constants → anchor pairs
local RP = {
  TopLeft = {0, 0}, TopCenter = {0.5, 0}, TopRight = {1, 0},
  CenterLeft = {0, 0.5}, Center = {0.5, 0.5}, CenterRight = {1, 0.5},
  BottomLeft = {0, 1}, BottomCenter = {0.5, 1}, BottomRight = {1, 1},
}
for k, v in pairs(RP) do display[k .. "ReferencePoint"] = v end

-- v1 colors were 0..255; v2 are 0..1. ponytail: any component > 1 means "v1 scale".
local function c255(...)
  local t, big = {...}, false
  for i = 1, select("#", ...) do if type(t[i]) == "number" and t[i] > 1 then big = true end end
  if big then for i = 1, #t do if type(t[i]) == "number" then t[i] = t[i] / 255 end end end
  return unpack(t)
end

local function patch(o)
  if not o then return o end
  local fill, stroke = o.setFillColor, o.setStrokeColor
  if fill then o.setFillColor = function(self, ...) return fill(self, c255(...)) end end
  if stroke then o.setStrokeColor = function(self, ...) return stroke(self, c255(...)) end end
  o.setTextColor = o.setFillColor
  o.setColor = (o.strokeWidth ~= nil and not fill) and o.setStrokeColor or o.setFillColor -- v1 line:setColor / text:setColor
  -- v1 setReferencePoint changed the pivot without moving the object; v2 anchors move it. Compensate.
  o.setReferencePoint = function(self, rp)
    local ax, ay = rp[1], rp[2]
    -- ponytail: ignores rotation; every call site in the game does this on fresh, unrotated objects
    self.x = self.x + (ax - self.anchorX) * self.width * self.xScale
    self.y = self.y + (ay - self.anchorY) * self.height * self.yScale
    self.anchorX, self.anchorY = ax, ay
  end
  return o
end

-- v1 positional constructors took (left, top); v2 take (centerX, centerY). Shift by half size.
local function topLeft(o) o.x = o.x + o.width / 2; o.y = o.y + o.height / 2; return o end
local function wrap(name, fix)
  local orig = display[name]
  if orig then display[name] = function(...) local o = orig(...); if o and fix then fix(o) end; return patch(o) end end
end
wrap("newImageRect", topLeft); wrap("newRect", topLeft)
-- v1 display.newImage([parent,] file [,baseDir] [,left,top] [,isFullResolution]) loads the base file at
-- native size and never picks @4x. Route through newImageRect with the base size (game/imgsizes.lua)
-- so Solar2D's dynamic image selection kicks in; unknown files fall back to plain newImage.
do
  local sizes = (pcall(require, "imgsizes")) and require("imgsizes") or {}
  local newImage, newImageRect = display.newImage, display.newImageRect -- newImageRect: already wrapped
  display.newImage = function(...)
    local a = { ... }
    local i, parent = 1, nil
    if type(a[1]) == "table" and a[1].numChildren then parent, i = a[1], 2 end
    local file = a[i]; i = i + 1
    local baseDir
    if type(a[i]) ~= "number" and type(a[i]) ~= "boolean" and a[i] ~= nil then baseDir, i = a[i], i + 1 end
    local left, top = a[i], a[i + 1]
    local sz = type(file) == "string" and sizes[(file:gsub("\\", "/"))]
    if not sz or baseDir then
      local o = newImage(...); if o then topLeft(o) end; return patch(o)
    end
    local o = parent and newImageRect(parent, file, sz[1], sz[2]) or newImageRect(file, sz[1], sz[2])
    if o and type(left) == "number" and type(top) == "number" then o.x, o.y = left + sz[1] / 2, top + sz[2] / 2 end
    return o
  end
end
wrap("newRoundedRect", topLeft); wrap("newText", topLeft)
wrap("newCircle"); wrap("newLine"); wrap("newPolygon")

-- v1 obj.xReference/yReference: pivot for rotate/scale, in local coords.
-- Images → anchors. Groups → override rotate/scale to keep the pivot's screen position fixed.
-- ponytail: after this, group.x is the origin, not the pivot (v1 reported the pivot). No call site reads it.
function compat.setRef(o, rx, ry)
  if o.numChildren == nil then
    if rx then o.anchorX = 0.5 + rx / o.width end
    if ry then o.anchorY = 0.5 + ry / o.height end
    return
  end
  local p = o._pivot or {x = 0, y = 0}; o._pivot = p
  if rx then p.x = rx end; if ry then p.y = ry end
  if o._pivotWrapped then return end
  o._pivotWrapped = true
  local rotate, scale = o.rotate, o.scale
  local function keep(self, f, ...)
    local parent = self.parent or display.getCurrentStage()
    local bx, by = parent:contentToLocal(self:localToContent(p.x, p.y))
    f(self, ...)
    local ax, ay = parent:contentToLocal(self:localToContent(p.x, p.y))
    self.x, self.y = self.x + bx - ax, self.y + by - ay
  end
  o.rotate = function(self, a) keep(self, rotate, a) end
  o.scale = function(self, sx, sy) keep(self, scale, sx, sy) end
end
-- v1 `group.xScale = -1` / `.rotation = a` flipped/rotated around the reference point; v2 uses the origin.
-- patch_game.py routes those property writes here so the pivot stays put (plain write otherwise).
function compat.setProp(o, k, v)
  local p = o._pivot
  if not p or o.numChildren == nil then o[k] = v; return end
  local parent = o.parent or display.getCurrentStage()
  local bx, by = parent:contentToLocal(o:localToContent(p.x, p.y))
  o[k] = v
  local ax, ay = parent:contentToLocal(o:localToContent(p.x, p.y))
  o.x, o.y = o.x + bx - ax, o.y + by - ay
end
function compat.setXRef(o, v) compat.setRef(o, v, nil) end
function compat.setYRef(o, v) compat.setRef(o, nil, v) end

-- v1 tweened line.width (thickness); v2 calls it strokeWidth
do
  local to = transition.to
  transition.to = function(o, p)
    if p and p.width ~= nil and o and o.strokeWidth ~= nil and o.setFillColor == nil then
      p.strokeWidth, p.width = p.width, nil
    end
    return to(o, p)
  end
end

-- display.save(group) renders the group's bounds, and v2 counts invisible children in those bounds
-- (SCREENSHOT_GROUP holds ~60 hidden animation timelines reaching far off the scene). Park hidden
-- children off-screen for the save so the photo is just the visible scene, as in v1.
do
  local save = display.save
  display.save = function(obj, ...)
    local parked = {}
    local function walk(g)
      for i = 1, g.numChildren or 0 do
        local c = g[i]
        if c.isVisible == false then c.x = c.x + 100000; parked[#parked + 1] = c
        elseif c.numChildren then walk(c) end
      end
    end
    if obj and obj.numChildren then walk(obj) end
    local r = save(obj, ...)
    for _, c in ipairs(parked) do c.x = c.x - 100000 end
    return r
  end
end

-- Offline mode: the 2012 backend (api.cheekychuck.com) is gone. Hooks stay; requests fail fast.
if not ONLINE_ENABLED then
  -- Web popups are local HTML (html/): settings and the photo-comment page still work offline; only the
  -- account pages (*accounts*.html) talked to the backend, so those become an alert.
  -- v2 treats "html/x.html?cid=.." + baseUrl as a remote URL (the query string defeats the file lookup),
  -- so resolve it to an absolute file:// URL ourselves and keep the query the page's JS reads.
  local showWebPopup = native.showWebPopup
  native.showWebPopup = function(...)
    local a = { ... }
    local i = type(a[1]) == "string" and 1 or 5 -- (url, opts) or (x, y, w, h, url, opts)
    local url, opts = a[i], a[i + 1]
    if type(url) ~= "string" then return showWebPopup(...) end
    if url:find("accounts") then
      native.showAlert("Cheeky Chuck", "Online sharing is not available in this version.", { "OK" })
      return
    end
    if type(opts) == "table" and opts.baseUrl and not url:find("^%a+://") then
      local path, query = url:match("^([^?]*)(.*)$")
      local abs = system.pathForFile(path, opts.baseUrl)
      if abs then
        a[i] = "file:///" .. abs:gsub("\\", "/") .. query
        a[i + 1] = { hasBackground = opts.hasBackground, urlRequest = opts.urlRequest }
      end
    end
    return showWebPopup(unpack(a, 1, select("#", ...)))
  end
  local ok, http = pcall(require, "socket.http")
  if ok and http then http.request = function() return nil, "offline (compat.lua ONLINE_ENABLED=false)" end end
  if network then
    network.request = function(url, method, listener)
      if type(listener) == "function" then
        timer.performWithDelay(1, function() listener({ isError = true, status = -1, response = "offline" }) end)
      end
    end
  end
end

-- Dev-only touch injector (TOUCH_DEBUG): polls a command file and replays touches without a mouse.
-- Lines: tap X Y | dtap X Y | began/moved/ended X Y [id] | wait MS | lua <code>
-- ponytail: hit-test = topmost leaf whose contentBounds contain the point, then its parents, then Runtime
if TOUCH_DEBUG and system.getInfo("environment") == "simulator" then
  local CMD = "C:/work/games/cheekychuck/touchcmd.txt"
  local function leafAt(x, y, g)
    for i = g.numChildren, 1, -1 do
      local o = g[i]
      if o.isVisible ~= false and o.alpha ~= 0 then
        if o.numChildren then
          local hit = leafAt(x, y, o); if hit then return hit end
        else
          local b = o.contentBounds
          if b and x >= b.xMin and x <= b.xMax and y >= b.yMin and y <= b.yMax then return o end
        end
      end
    end
  end
  local function send(name, phase, x, y, id)
    local ev = { name = name, phase = phase, x = x, y = y, xStart = x, yStart = y, id = id or "inj1", time = system.getTimer(), numTaps = 1 }
    local o = leafAt(x, y, display.getCurrentStage())
    while o do
      if o:dispatchEvent(ev) == true then print("[inject] " .. name .. " " .. tostring(phase) .. " handled by " .. tostring(o)); return end
      o = o.parent
    end
    Runtime:dispatchEvent(ev)
  end
  local queue, busy = {}, false
  local step
  local function step1()
    local line = table.remove(queue, 1)
    if not line then busy = false; return end
    busy = true
    local cmd, a, b, c = line:match("^(%S+)%s*(%S*)%s*(%S*)%s*(.*)$")
    local x, y = tonumber(a), tonumber(b)
    local delay = 50
    if cmd == "tap" then send("touch", "began", x, y); timer.performWithDelay(40, function() send("touch", "ended", x, y); send("tap", nil, x, y) end); delay = 120
    elseif cmd == "dtap" then table.insert(queue, 1, "tap " .. a .. " " .. b); table.insert(queue, 2, "wait 150"); table.insert(queue, 3, "tap " .. a .. " " .. b); delay = 1
    elseif cmd == "began" or cmd == "moved" or cmd == "ended" then send("touch", cmd, x, y, c ~= "" and c or nil)
    elseif cmd == "wait" then delay = x
    elseif cmd == "lua" then local f, err = loadstring(line:sub(5)); if f then print("[inject] lua ->", pcall(f)) else print("[inject] lua error", err) end
    end
    timer.performWithDelay(delay, step)
  end
  step = function() local ok, err = pcall(step1); if not ok then print("[inject] error " .. tostring(err)); busy = false end end
  timer.performWithDelay(100, function()
    local f = io.open(CMD, "r")
    if not f then return end
    local body = f:read("*a"); f:close(); os.remove(CMD)
    for line in body:gmatch("[^\r\n]+") do queue[#queue + 1] = line end
    print("[inject] queued " .. #queue)
    if not busy then step() end
  end, 0)
end

return compat
