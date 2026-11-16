-- analytics.lua — Bubbleye analytics client: the Lua port of crash-of-crowns/public/analytics.js (same wire
-- format, same consent rules, same server: POST {events=[...]} to https://analytics.bubbleye.com/events, which
-- ignores repeated event ids). Keeps the 2012 Flurry call shape the decompiled code uses: analytics.init(key)
-- once from main.lua, analytics.logEvent(name, params) from game.lua / discovery.lua.
-- Events wait in Documents/analytics.json and go up in batches of 50 every 30 s (and on suspend/resume); they
-- leave the queue only once the server confirms them. Anonymous stats are on until the player switches them
-- off ("share anonymous stats" in the settings page, confview.lua + html/lib/conf.js), as in the other games.
-- Nothing is uploaded from the simulator (dev runs would pollute the stats); the queue still fills, for checks.
local json = require("json")
local M = {}
local GAME, ENDPOINT = "cheekychuck", "https://analytics.bubbleye.com/events"
local MAX_QUEUE, BATCH, EVERY_MS, MAX_BACKOFF_MS, SESSION_GAP_MS = 5000, 50, 30000, 300000, 30 * 60000
local FILE, OPT_OUT = "analytics.json", true
local SIM = system.getInfo("environment") == "simulator"
local PLATFORM = SIM and "simulator" or tostring(system.getInfo("platform") or "unknown")
local VERSION = tostring(system.getInfo("appVersionString") or APP_VERSION or "")
do local code = system.getInfo("androidAppVersionCode"); if code then VERSION = VERSION .. "+" .. tostring(code) end end

local state, queue, dirty = { anon = nil, consent = nil, user = nil }, {}, false
local session, hiddenAt, sending, sentAt, failures, retryAt = nil, 0, false, 0, 0, 0
local saveTimer, started = nil, false

local function now() return os.time() * 1000 + math.floor(system.getTimer()) % 1000 end
local function uuid() -- v4; mixes the clock in so the game's own math.random seeding does not matter
  local t = {}
  for i = 1, 16 do t[i] = (math.random(0, 255) + math.floor(system.getTimer() * 7 + os.clock() * 1000 + i * 31)) % 256 end
  t[7] = 0x40 + t[7] % 16; t[9] = 0x80 + t[9] % 64
  return string.format("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", unpack(t))
end
local function object(t) return setmetatable(t or {}, { __jsontype = "object" }) end -- {} must encode as {}, not []

local function path() return system.pathForFile(FILE, system.DocumentsDirectory) end
local function save()
  dirty = false
  local p = path(); local f = p and io.open(p, "w")
  if f then f:write(json.encode({ anon = state.anon, consent = state.consent, user = state.user, queue = queue })); f:close() end
end
local function saveSoon() -- the queue can hold thousands of events: coalesce the writes
  dirty = true
  if saveTimer then return end
  saveTimer = timer.performWithDelay(2000, function() saveTimer = nil; if dirty then save() end end)
end
local function load()
  local p = path(); local f = p and io.open(p, "r")
  if f then
    local ok, t = pcall(json.decode, f:read("*a")); f:close()
    if ok and type(t) == "table" then
      state.anon, state.user = t.anon, t.user
      if t.consent == true or t.consent == false then state.consent = t.consent end
      if type(t.queue) == "table" then queue = t.queue end
    end
  end
  if not state.anon then state.anon = uuid(); dirty = true end
  if M.consent() ~= true then queue = {} end
end

-- true or false once the player chose; before that true (anonymous stats on, OPT_OUT) — nil would mean "ask first"
function M.consent() if state.consent ~= nil then return state.consent end; return OPT_OUT and true or nil end
function M.queued() return #queue end
function M.setConsent(yes)
  state.consent = yes and true or false
  if not yes then queue = {} end
  save()
  if yes then M.track("consent_given") end
end
function M.identify(userId) state.user = userId ~= nil and tostring(userId) or nil; save() end

function M.track(event, props)
  if M.consent() ~= true then return end
  queue[#queue + 1] = { id = uuid(), game = GAME, event = tostring(event), props = object(props), anon = state.anon,
                        user = state.user, session = session, ts = now(), version = VERSION, platform = PLATFORM }
  while #queue > MAX_QUEUE do table.remove(queue, 1) end
  saveSoon()
end

