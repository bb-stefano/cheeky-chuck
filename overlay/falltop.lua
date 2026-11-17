-- falltop.lua: the 180-degree turn drop (portrait <-> upside down: the room turns with the phone and Chuck falls
-- from the old floor, now the ceiling, onto the new floor; animegg L27_2 -> L28_2 -> L29_2). anim_start_fall_front
-- hangs him from the top edge of the 320x320 world square, which on a tall screen is well below the screen's top
-- edge. This starts him at the screen edge instead and takes the extra height away during anim_fall_front's own
-- six falling frames, following their acceleration, so he lands exactly where he always did, at the same moment.
-- Hooked from patch_game.py: start() after L27_2's moveTo, fall() as the frame callback of L28_2's play.
local M = {}
local sizes = (pcall(require, "imgsizes")) and require("imgsizes") or {}
local top = display.screenOriginY                                   -- <= 0: content y of the screen's top edge
local bottom = display.contentHeight - top
local PANEL_H = (sizes["uipic/buttons_bkg.png"] or { 320, 168 })[2] -- the control panel stays at the content bottom when the world turns
local P = { 0, 0, 0.121, 0.314, 0.562, 1 }                          -- layer_head's share of the drop at FALL_FRONT frames 1..6 (y 16.2 -> 195.9)
local shift = 0

-- Extra start height for the current (already updated) orientation: in portrait the band above the world square,
-- upside down the ceiling art between the square and the panel, which now covers the physical top; none in landscape
-- (the content is 320 wide, no band) or on 3:2 screens.
local function shiftFor(oc)
  if top >= 0 or not oc then return 0 end
  if oc:isPortrait() then return top end
  if oc:isPortraitUpsideDown() then return math.max(0, bottom - PANEL_H - WORLD_HEIGHT) end
  return 0
end

function M.start(egg) -- L27_2: START_FALL_FRONT was just moved to the world's top edge
  shift = shiftFor(egg.orientationController)
  if shift ~= 0 and egg.currentTimeline then egg.currentTimeline:translate(0, shift) end
end

function M.fall(egg) -- L28_2: FALL_FRONT was just snapped to the floor; lift it by the same amount and bring it back frame by frame
  local tl, s = egg.currentTimeline, shift
  shift = 0
  if s == 0 or not tl then return nil end
  local x0, y0 = tl.x, tl.y
  tl:moveTo(x0, y0 + s)
  return function(t)
    local p = P[t.currentFrame] or 1
    t:moveTo(x0, y0 + s * (1 - p))
  end
end

print(string.format("[falltop] screen top %d: 180-degree drop starts %d px above the world", top, -top))
return M
