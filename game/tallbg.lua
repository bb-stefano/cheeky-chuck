-- tallbg.lua — tall scene backdrops for modern (taller than 3:2) screens.
-- The 2012 game is a 320x320 world over 320x480 letterboxed content; taller phones got black bars.
-- art/bg_tall/ holds 1024x1536 scene masters (the original 322x322 scene in the middle band, ceiling/sky
-- above, floor below; drawn for the tall layout) that art/bg_tall/extend.py turns into animpic/background_<scene>_tall.jpg
-- (322x644 content px, centred on the scene square, enough for 2.5:1 screens). This module
--   * draws that image under the world (stage bottom) and keeps the timeline's own 322x322 static square
--     at alpha 0, so special layers keep working and photos (display.save) still capture the original square;
--   * pins the control panel to the screen bottom and the happiness bar to the (safe) screen top;
--   * follows background rotation (landscape), reload (season / unlocked scenes) and destroy;
--   * for the camera-tilt views uses background_<scene>_1_tall / _2_tall when those files exist
--     (ponytail: until they are redrawn, the 322x322 tilt frames play inside the scene square over the tall art);
--   * swaps the home screen's 320x480 background for uipic/splash_screen_background_tall.png (320x720, same
--     art with sky above and hills below, art/bg_tall/make_jobs.py splash) when that file exists;
--   * pins a scene's animpic/<scene>_tall_fence.png (Halloween's original picket fence) just above the button panel;
--   * scales the rain animations' black sheet up to cover the whole screen;
--   * keeps black bars only behind a splash screen without tall art and when a scene has no tall art.
-- Loaded by main.lua (patch_game.py) once the SCREEN_* groups exist and before newGame.
local M = {}
local sizes = (pcall(require, "imgsizes")) and require("imgsizes") or {}
local top = display.screenOriginY                 -- <= 0: content y of the screen's top edge
local bottom = display.contentHeight - top        -- content y of the screen's bottom edge
local safeTop = display.safeScreenOriginY or top  -- below the camera cutout, if any
local TILT_FADE = 420                             -- ms: the 5 tilt frames at 12 fps

-- UI pinned to the screen edges (the panel art is bottom-aligned to content 480; the bar sits at world y 10)
SCREEN_CONTROL_PANEL.y = bottom - display.contentHeight
SCREEN_HAPPINESS_BAR.y = safeTop

local group = display.newGroup()                  -- backdrop, rotates with the world around CENTER
group.x, group.y = CENTER.x, CENTER.y
display.getCurrentStage():insert(1, group)

local bars = display.newGroup()                   -- the old letterbox, for the splash / scenes without tall art
if top < 0 then
  for _, y in ipairs({ top, display.contentHeight }) do
    local r = display.newRect(bars, 0, y, display.contentWidth, -top); r:setFillColor(0, 0, 0)
  end
end
bars.isVisible = false

local scene, main, tilt, fence, hidden = nil, nil, nil, nil, {}
local PANEL_H = (sizes["uipic/buttons_bkg.png"] or { 320, 168 })[2]  -- the control panel art, bottom-aligned to the screen
local PANEL_SOLID = 10                                                -- its first fully opaque row

-- Loads animpic/<name>_tall.jpg (opaque painted scenes: JPG is a sixth of the PNG) into the backdrop group, nil when the file is missing. Existence is tested by
-- loading: system.pathForFile is not reliable for packaged images on Android (it returned nil there, which
-- left the old black bars on and hid the button panel).
local function newImage(name)
  local f = "animpic/" .. name .. "_tall.jpg"
  local sz = sizes[f] or { 322, 644 }
  local img = display.newImageRect(group, f, sz[1], sz[2]) -- compat wrapper shifts x/y, so place it after
  if not img then return nil end
  img.x, img.y = 0, 0
  return img
end

local known = {}
local function file(name) -- true when animpic/<name>_tall.jpg exists (cached)
  if known[name] == nil then
    local img = newImage(name)
    known[name] = img ~= nil
    if img then img:removeSelf() end
  end
  return known[name]
end

