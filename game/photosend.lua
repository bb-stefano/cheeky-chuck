-- photosend.lua: the "send this photo to a friend" screen, replacing the 2012 postmsg web page.
-- show({onSent, onCancel}): draws over the framed photo, removes itself, then calls exactly one of them.
local account = require("account")
local accountview = require("accountview")
local loc = require("localization")
local mime = require("mime")
local ui = require("ui")
local M = {}
local cur -- the open view: {comment=, email=}
local MAX_COMMENT = 90 -- server limit (characters)

local function T(name) return loc.getLocalizedMsg(loc[name]) end
local function lang() return ({ en = 1, it = 1, jp = 1, zh = 1 })[userPrefLang] and userPrefLang or "en" end

-- first n UTF-8 characters of s
local function cut(s, n)
  local i = 0
  for p in s:gmatch("()[^\128-\191]") do
    i = i + 1
    if i > n then return s:sub(1, p - 1) end
  end
  return s
end

function M.show(opts)
  if cur then return end
  local v, busy = {}, false
  cur = v
  local g = display.newGroup()
  local cx = display.contentWidth / 2
  -- invisible full-screen layer: the framed photo stays visible, game touches are swallowed
  local bg = display.newRect(g, 0, 0, display.contentWidth, display.contentHeight)
  bg.isVisible = false; bg.isHitTestable = true
  local function swallow() native.setKeyboardFocus(nil); return true end
  bg:addEventListener("touch", swallow); bg:addEventListener("tap", swallow)
  local head = display.newImage(g, HTML_DIR .. "im/photo_confirm_" .. lang() .. ".png")
  head.x, head.y = cx, 48

  v.comment = native.newTextBox(cx, 130, 260, 70)
  v.comment.isEditable = true
  v.comment.placeholder = T("UI_COMMENT")
  v.comment:addEventListener("userInput", function(e)
    if e.phase == "editing" and e.target.text ~= cut(e.target.text, MAX_COMMENT) then
      e.target.text = cut(e.target.text, MAX_COMMENT)
    end
  end)
  v.email = native.newTextField(cx, 190, 260, 32)
  v.email.inputType = "email"
  v.email.placeholder = T("UI_FRIEND_EMAIL")

  local function fields(on) v.comment.isVisible = on; v.email.isVisible = on end -- native views draw above everything
  local function close(cb)
    if v.closed then return end
    v.closed = true; cur = nil
    native.setKeyboardFocus(nil)
    v.comment:removeSelf(); v.email:removeSelf(); v.comment, v.email = nil, nil
    g:removeSelf()
    cb()
  end

  local send
  local function signIn() -- fields hidden while the account view is up; a successful sign-in sends straight away
    fields(false)
    accountview.show({ onDone = function(ok)
      if v.closed then return end
      fields(true)
      if ok then send() end
    end })
  end
  function send()
    if busy or v.closed then return end
    if not account.token() then signIn(); return end
    local path = system.pathForFile("screenshot.jpg", system.DocumentsDirectory)
    local f = path and io.open(path, "rb")
    local bytes = f and f:read("*a")
    if f then f:close() end
    if not bytes or bytes == "" then native.showAlert("Cheeky Chuck", T("UI_ERROR"), { "OK" }); return end -- ponytail: not expected after takeScreenshot
    busy = true
    native.setKeyboardFocus(nil)
    fields(false)
    -- the game ships only the English uploading picture (its own lookup table maps every language to it)
    local up = display.newImage(g, UI_PIC_DIR .. "screenshot_uploading_en.png")
    up.x, up.y = WORLD_WIDTH / 2, WORLD_HEIGHT / 2 -- where the game put it (over the hidden fields)
    account.request("POST", "/api/photo",
      { image = (mime.b64(bytes)), comment = v.comment.text, to = v.email.text, lang = userPrefLang },
      function(ok, d)
        busy = false
        if v.closed then return end
        up:removeSelf()
        if ok then
          print("[photosend] sent id=" .. tostring(d.id))
          require("analytics").track("photo_sent", { comment = (v.comment.text or "") ~= "" })
          close(opts.onSent)
          return
        end
        print("[photosend] error " .. tostring(d.error))
        if not account.token() then signIn(); return end -- 401: account.lua dropped the dead token
        fields(true)
        native.showAlert("Cheeky Chuck", tostring(d.error), { "OK" })
      end)
  end

  local function button(img, x, onRelease)
    local b = ui.newButton({ default = HTML_DIR .. "im/" .. img, over = HTML_DIR .. "im/" .. img,
      onRelease = function() onRelease(); return true end })
    b.x, b.y = x, 440 -- below the framed photo (y 200-400)
    g:insert(b)
  end
  button("cancel.png", cx - 60, function() if not busy then close(opts.onCancel) end end)
  button("send.png", cx + 60, send)
end

if TOUCH_DEBUG then
  function M._debugFill(comment, email)
    if cur and cur.comment then cur.comment.text = comment end
    if cur and cur.email then cur.email.text = email end
  end
end

return M
