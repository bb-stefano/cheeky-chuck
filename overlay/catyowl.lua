-- catyowl.lua: scene 01 (Chuck's room): the cat asleep by the door yowls when double-tapped.
-- touchGesture.lua already routes a double tap on a "_special" layer to background:playSpecialLayerAt, which
-- plays anim_background_01_cat_special_impl (the cat leaps) without any sound; this adds the yowl to that reaction.
-- Loaded by main.lua (patch_game.py) next to tallbg.lua, before newGame creates the background.
local M = {}
local SOUND = "cat_yowl.wav" -- overlay/cat_yowl.wav: third meow of "ANMLCat_angry hungry meow collar jingles" by teffita,
                             -- freesound.org/people/teffita/sounds/828246/, CC0 1.0 (public domain, no attribution needed);
                             -- 4.5 kHz low-pass to drop the collar jingle, 22050 Hz mono 16-bit like the other effects
local DELAY = 250            -- ms after the tap: the cat starts its leap at frame 4-5 of the 12 fps animation
local handle                 -- loaded on the first yowl; audioctrl's memoryWarning frees only its own table

local function isCat(name) return name == "layer_cat_special" end

-- the "sound effects" switch of the settings page / the panel's mute button (audioctrl.mute also zeroes the master volume)
local function on(bg) return bg.configuration and bg.configuration.soundfx end

local function yowl(bg)
  if not on(bg) then return end
  handle = handle or audio.loadSound((SOUND_DIR or "") .. SOUND)
  if not handle then print("[catyowl] missing " .. SOUND); return end
  timer.performWithDelay(DELAY, function()
    if on(bg) then
      local ch = audio.play(handle, { channel = audio.findFreeChannel(2) }) -- channel 1 is the music
      print("[catyowl] yowl on channel " .. tostring(ch))
    end
  end)
end

function M.attach(bg)
  local play = bg.playSpecialLayerAt
  if type(play) ~= "function" then return end
  bg.playSpecialLayerAt = function(self, x, y, ...)
    local tl = self.mainTimeline
    local hit = tl and self.specialTimeline == nil and tl.animationName == "background_01"
      and tl:layerWithPointAtUsingComparator(x, y, isCat, TAP_BG_OBJECT_ADD_BORDER)
    local r = play(self, x, y, ...)
    if hit and self.specialTimeline then yowl(self) end -- the cat animation really started
    return r
  end
end

do
  local newBg = newBackground
  newBackground = function(...)
    local bg = newBg(...)
    if bg then M.attach(bg) end
    return bg
  end
end

return M