-- A scene's bottom edge pinned just above the button panel (animpic/<scene>_tall_fence.png: Halloween's original
-- picket fence, art/bg_tall/fence_03.py), so it sits at the same place on every screen height and nothing is
-- drawn "under" it: the tall art shows plain lawn above, the panel covers whatever is below.
local function newFence(name)
  local f = "animpic/" .. name .. "_tall_fence.png"
  local sz = sizes[f]
  if not sz then return nil end
  local img = display.newImageRect(group, f, sz[1], sz[2])
  if not img then return nil end
  img.x, img.y = 0, (bottom - PANEL_H + PANEL_SOLID) - CENTER.y - sz[2] / 2  -- group coords: content minus CENTER
  return img
end

function M.clear()
  if tilt then tilt:removeSelf(); tilt = nil end
  if fence then fence:removeSelf(); fence = nil end
  if main then main:removeSelf(); main = nil end
  scene = nil
end

-- anim = "anim_background_01" (configuration.background)
function M.setScene(anim)
  local name = (anim or ""):gsub("^anim_", "")
  if name == scene then return end
  M.clear()
  scene = name
  main = newImage(name)
  fence = main and newFence(name) or nil
  print("[tallbg] scene " .. name .. (main and ": tall art loaded" or ": no tall art, keeping the letterbox") .. (fence and ", fence strip" or ""))
end

-- view: "_1" (sky), "_2" (ground) or nil (back to the main view)
function M.tilt(view)
  if tilt then local t = tilt; tilt = nil; transition.to(t, { alpha = 0, time = TILT_FADE, onComplete = function() t:removeSelf() end }) end
  if fence then transition.cancel(fence); transition.to(fence, { alpha = view and 0 or 1, time = TILT_FADE }) end
  if not (view and scene and main) then return end
  tilt = newImage(scene .. view)
  if tilt then tilt.alpha = 0; transition.to(tilt, { alpha = 1, time = TILT_FADE }) end
end

-- The timelines' 322x322 static squares: hidden (alpha 0, so the engine's isVisible toggling is untouched) wherever
-- tall art covers that view; photos show them again for the capture (display.save below).
-- Only the square's own frame images go, each one as it is created (display.newImage below): anim.lua gives every
-- layer its TIMELINE's group, so hiding the layer's group hid the whole scene, e.g. scene 01's cat and light
-- switch; and hiding frame images a frame late made the sky/ground tilts flicker (2026-11-09).
local squareImgs = setmetatable({}, { __mode = "k" })
local function squareAlpha(a)
  for img in pairs(squareImgs) do
    if img.parent and img.alpha ~= a then img.alpha = a end
  end
end
local function isSquare(f) -- animpic/<scene><view>_static_background-N.png with tall art for <scene><view>
  local name = type(f) == "string" and f:match("([%w_]+)_static_background%-%d+%.png$")
  return name ~= nil and file(name)
end
local function hideSquares() squareAlpha(0) end

local function wrap(bg, name, after)
  local f = bg[name]
  if type(f) ~= "function" then return end
  bg[name] = function(self, ...)
    local r = f(self, ...)
    after(self, ...)
    return r
  end
end

function M.attach(bg)
  M.setScene(bg.configuration and bg.configuration.background)
  hideSquares(bg)
  wrap(bg, "reload", function(self)
    M.tilt(nil); M.setScene(self.configuration and self.configuration.background); hideSquares(self)
    group.rotation = self.mainTimeline and self.mainTimeline:getRotation() or 0
  end)
  wrap(bg, "rotate", function(self) group.rotation = self.mainTimeline and self.mainTimeline:getRotation() or 0 end)
  wrap(bg, "translate", function(self, dx, dy) group.x, group.y = group.x + (dx or 0), group.y + (dy or 0) end)
  wrap(bg, "destroy", function() M.clear(); hidden = {} end)
  wrap(bg, "stopAndPlaySky", function() M.tilt("_1") end)
  wrap(bg, "stopAndPlayGround", function() M.tilt("_2") end)
  wrap(bg, "stopAndPlayRevertSky", function() M.tilt(nil) end)
  wrap(bg, "stopAndPlayRevertGround", function() M.tilt(nil) end)
end

