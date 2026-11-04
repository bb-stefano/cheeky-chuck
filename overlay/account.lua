-- account.lua: player account client (HTTP + persistence only; the screen is accountview.lua).
-- State {token=, email=} lives in account.json in the Documents directory.
local json = require("json")
local M = {}
local FILE = "account.json"
local state

local function load()
  if state then return state end
  state = {}
  local path = system.pathForFile(FILE, system.DocumentsDirectory)
  local f = path and io.open(path, "r")
  if f then
    local ok, t = pcall(json.decode, f:read("*a")); f:close()
    if ok and type(t) == "table" then state = t end
  end
  return state
end

local function save(token, email)
  state = { token = token, email = email }
  local path = system.pathForFile(FILE, system.DocumentsDirectory)
  if not token then os.remove(path); return end
  local f = io.open(path, "w")
  if f then f:write(json.encode(state)); f:close() end
end

function M.token() return load().token end
function M.email() return load().email end

-- Generic JSON request against API_BASE; cb(ok, data) with data = decoded JSON or {error=...}.
function M.request(method, path, body, cb)
  local headers = { ["Content-Type"] = "application/json" }
  local token = M.token()
  if token then headers["X-Account-Token"] = token end
  network.request(API_BASE .. path, method, function(e)
    local data = (not e.isError) and type(e.response) == "string" and json.decode(e.response) or nil
    if type(data) ~= "table" then data = {} end
    if e.isError or not e.status or e.status < 0 then
      local loc = require("localization"); data.error = loc.getLocalizedMsg(loc.ERR_NETWORK)
    elseif e.status >= 400 and not data.error then
      data.error = "HTTP " .. e.status
    end
    if e.status == 401 and data.signedOut then save(nil, nil) end -- dead token
    if cb then cb(e.status ~= nil and e.status >= 200 and e.status < 300 and not data.error, data) end
  end, { headers = headers, body = body and json.encode(body) or nil, timeout = 60 }) -- the server's SMTP send gives up well before this
end

function M.call(action, fields, cb)
  local body = { action = action }
  for k, v in pairs(fields or {}) do body[k] = v end
  M.request("POST", "/api/account", body, cb)
end

local function signIn(action, email, pw, cb)
  -- ponytail: progress is not synced yet; the server just stores what we send
  M.call(action, { email = email, password = pw, progress = {} }, function(ok, d)
    if ok and d.token then save(d.token, d.email or email) end
    if cb then cb(ok, d) end
  end)
end
function M.register(email, pw, cb) signIn("register", email, pw, cb) end
function M.login(email, pw, cb) signIn("login", email, pw, cb) end

function M.logout(cb)
  M.call("logout", nil, function(ok, d) save(nil, nil); if cb then cb(ok, d) end end) -- signed out locally either way
end

function M.delete(pw, cb)
  M.call("delete", { password = pw }, function(ok, d)
    if ok then save(nil, nil) end
    if cb then cb(ok, d) end
  end)
end

return M
