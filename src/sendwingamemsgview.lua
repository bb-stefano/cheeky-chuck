local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "snsconfirmview"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "socket.http"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "localization"
L2_1 = L2_1(L3_1)
L3_1 = L2_1.getLocalizedMsg
L4_1 = 200
L5_1 = 404
L6_1 = "api.cheekychuck.com"
L7_1 = string
L7_1 = L7_1.format
L8_1 = "http://%s/api/1.0/post-special.php"
L9_1 = L6_1
L7_1 = L7_1(L8_1, L9_1)
L8_1 = {}
L8_1.en = "screenshot_uploading_en.png"
L8_1.it = "screenshot_uploading_it.png"
L8_1.jp = "screenshot_uploading_jp.png"
L8_1.zh = "screenshot_uploading_zh.png"
L9_1 = {}
L9_1.en = "msg_uploaded_en.png"
L9_1.it = "msg_uploaded_it.png"
L9_1.jp = "msg_uploaded_jp.png"
L9_1.zh = "msg_uploaded_zh.png"
L10_1 = {}
L10_1.en = "photo_uploaded_en.png"
L10_1.it = "photo_uploaded_it.png"
L10_1.jp = "photo_uploaded_jp.png"
L10_1.zh = "photo_uploaded_zh.png"

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L0_2.alphaLayer = nil
  L0_2.onCompleteCallback = nil
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[send win game message view] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_2
    L0_3 = L0_3.alphaLayer
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L0_2
    L0_3.alphaLayer = nil
  end
  
  function L3_2()
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
      L0_4 = nil
      L0_3 = L0_4
      L0_4 = nil
      L1_3 = L0_4
      L0_4 = L2_2
      L0_4()
      L0_4 = L0_2
      L0_4 = L0_4.onCompleteCallback
      L0_4()
    end
    
    L3_3 = L10_1
    L4_3 = userPrefLang
    L3_3 = L3_3[L4_3]
    if not L3_3 then
      L4_3 = L10_1
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
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A0_4.action
      if L1_4 == "clicked" then
        L1_4 = A0_4.index
        if L1_4 == 1 then
          L1_4 = timer
          L1_4 = L1_4.performWithDelay
          L2_4 = DISMISS_NATIVE_UI_DELAY
          
          function L3_4()
            local L0_5, L1_5
            L0_5 = A0_3
            L1_5 = L0_5
            L0_5 = L0_5.sendWinGameMsg
            L0_5(L1_5)
          end
          
          L1_4(L2_4, L3_4)
        else
          L1_4 = L2_2
          L1_4()
          L1_4 = A0_3
          L1_4 = L1_4.onCompleteCallback
          L1_4()
        end
      end
    end
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = L2_3
      if L1_4 then
        L1_4 = native
        L1_4 = L1_4.cancelAlert
        L2_4 = L2_3
        L1_4(L2_4)
      end
      L1_4 = native
      L1_4 = L1_4.showAlert
      L2_4 = L3_1
      L3_4 = L2_1
      L3_4 = L3_4.UI_ERROR
      L2_4 = L2_4(L3_4)
      L3_4 = A0_4
      L4_4 = {}
      L5_4 = L3_1
      L6_4 = L2_1
      L6_4 = L6_4.UI_RETRY
      L5_4 = L5_4(L6_4)
      L6_4 = L3_1
      L7_4 = L2_1
      L7_4 = L7_4.UI_CANCEL
      L6_4, L7_4 = L6_4(L7_4)
      L4_4[1] = L5_4
      L4_4[2] = L6_4
      L4_4[3] = L7_4
      L5_4 = L3_3
      L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4)
      L2_3 = L1_4
    end
    
    L5_3 = L8_1
    L6_3 = userPrefLang
    L5_3 = L5_3[L6_3]
    if not L5_3 then
      L6_3 = L8_1
      L7_3 = DEFAULT_LOCALIZATION_LANG
      L5_3 = L6_3[L7_3]
    end
    L6_3 = display
    L6_3 = L6_3.newImage
    L7_3 = UI_PIC_DIR
    L8_3 = L5_3
    L7_3 = L7_3 .. L8_3
    L6_3 = L6_3(L7_3)
    L1_3 = L6_3
    L6_3 = WORLD_WIDTH
    L6_3 = L6_3 / 2
    L1_3.x = L6_3
    L6_3 = WORLD_HEIGHT
    L6_3 = L6_3 / 2
    L1_3.y = L6_3
    L6_3 = nil
    L7_3 = nil
    
    function L8_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = "cid="
      L1_4 = DEVICE_ID
      L0_4 = L0_4 .. L1_4
      L1_4 = L0_4
      L2_4 = "&arch="
      L3_4 = tostring
      L4_4 = system
      L4_4 = L4_4.getInfo
      L5_4 = "architectureInfo"
      L4_4, L5_4 = L4_4(L5_4)
      L3_4 = L3_4(L4_4, L5_4)
      L0_4 = L1_4 .. L2_4 .. L3_4
      L1_4 = L0_4
      L2_4 = "&type=chuck_success"
      L0_4 = L1_4 .. L2_4
      L1_4 = L0_4
      L2_4 = "&lang="
      L3_4 = tostring
      L4_4 = userPrefLang
      L3_4 = L3_4(L4_4)
      L0_4 = L1_4 .. L2_4 .. L3_4
      L1_4 = L0_4
      L2_4 = "&edition="
      L3_4 = tostring
      L4_4 = APP_EDITION
      L3_4 = L3_4(L4_4)
      L0_4 = L1_4 .. L2_4 .. L3_4
      L1_4 = L0_4
      L2_4 = "&version="
      L3_4 = tostring
      L4_4 = APP_VERSION
      L3_4 = L3_4(L4_4)
      L0_4 = L1_4 .. L2_4 .. L3_4
      L1_4 = L1_2
      L2_4 = "post data: "
      L3_4 = L0_4
      L2_4 = L2_4 .. L3_4
      L1_4(L2_4)
      L1_4 = L1_1
      L1_4 = L1_4.request
      L2_4 = L7_1
      L3_4 = L0_4
      L1_4, L2_4 = L1_4(L2_4, L3_4)
      L7_3 = L2_4
      L6_3 = L1_4
      L1_4 = L1_3
      L2_4 = L1_4
      L1_4 = L1_4.removeSelf
      L1_4(L2_4)
      L1_4 = nil
      L1_3 = L1_4
      L1_4 = L6_3
      if L1_4 then
        L1_4 = L7_3
        L2_4 = L4_1
        if L1_4 == L2_4 then
          L1_4 = L1_2
          L2_4 = "win game message posted, server response="
          L3_4 = L6_3
          L2_4 = L2_4 .. L3_4
          L1_4(L2_4)
          L1_4 = L3_2
          L1_4()
        else
          L1_4 = L7_3
          L2_4 = L5_1
          if L1_4 == L2_4 then
            L1_4 = L1_2
            L2_4 = string
            L2_4 = L2_4.format
            L3_4 = "win game message post service not found, status=%s, response =%s"
            L4_4 = tostring
            L5_4 = L7_3
            L4_4 = L4_4(L5_4)
            L5_4 = L6_3
            L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4, L4_4, L5_4)
            L1_4(L2_4, L3_4, L4_4, L5_4)
            L1_4 = L4_3
            L2_4 = L3_1
            L3_4 = L2_1
            L3_4 = L3_4.ERR_SCREENSHOT_UPLOAD_HTTP_NOT_FOUND
            L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
            L1_4(L2_4, L3_4, L4_4, L5_4)
          else
            L1_4 = L1_2
            L2_4 = string
            L2_4 = L2_4.format
            L3_4 = "win game message post error, status=%s, response =%s"
            L4_4 = tostring
            L5_4 = L7_3
            L4_4 = L4_4(L5_4)
            L5_4 = L6_3
            L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4, L4_4, L5_4)
            L1_4(L2_4, L3_4, L4_4, L5_4)
            L1_4 = L4_3
            L2_4 = string
            L2_4 = L2_4.format
            L3_4 = L3_1
            L4_4 = L2_1
            L4_4 = L4_4.ERR_SCREENSHOT_UPLOAD_UNKNOWN_HTTP
            L3_4 = L3_4(L4_4)
            L4_4 = L7_3
            L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4, L4_4)
            L1_4(L2_4, L3_4, L4_4, L5_4)
          end
        end
      else
        L1_4 = L1_2
        L2_4 = "win game message post error: "
        L3_4 = L7_3
        L2_4 = L2_4 .. L3_4
        L1_4(L2_4)
        L1_4 = L4_3
        L2_4 = L3_1
        L3_4 = L2_1
        L3_4 = L3_4.ERR_SCREENSHOT_UPLOAD_NO_CONNECTION_TO_SERVER
        L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
        L1_4(L2_4, L3_4, L4_4, L5_4)
      end
    end
    
    L9_3 = timer
    L9_3 = L9_3.performWithDelay
    L10_3 = DISMISS_NATIVE_UI_DELAY
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
  end
  
  L0_2.sendWinGameMsg = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = assert
    L3_3 = A1_3
    L4_3 = "no on complete callback function provided"
    L2_3(L3_3, L4_3)
    A0_3.onCompleteCallback = A1_3
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
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = DIALOG_TRANSPARENCY
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    
    function L2_3()
      local L0_4, L1_4
      L0_4 = A0_3
      L1_4 = L0_4
      L0_4 = L0_4.sendWinGameMsg
      L0_4(L1_4)
    end
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L0_4()
      L0_4 = A0_3
      L0_4 = L0_4.onCompleteCallback
      L0_4()
    end
    
    L4_3 = L0_1
    L4_3 = L4_3.newSnsConfirmView
    L4_3 = L4_3()
    L6_3 = L4_3
    L5_3 = L4_3.show
    L7_3 = L2_3
    L8_3 = L3_3
    L5_3(L6_3, L7_3, L8_3)
  end
  
  L0_2.show = L4_2
  return L0_2
end

newSendWinGameMsgView = L11_1