do
  local newBg = newBackground
  newBackground = function(...)
    local bg = newBg(...)
    if bg then M.attach(bg); TALLBG_BG = bg end -- TALLBG_BG: dev, for the simulator's `lua` commands
    return bg
  end
end

-- Rain: the umbrella animations darken the scene with animpic/rain_ending_front_black-1.png, a flat translucent
-- 362x482 black sheet (the 2012 screen plus a margin) inside the character timeline. On a tall screen scale it up
-- around its centre so it covers the whole screen in any orientation. anim.lua anchors it top-left and sets x/y
-- itself right after creating it, so the anchor/scale go on a frame later; the anchor keeps the old centre.
local RAIN_SCALE = 3
local rainSheets = setmetatable({}, { __mode = "k" })
local function rainSheet(img)
  rainSheets[img] = true
  timer.performWithDelay(1, function()
    if not rainSheets[img] or not img.parent then return end
    local k = (RAIN_SCALE - 1) / (2 * RAIN_SCALE)
    img.anchorX, img.anchorY = k, k
    img.xScale, img.yScale = RAIN_SCALE, RAIN_SCALE
  end)
end

-- Lights off (animegg.lua): the room goes dark under a black WORLD_WIDTH x WORLD_HEIGHT rect at world 0,0 in
-- SCREEN_BACKGROUND, the 2012 square only. patch_game.py routes its creation here: on a tall screen it is scaled up
-- around the square's centre so it covers the whole screen in any orientation (photos put it back, below).
function TALLBG_DARK_RECT(x, y, w, h)
  local r = display.newRect(x, y, w, h)
  if r and top < 0 then
    rainSheets[r] = true
    r.anchorX, r.anchorY = 0.5, 0.5
    r.x, r.y = x + w / 2, y + h / 2
    r.xScale, r.yScale = RAIN_SCALE * 2, RAIN_SCALE * 2
  end
  return r
end