function M.flush()
  if sending and now() - sentAt > 60000 then sending = false end -- a request lost to a suspend never answers
  if SIM or sending or #queue == 0 or now() < retryAt then return false end
  sending, sentAt = true, now()
  local batch = {}
  for i = 1, math.min(BATCH, #queue) do batch[i] = queue[i] end
  network.request(ENDPOINT, "POST", function(e)
    sending = false
    if not e.isError and e.status and e.status >= 200 and e.status < 300 then
      local sent = {}
      for _, ev in ipairs(batch) do sent[ev.id] = true end
      local rest = {}
      for _, ev in ipairs(queue) do if not sent[ev.id] then rest[#rest + 1] = ev end end
      queue = rest; failures, retryAt = 0, 0
      saveSoon()
      if #queue > 0 then M.flush() end -- a backlog (offline for a while) drains batch after batch
    else
      failures = failures + 1
      retryAt = now() + math.min(MAX_BACKOFF_MS, 5000 * 2 ^ (failures - 1))
    end
  end, { headers = { ["Content-Type"] = "application/json" }, body = json.encode({ events = batch }), timeout = 30 })
  return true
end

-- A session runs from session_start to its last event; session_pause marks when the app went to the background,
-- and coming back after SESSION_GAP_MS starts a new session.
local function startSession()
  session = uuid()
  M.track("session_start", { tz = os.date("%z"), lang = tostring(system.getPreference("locale", "language") or "") })
end
Runtime:addEventListener("system", function(e)
  if e.type == "applicationSuspend" then
    hiddenAt = now(); M.track("session_pause")
    if dirty then save() end
    M.flush()
  elseif e.type == "applicationResume" then
    if hiddenAt > 0 and now() - hiddenAt > SESSION_GAP_MS then startSession() end
    retryAt = 0; M.flush()
  elseif e.type == "applicationExit" then
    if dirty then save() end
  end
end)

-- The 2012 Flurry events, renamed the way the other games name theirs.
local LEGACY = { ["hint button tapped"] = "hints_open", ["win game (all discovered)"] = "game_won" }
function M.logEvent(name, params)
  name = tostring(name)
  local n = name:match("^background (%d+) unlocked$")
  if n then return M.track("scene_unlocked", { scene = tonumber(n) }) end
  local d = name:match("^discovered: (.+)$")
  if d then return M.track("discovery", { name = d }) end
  M.track(LEGACY[name] or (name:gsub("%W+", "_"):lower()), params)
end

-- Game hooks: scene views (newBackground / reload), reactions (the character's stopAndPlay* methods, idle noise
-- excluded, one event per name per 2 s), photos (display.save = the camera button). Wrapped from init(), once
-- every module is loaded; tallbg.lua wraps the same globals later and keeps our wrappers underneath.
local function sceneName(bg) return (tostring(bg.configuration and bg.configuration.background or "")):gsub("^anim_background_", "") end
local SKIP = { "idle", "breath", "blink", "sleep", "loop", "revert", "stop", "start" }
local function hookGame()
  if type(newBackground) == "function" then
    local f = newBackground
    newBackground = function(...)
      local bg = f(...)
      if bg then
        M.track("scene_view", { scene = sceneName(bg) })
        local reload = bg.reload
        if type(reload) == "function" then
          bg.reload = function(self, ...) local r = reload(self, ...); M.track("scene_view", { scene = sceneName(self) }); return r end
        end
      end
      return bg
    end
  end
  if type(newAnimegg) == "function" then
    local f = newAnimegg
    newAnimegg = function(...)
      local egg = f(...)
      if type(egg) ~= "table" then return egg end
      local last = {}
      for k, v in pairs(egg) do
        local name = type(k) == "string" and k:match("^stopAndPlay(%w+)$")
        if name and type(v) == "function" then
          local lname = name:lower(); local skip = false
          for _, s in ipairs(SKIP) do if lname:find(s, 1, true) then skip = true; break end end
          if not skip then
            egg[k] = function(self, ...)
              local t = system.getTimer()
              if not last[name] or t - last[name] > 2000 then last[name] = t; M.track("reaction", { name = name }) end
              return v(self, ...)
            end
          end
        end
      end
      return egg
    end
  end
  local save_ = display.save
  display.save = function(...) M.track("photo_taken"); return save_(...) end
end

-- Settings page: the "share anonymous stats" switch. iOS pages navigate to setting:stats=true|false; Android pages
-- reload themselves with ...&stats=true|false (confview.lua's urlRequest listener hands every URL here).
function M.settingUrl(url)
  if type(url) ~= "string" then return end
  local v = url:match("^setting:stats=(%a+)") or (url:find("configuration_", 1, true) and url:match("[?&]stats=(%a+)"))
  if v == nil then return end
  local yes = v == "true"
  if yes ~= (M.consent() == true) then M.setConsent(yes) end
end

function M.init() -- the Flurry key the 2012 code passes is ignored
  if started then return end
  started = true
  load()
  hookGame()
  startSession()
  timer.performWithDelay(EVERY_MS, M.flush, 0)
  timer.performWithDelay(2000, M.flush)
  print(string.format("[analytics] %s %s %s: consent=%s queued=%d%s", GAME, VERSION, PLATFORM, tostring(M.consent()), #queue, SIM and " (simulator: no upload)" or ""))
end

return M
