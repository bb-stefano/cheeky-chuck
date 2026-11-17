-- Web build only: Solar2D's HTML5 runtime sends no "accelerometer" events, so this sends the ones the phone apps get
-- (orientation.lua, shaking.lua, remote.lua listen for them), built from the browser's motion sensor (webmotion.js,
-- fed by index.html). Required from main.lua by patch_game.py; does nothing on other platforms.
if system.getInfo("platform") ~= "html5" then return end

local motion = require("webmotion")
local period, last, g = 1 / 10, 0, nil  -- seconds between events; g = gravity, low-passed like Corona's (k = 0.1)

-- The game switches between 10 and 50 Hz; keep its choice instead of the runtime's no-op.
function system.setAccelerometerInterval(hz) period = 1 / math.max(1, tonumber(hz) or 10) end

Runtime:addEventListener("enterFrame", function(e)
  local now = e.time / 1000
  if now - last < period then return end
  local x, y, z = (motion.read() or ""):match("^([^,]+),([^,]+),([^,]+)$")
  x, y, z = tonumber(x), tonumber(y), tonumber(z)
  if not (x and y and z) then return end
  local dt = last > 0 and now - last or period
  last = now
  if g then g.x, g.y, g.z = g.x * 0.9 + x * 0.1, g.y * 0.9 + y * 0.1, g.z * 0.9 + z * 0.1
  else g = { x = x, y = y, z = z } end
  local ix, iy, iz = x - g.x, y - g.y, z - g.z  -- what is left once gravity is taken out: the shake
  Runtime:dispatchEvent({ name = "accelerometer", xGravity = g.x, yGravity = g.y, zGravity = g.z,
    xInstant = ix, yInstant = iy, zInstant = iz, xRaw = x, yRaw = y, zRaw = z,
    isShake = ix * ix + iy * iy + iz * iz > 1.5 * 1.5, deltaTime = dt })
end)