-- Photos: display.save(SCREENSHOT_GROUP) renders the square scene as in 2012, so show the squares for the capture
-- and put a scaled rain sheet back to its 2012 size for the moment.
do
  local save = display.save
  display.save = function(...)
    squareAlpha(1)
    local scaled = {}
    for img in pairs(rainSheets) do
      if img.parent and img.xScale ~= 1 then
        scaled[#scaled + 1] = { img, img.anchorX, img.anchorY, img.xScale }
        if img.anchorX == 0.5 then img.xScale, img.yScale = 1, 1  -- the dark rect: centre-anchored, just unscale
        else img.anchorX, img.anchorY, img.xScale, img.yScale = 0, 0, 1, 1 end
      end
    end
    local r = save(...)
    squareAlpha(0)
    for _, t in ipairs(scaled) do t[1].anchorX, t[1].anchorY, t[1].xScale, t[1].yScale = t[2], t[3], t[4], t[4] end
    return r
  end
end

-- Home screen: main.lua draws uipic/splash_screen_background.png (320x480) into SCREEN_SPLASHSCREEN through
-- display.newImage. On a tall screen draw the 320x720 version instead, centred on those 480 rows (the screen
-- is centred on content y 240 too) and scaled up to cover anything taller than 2.25:1; the logo, character and
-- buttons stay where they are.
local splashTall = false
do
  local newImage = display.newImage -- compat.lua's v1 wrapper
  display.newImage = function(...)
    local a = { ... }
    local parent = type(a[1]) == "table" and a[1].numChildren and a[1] or nil
    local f = parent and a[2] or a[1]
    if top < 0 and type(f) == "string" and f:find("splash_screen_background%.png$") then
      local tall = "uipic/splash_screen_background_tall.png"
      local sz = sizes[tall] or { 320, 720 }
      local img = parent and display.newImageRect(parent, tall, sz[1], sz[2]) or display.newImageRect(tall, sz[1], sz[2])
      if img then
        local s = math.max(1, (bottom - top) / sz[2])
        img.xScale, img.yScale = s, s
        img.x, img.y = display.contentWidth / 2, display.contentHeight / 2
        splashTall = true
        print("[tallbg] splash: tall art loaded")
        return img
      end
      print("[tallbg] splash: no tall art, keeping the letterbox")
    end
    local img = newImage(...)
    if img and top < 0 and type(f) == "string" and f:find("rain_[%w_]+_black%-%d+%.png$") then rainSheet(img) end
    if img and top < 0 and isSquare(f) then img.alpha = 0; squareImgs[img] = true end
    return img
  end
end

-- Splash layout on tall screens: the logo, its shine and the three black silhouette acts (the walker, the
-- rope swinger, the bungee drop) move up under the safe top; the big face, the finger, Chuck, his shadow and
-- the light rays move down to the screen bottom, as do the buttons and the version tag (main.lua reads
-- SPLASH_SHIFT_DOWN, patch_game.py). Done through animdatapatch: anim.lua replaces a layer's frame offsets by
-- name, and the inner *_sprite layers of the splash timelines all sit at 0,0 inside their animated parents.
SPLASH_SHIFT_UP = math.max(0, math.min(120, 5 - safeTop))          -- logo art top (y 11) ends 6 px under the safe top
SPLASH_SHIFT_DOWN = math.max(0, math.min(120, bottom - 24 - 481))  -- Chuck's feet (y 481) end 24 px above the bottom
if SPLASH_SHIFT_UP > 0 or SPLASH_SHIFT_DOWN > 0 then
  local adp = require("animdatapatch").animDataPatch
  for _, lang in ipairs({ "en", "jp", "zh" }) do
    for _, page in ipairs({ "splash_page_" .. lang, "splash_page_transition_" .. lang }) do
      for _, n in ipairs({ "logo", "high_light", "act1", "act2" }) do adp[page .. "_" .. n .. "_sprite"] = { x = 0, y = -SPLASH_SHIFT_UP } end
      -- The bungee drop (act3) hangs from a rope that starts above the 2012 screen's top edge (act at y -10), so it
      -- keeps that place relative to the real screen top, not the safe top: the rope comes from the very edge.
      adp[page .. "_act3_sprite"] = { x = 0, y = top }
      for _, n in ipairs({ "hand_l", "hand_r", "charactor", "shadow" }) do adp[page .. "_" .. n .. "_sprite"] = { x = 0, y = SPLASH_SHIFT_DOWN } end
    end
  end
  print(string.format("[tallbg] splash layout: top items up %d, bottom items down %d", SPLASH_SHIFT_UP, SPLASH_SHIFT_DOWN))
end

-- Letterbox only behind a splash without tall art, or when the scene has no tall art.
-- True when the splash group still shows something: a visible, non-empty leaf object anywhere inside it. The
-- group keeps emptied timeline groups around after the splash is dismissed (their frames are hidden), so
-- checking the direct children's visibility is not enough (that kept the bars on and hid the button panel).
local function hasVisibleLeaf(g)
  for i = 1, g.numChildren do
    local c = g[i]
    if c.isVisible and c.alpha > 0 then
      if c.numChildren then
        if hasVisibleLeaf(c) then return true end
      elseif c.width > 0 and c.height > 0 then
        return true
      end
    end
  end
  return false
end
local function splashVisible()
  local g = SCREEN_SPLASHSCREEN
  if not g or not g.isVisible or g.alpha == 0 then return false end
  return hasVisibleLeaf(g)
end
local hooked = false
Runtime:addEventListener("enterFrame", function()
  if not hooked and type(newAnimegg) == "function" then -- dev: ANIMEGG = the character (simulator `lua` commands)
    hooked = true
    local f = newAnimegg
    newAnimegg = function(...) local e = f(...); ANIMEGG = e; return e end
  end
  local sv = splashVisible()
  local v = (top < 0) and ((sv and not splashTall) or (not sv and not main))
  if v ~= bars.isVisible then
    bars.isVisible = v
    if v then bars:toFront() end
  end
end)

function M.state() return { group = group, main = main, tilt = tilt, fence = fence, bars = bars, hidden = hidden, scene = scene } end -- dev: layout checks

print(string.format("[tallbg] screen y %d..%d (safe top %d), %s", top, bottom, safeTop, top < 0 and "tall layout" or "3:2 layout"))
return M
