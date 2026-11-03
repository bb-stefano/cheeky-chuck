local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "localization"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.getLocalizedMsg
L2_1 = L0_1.getLocalizedMsgWithPlaceholders
L3_1 = require
L4_1 = "snsconfirmview"
L3_1 = L3_1(L4_1)
L4_1 = {}
L4_1.en = "photo_confirm_en.png"
L4_1.it = "photo_confirm_it.png"
L4_1.jp = "photo_confirm_jp.png"
L4_1.zh = "photo_confirm_zh.png"
L5_1 = {}
L5_1.en = "screenshot_uploading_en.png"
L5_1.it = "screenshot_uploading_en.png"
L5_1.jp = "screenshot_uploading_en.png"
L5_1.zh = "screenshot_uploading_en.png"
L6_1 = {}
L6_1.en = "photo_uploaded_en.png"
L6_1.it = "photo_uploaded_it.png"
L6_1.jp = "photo_uploaded_jp.png"
L6_1.zh = "photo_uploaded_zh.png"
L7_1 = {}
L7_1.en = "postmsg_en.html"
L7_1.it = "postmsg_it.html"
L7_1.jp = "postmsg_jp.html"
L7_1.zh = "postmsg_zh.html"

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "+"
  L4_2 = " "
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "%%(%x%x)"
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = string
    L1_3 = L1_3.char
    L2_3 = tonumber
    L3_3 = A0_3
    L4_3 = 16
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
    return L1_3(L2_3, L3_3, L4_3)
  end
  
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "\r\n"
  L4_2 = "\n"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  return A0_2
