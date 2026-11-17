-- reloaded.lua: "Reloaded!" under the Cheeky Chuck logo on the home screen, in Bubble Rounded (the font of the other
-- Joco Giant games and the site, bubble-rounded.ttf), tilted a few degrees and popping in for a playful touch.
-- It rides on the home screen's version tag (uipic/splash_screen_version.png): created with it, in the same group,
-- fading and going away with it, so it is never left on screen after the splash. Required from main.lua by
-- patch_game.py; the logo's tall-screen shift (SPLASH_SHIFT_UP) comes from tallbg.lua.
local FONT, SIZE, TILT = "bubble-rounded.ttf", 53, -7
local FILL, EDGE = { 1, 1, 1 }, { 0.85, 0.28, 0.06 }  -- white with Chuck's deep orange edge, like the logo's outline
local X, Y = 134, 168                                   -- 2012 layout: centred under "CHUCK", just below the logo

local function newReloaded(parent)
  local g = display.newGroup()
  parent:insert(g)
  for dx = -2, 2, 2 do       -- the edge: the word drawn 2 px around in every direction, then the fill on top
    for dy = -2, 2, 2 do
      if dx ~= 0 or dy ~= 0 then
        local t = display.newText({ parent = g, text = "Reloaded!", x = dx, y = dy, font = FONT, fontSize = SIZE })
        t:setFillColor(EDGE[1], EDGE[2], EDGE[3])
      end
    end
  end
  local t = display.newText({ parent = g, text = "Reloaded!", x = 0, y = 0, font = FONT, fontSize = SIZE })
  t:setFillColor(FILL[1], FILL[2], FILL[3])
  g.x, g.y, g.rotation = X, Y - (SPLASH_SHIFT_UP or 0), TILT
  g.xScale, g.yScale, g.alpha = 0.4, 0.4, 0
  transition.to(g, { delay = 500, time = 450, xScale = 1, yScale = 1, alpha = 1, transition = easing.outBack })
  return g
end

local newImage = display.newImage
display.newImage = function(...)
  local img = newImage(...)
  local a = { ... }
  local parent = type(a[1]) == "table" and a[1].numChildren and a[1] or nil
  local f = parent and a[2] or a[1]
  if img and parent and type(f) == "string" and f:find("splash_screen_version%.png$") then
    local word = newReloaded(parent)
    -- follow the tag: fade with it (it rests at alpha 0.5), go when it is removed
    local function follow()
      if not img.parent or not word.parent then
        Runtime:removeEventListener("enterFrame", follow)
        if word.parent then transition.cancel(word); word:removeSelf() end
        return
      end
      word.isVisible = img.isVisible
      if img.alpha < 0.5 then transition.cancel(word); word.alpha = img.alpha * 2 end
    end
    Runtime:addEventListener("enterFrame", follow)
  end
  return img
end
