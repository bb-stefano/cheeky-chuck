-- accountview.lua: the account screen (register / log in, or log out / delete). HTTP lives in account.lua.
-- show({onDone = function(signedIn) end}): draws over everything, removes itself, calls onDone once.
local account = require("account")
local loc = require("localization")
local ui = require("ui")
local M = {}
local cur -- the open view: {group=, email=, password=}

local function T(name) return loc.getLocalizedMsg(loc[name]) end -- ids are module fields, not globals

local function text(g, s, x, y, size)
  local t = display.newText(s, 0, 0, native.systemFont, size)
  t.x, t.y = x, y
  g:insert(t)
  return t
end

local function field(x, y, placeholder)
  local f = native.newTextField(x, y, 260, 32)
  f.placeholder = placeholder
  return f
end

function M.show(opts)
  opts = opts or {}
  if cur then return end -- ponytail: one view at a time; a second show() is ignored
  local v, busy = { group = display.newGroup() }, false
  cur = v
  local g = v.group
  local bg = display.newRect(0, 0, display.contentWidth, display.contentHeight)
  bg:setFillColor(0, 0, 0, 220)
  local function swallow() native.setKeyboardFocus(nil); return true end -- tap outside the fields hides the keyboard
  bg:addEventListener("touch", swallow); bg:addEventListener("tap", swallow)
  g:insert(bg)
  local cx = display.contentWidth / 2
  text(g, T("UI_ACCOUNT_TITLE"), cx, 60, 24)

  local function close(signedIn)
    if v.closed then return end
    v.closed = true; cur = nil
    if v.email then v.email:removeSelf(); v.email = nil end
    if v.password then v.password:removeSelf(); v.password = nil end
    g:removeSelf()
    if opts.onDone then opts.onDone(signedIn) end
  end
  -- run an account call; on success close, else show the server's error and stay
  local function run(fn, ...)
    if busy or v.closed then return end
    busy = true
    local had = account.token() ~= nil
    local args = { ... }
    args[#args + 1] = function(ok, d)
      busy = false
      print("[acct] " .. (ok and "ok" or ("error " .. tostring(d.error))))
      if v.closed then return end
      if not ok then native.showAlert("Cheeky Chuck", tostring(d.error), { "OK" }) end
      if ok or (had and not account.token()) then close(account.token() ~= nil) end -- token vanished (offline logout, dead token): screen is stale
    end
    fn(unpack(args))
  end
  local function button(img, label, x, onRelease)
    local b = ui.newButton({ default = HTML_DIR .. "im/" .. img, over = HTML_DIR .. "im/" .. img,
      text = label, size = 12, offset = 40, onRelease = function() onRelease(); return true end })
    b.x, b.y = x, 290
    g:insert(b)
  end

  if account.token() then
    text(g, T("UI_SIGNED_IN_AS"), cx, 120, 16)
    text(g, tostring(account.email()), cx, 145, 16)
    v.password = field(cx, 210, T("UI_PASSWORD_CONFIRM"))
    v.password.isSecure = true
    button("send.png", T("UI_LOGOUT"), 70, function() run(account.logout) end)
    button("cancel.png", T("UI_DELETE_ACCOUNT"), 160, function()
      if v.password.text == "" then native.showAlert("Cheeky Chuck", T("UI_PASSWORD_CONFIRM"), { "OK" }); return end
      run(account.delete, v.password.text)
    end)
    button("ok.png", T("UI_CLOSE"), 250, function() if not busy then close(account.token() ~= nil) end end)
  else
    v.email = field(cx, 130, T("UI_EMAIL"))
    v.email.inputType = "email"
    v.password = field(cx, 180, T("UI_PASSWORD"))
    v.password.isSecure = true
    button("ok.png", T("UI_REGISTER"), 70, function() run(account.register, v.email.text, v.password.text) end)
    button("send.png", T("UI_LOGIN"), 160, function() run(account.login, v.email.text, v.password.text) end)
    button("cancel.png", T("UI_CANCEL"), 250, function() if not busy then close(false) end end)
  end
end

if TOUCH_DEBUG then
  function M._debugFill(email, password)
    if cur and cur.email then cur.email.text = email end
    if cur and cur.password then cur.password.text = password end
  end
end

return M
