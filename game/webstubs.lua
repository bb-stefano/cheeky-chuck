-- Web build only: Solar2D's HTML5 runtime has no LuaSocket, and require("socket") stops the game at start-up
-- (black screen). These stand-ins keep the modules that load it working: remote.lua / touchsim.lua (2012 debug
-- tools, unused), screenshot.lua / sendwingamemsgview.lua (the 2012 backend, gone) get sockets that are simply
-- unavailable; photosend.lua gets a real mime.b64 (it uploads the photo as base64 through network.request).
-- Required from main.lua right after compat (patch_game.py); does nothing on the phones.
if system.getInfo("platform") ~= "html5" then return end

local function unavailable() return nil, "not available in the web version" end
local function stub(t) -- any field the code asks for that is not defined: a function that fails softly
  return setmetatable(t, { __index = function() return unavailable end })
end

local socket = stub({
  _VERSION = "LuaSocket (web stub)",
  gettime = function() return system.getTimer() / 1000 end,
  sleep = function() end,
  dns = stub({ gethostname = function() return "localhost" end }),
})
local http = stub({ request = unavailable })
socket.http = http

local ltn12 = {
  sink = stub({ table = function(t) t = t or {}; return function(chunk) if chunk then t[#t + 1] = chunk end; return 1 end, t end }),
  source = stub({ string = function(s) local done; return function() if done then return nil end; done = true; return s end end }),
  pump = stub({}),
}
stub(ltn12)

local B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function b64(s)
  if s == nil then return nil end
  local out, n = {}, #s
  for i = 1, n, 3 do
    local a, b, c = s:byte(i, i + 2)
    local v = a * 65536 + (b or 0) * 256 + (c or 0)
    local c1, c2 = math.floor(v / 262144) % 64, math.floor(v / 4096) % 64
    local c3, c4 = math.floor(v / 64) % 64, v % 64
    out[#out + 1] = B64:sub(c1 + 1, c1 + 1) .. B64:sub(c2 + 1, c2 + 1)
      .. (b and B64:sub(c3 + 1, c3 + 1) or "=") .. (c and B64:sub(c4 + 1, c4 + 1) or "=")
  end
  return table.concat(out)
end
local mime = stub({ b64 = function(s) return b64(s), "" end })

package.preload["socket"] = function() return socket end
package.preload["socket.http"] = function() return http end
package.preload["socket.core"] = function() return socket end
package.preload["ltn12"] = function() return ltn12 end
package.preload["mime"] = function() return mime end
package.preload["mime.core"] = function() return mime end
print("[webstubs] LuaSocket stand-ins installed")