end

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "\n"
    L4_2 = "\r\n"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "([^%w ])"
    
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = string
      L1_3 = L1_3.format
      L2_3 = "%%%02X"
      L3_3 = string
      L3_3 = L3_3.byte
      L4_3 = A0_3
      L3_3, L4_3 = L3_3(L4_3)
      return L1_3(L2_3, L3_3, L4_3)
    end
    
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = " "
    L4_2 = "%%20"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
  end
  return A0_2
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.sub
  L4_2 = A0_2
  L3_2 = A0_2.find
  L5_2 = "="
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2.len
  L4_2, L5_2 = L4_2(L5_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end

function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = {}
  L4_2.screenshotController = A0_2
  L4_2.discoveryAccountant = A1_2
  L4_2.gameRunTime = A2_2
  L4_2.screenshotImg = nil
  L4_2.photoFrameImg = nil
  L4_2.alphaLayer = nil
  L4_2.isUploadEnabled = false
  L4_2.uploadingImg = nil
  L4_2.message = nil
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[screenshot view] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3.alphaLayer
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L4_2
    L0_3.alphaLayer = nil
    L0_3 = A3_2
    L0_3()
  end
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3.screenshotImg
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L4_2
    L0_3 = L0_3.photoFrameImg
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L4_2
    L0_3.screenshotImg = nil
    L0_3 = L4_2
    L0_3.photoFrameImg = nil
    if L4_2.offlineOkBtn then L4_2.offlineOkBtn:removeSelf(); L4_2.offlineOkBtn = nil end
  end
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    
    function L2_3()
      local L0_4, L1_4
      L0_4 = L0_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = L1_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = L4_2
      L0_4 = L0_4.alphaLayer
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = nil
      L0_3 = L0_4
      L0_4 = nil
      L1_3 = L0_4
      L0_4 = L4_2
      L0_4.alphaLayer = nil
      L0_4 = A3_2
      L0_4()
    end
    
    L3_3 = L6_1
    L4_3 = userPrefLang
    L3_3 = L3_3[L4_3]
    if not L3_3 then
      L4_3 = L6_1
      L5_3 = DEFAULT_LOCALIZATION_LANG
      L3_3 = L4_3[L5_3]
    end
    L4_3 = display
    L4_3 = L4_3.newImage
    L5_3 = UI_PIC_DIR
    L6_3 = L3_3
    L5_3 = L5_3 .. L6_3
    L4_3 = L4_3(L5_3)
    L0_3 = L4_3
    L4_3 = WORLD_WIDTH
    L4_3 = L4_3 / 2
    L0_3.x = L4_3
    L4_3 = WORLD_HEIGHT
    L4_3 = L4_3 / 2
    L0_3.y = L4_3
    L4_3 = ui
    L4_3 = L4_3.newButton
    L5_3 = {}
    L6_3 = HTML_DIR
    L7_3 = "im/ok.png"
    L6_3 = L6_3 .. L7_3
    L5_3.default = L6_3
    L6_3 = HTML_DIR
    L7_3 = "im/ok.png"
    L6_3 = L6_3 .. L7_3
    L5_3.over = L6_3
    L5_3.onRelease = L2_3
    L4_3 = L4_3(L5_3)
    L1_3 = L4_3
    L4_3 = WORLD_WIDTH
    L4_3 = L4_3 / 2
    L1_3.x = L4_3
    L4_3 = WORLD_HEIGHT
    L4_3 = L4_3 - 50
    L1_3.y = L4_3
  end
  
  L9_2 = nil
  L10_2 = nil
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.action
    if L1_3 == "clicked" then
      L1_3 = A0_3.index
      if L1_3 == 1 then
        L1_3 = L4_2
        L1_3.isUploadEnabled = false
        L1_3 = Runtime
        L2_3 = L1_3
        L1_3 = L1_3.addEventListener
        L3_3 = "enterFrame"
        L4_3 = L4_2
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = L6_2
        L1_3()
      end
    end
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L4_2
    L0_3 = L0_3.screenshotController
    L1_3 = L0_3
    L0_3 = L0_3.upload
    L2_3 = L4_2
    L2_3 = L2_3.message
    L0_3, L1_3 = L0_3(L1_3, L2_3)
    L2_3 = L4_2
    L2_3 = L2_3.uploadingImg
    if L2_3 then
      L2_3 = L4_2
      L2_3 = L2_3.uploadingImg
      L3_3 = L2_3
      L2_3 = L2_3.removeSelf
      L2_3(L3_3)
      L2_3 = L4_2
      L2_3.uploadingImg = nil
    end
    if L0_3 then
      L2_3 = L8_2
      L2_3()
    else
      L2_3 = native
      L2_3 = L2_3.showAlert
      L3_3 = L1_1
      L4_3 = L0_1
      L4_3 = L4_3.UI_ERROR
      L3_3 = L3_3(L4_3)
      L4_3 = L1_3
      L5_3 = {}
      L6_3 = L1_1
      L7_3 = L0_1
      L7_3 = L7_3.UI_RETRY
      L6_3 = L6_3(L7_3)
      L7_3 = L1_1
      L8_3 = L0_1
      L8_3 = L8_3.UI_CANCEL
      L7_3, L8_3 = L7_3(L8_3)
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L6_3 = L10_2
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
  end
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.isUploadEnabled
    if not L1_3 then
      A0_3.isUploadEnabled = true
      L1_3 = L5_1
      L2_3 = userPrefLang
      L1_3 = L1_3[L2_3]
      if not L1_3 then
        L2_3 = L5_1
        L3_3 = DEFAULT_LOCALIZATION_LANG
        L1_3 = L2_3[L3_3]
      end
      L2_3 = display
      L2_3 = L2_3.newImage
      L3_3 = UI_PIC_DIR
      L4_3 = L1_3
      L3_3 = L3_3 .. L4_3
      L2_3 = L2_3(L3_3)
      A0_3.uploadingImg = L2_3
      L2_3 = A0_3.uploadingImg
      L3_3 = WORLD_WIDTH
      L3_3 = L3_3 / 2
      L2_3.x = L3_3
      L2_3 = A0_3.uploadingImg
      L3_3 = WORLD_HEIGHT
      L3_3 = L3_3 / 2
      L2_3.y = L3_3
    else
      L1_3 = Runtime
      L2_3 = L1_3
      L1_3 = L1_3.removeEventListener
      L3_3 = "enterFrame"
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L1_3()
    end
  end
  
  L4_2.enterFrame = L11_2
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = A0_3
      L0_4.isUploadEnabled = false
      L0_4 = Runtime
      L1_4 = L0_4
      L0_4 = L0_4.addEventListener
      L2_4 = "enterFrame"
      L3_4 = A0_3
      L0_4(L1_4, L2_4, L3_4)
    end
    
    L2_3 = L3_1
    L2_3 = L2_3.newSnsConfirmView
    L2_3 = L2_3()
    L4_3 = L2_3
    L3_3 = L2_3.show
    L5_3 = L1_3
    L6_3 = L6_2
    L3_3(L4_3, L5_3, L6_3)
  end
  
  L4_2.showAccounts = L11_2
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = true
    L2_3 = string
    L2_3 = L2_3.find
    L3_3 = A0_3.url
    L4_3 = "postmsg:submit"
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 == 1 then
      L2_3 = L4_2
      L3_3 = L8_1
      L4_3 = L10_1
      L5_3 = A0_3.url
      L4_3, L5_3 = L4_3(L5_3)
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.message = L3_3
      L2_3 = L5_2
      L3_3 = string
      L3_3 = L3_3.format
      L4_3 = "message to post = '%s'"
      L5_3 = L4_2
      L5_3 = L5_3.message
      L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3)
      L2_3(L3_3, L4_3, L5_3)
      L1_3 = false
      L2_3 = L7_2
      L2_3()
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = DISMISS_NATIVE_UI_DELAY
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L4_2
        L1_4 = L0_4
        L0_4 = L0_4.showAccounts
        L0_4(L1_4)
      end
      
      L2_3(L3_3, L4_3)
    else
      L2_3 = string
      L2_3 = L2_3.find
      L3_3 = A0_3.url
      L4_3 = "postmsg:cancel"
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 == 1 then
        L2_3 = L4_2
        L2_3 = L2_3.alphaLayer
        L3_3 = L2_3
        L2_3 = L2_3.removeSelf
        L2_3(L3_3)
        L2_3 = L4_2
        L2_3.alphaLayer = nil
        L1_3 = false
        L2_3 = L7_2
        L2_3()
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = DISMISS_NATIVE_UI_DELAY
        L4_3 = A3_2
        L2_3(L3_3, L4_3)
      else
        L2_3 = L5_2
        L3_3 = string
        L3_3 = L3_3.format
        L4_3 = "load URL=%s"
        L5_3 = A0_3.url
        L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3)
        L2_3(L3_3, L4_3, L5_3)
      end
    end
    return L1_3
  end
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if not ONLINE_ENABLED then
      local btn = ui.newButton({ default = HTML_DIR .. "im/ok.png", over = HTML_DIR .. "im/ok.png",
        onRelease = function() timer.performWithDelay(1, function() L11_2({ url = "postmsg:cancel" }) end) end })
      btn.x = WORLD_WIDTH / 2; btn.y = WORLD_HEIGHT / 2 + 140 + 140 -- just below the framed photo (centre WORLD_HEIGHT/2+140, ~200 tall)
      A0_3.offlineOkBtn = btn
      return
    end
    L1_3 = {}
    L1_3.hasBackground = false
    L2_3 = system
    L2_3 = L2_3.ResourceDirectory
    L1_3.baseUrl = L2_3
    L2_3 = L11_2
    L1_3.urlRequest = L2_3
    L2_3 = L7_1
    L3_3 = userPrefLang
    L2_3 = L2_3[L3_3]
    if not L2_3 then
      L3_3 = L7_1
      L4_3 = DEFAULT_LOCALIZATION_LANG
      L2_3 = L3_3[L4_3]
    end
    L3_3 = HTML_DIR
    L4_3 = L2_3
    L5_3 = "?"
    L3_3 = L3_3 .. L4_3 .. L5_3
    L4_3 = L3_3
    L5_3 = "cid="
    L6_3 = DEVICE_ID
    L3_3 = L4_3 .. L5_3 .. L6_3
    L4_3 = platformIsAndroid
    if L4_3 then
      L4_3 = L3_3
      L5_3 = "&android=true"
      L3_3 = L4_3 .. L5_3
    end
    L4_3 = L5_2
    L5_3 = "load view with URL="
    L6_3 = L3_3
    L5_3 = L5_3 .. L6_3
    L4_3(L5_3)
    L4_3 = native
    L4_3 = L4_3.showWebPopup
    L5_3 = 0
    L6_3 = 0
    L7_3 = display
    L7_3 = L7_3.contentWidth
    L8_3 = display
    L8_3 = L8_3.contentHeight
    L9_3 = L3_3
    L10_3 = L1_3
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  
  L4_2.showPostMessageView = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L4_1
    L2_3 = userPrefLang
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      L2_3 = L4_1
      L3_3 = DEFAULT_LOCALIZATION_LANG
      L1_3 = L2_3[L3_3]
    end
    L2_3 = A0_3.screenshotController
    L3_3 = L2_3
    L2_3 = L2_3.getScreenshotImage
    L2_3 = L2_3(L3_3)
    A0_3.screenshotImg = L2_3
    L2_3 = A0_3.screenshotImg
    L3_3 = A0_3.screenshotImg
    L3_3 = L3_3.height
    L4_3 = A0_3.screenshotImg
    L4_3 = L4_3.width
    L3_3 = L3_3 - L4_3
    L3_3 = -L3_3
    L3_3 = L3_3 / 2
    compat.setYRef(L2_3, L3_3)
    L2_3 = WORLD_WIDTH
    L3_3 = A0_3.screenshotImg
    L3_3 = L3_3.width
    L2_3 = L2_3 / L3_3
    L3_3 = A0_3.screenshotImg
    L4_3 = L3_3
    L3_3 = L3_3.scale
    L5_3 = L2_3 * 0.5
    L6_3 = L2_3 * 0.5
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = A0_3.screenshotImg
    L4_3 = WORLD_WIDTH
    L4_3 = L4_3 / 2
    L3_3.x = L4_3
    L3_3 = A0_3.screenshotImg
    L4_3 = WORLD_HEIGHT
    L4_3 = L4_3 / 2
    L4_3 = L4_3 + 140
    L3_3.y = L4_3
    L3_3 = A0_3.screenshotImg
    L4_3 = L3_3
    L3_3 = L3_3.rotate
    L5_3 = A0_3.screenshotController
    L5_3 = L5_3.rotation
    L5_3 = -L5_3
    L5_3 = L5_3 + 6.8
    L3_3(L4_3, L5_3)
    L3_3 = display
    L3_3 = L3_3.newImage
    L4_3 = UI_PIC_DIR
    L5_3 = "photo_frame.png"
    L4_3 = L4_3 .. L5_3
    L3_3 = L3_3(L4_3)
    A0_3.photoFrameImg = L3_3
    L3_3 = A0_3.photoFrameImg
    L4_3 = A0_3.screenshotImg
    L4_3 = L4_3.x
    L3_3.x = L4_3
    L3_3 = A0_3.photoFrameImg
    L4_3 = A0_3.screenshotImg
    L4_3 = L4_3.y
    L3_3.y = L4_3
  end
  
  L4_2.showPreview = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = graphics
    L1_3 = L1_3.newGradient
    L2_3 = {}
    L3_3 = 0
    L4_3 = 0
    L5_3 = 0
    L6_3 = DIALOG_TRANSPARENCY
    L6_3 = L6_3 - 40
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L3_3 = {}
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 255
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L3_3[4] = L7_3
    L4_3 = "down"
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = display
    L2_3 = L2_3.newRect
    L3_3 = 0
    L4_3 = 0
    L5_3 = display
    L5_3 = L5_3.contentWidth
    L6_3 = display
    L6_3 = L6_3.contentHeight
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    A0_3.alphaLayer = L2_3
    L2_3 = A0_3.alphaLayer
    L3_3 = L2_3
    L2_3 = L2_3.setFillColor
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L3_3 = A0_3
    L2_3 = A0_3.showPreview
    L2_3(L3_3)
    L3_3 = A0_3
    L2_3 = A0_3.showPostMessageView
    L2_3(L3_3)
  end
  
  L4_2.show = L12_2
  return L4_2
end

newScreenshotView = L11_1
