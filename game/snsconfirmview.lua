local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.en = "confirm_accounts_en.html"
L0_1.it = "confirm_accounts_it.html"
L0_1.jp = "confirm_accounts_jp.html"
L0_1.zh = "confirm_accounts_zh.html"

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L0_2.publishSendBtn = nil
  L0_2.publishCancelBtn = nil
  L0_2.sendCallback = nil
  L0_2.cancelCallback = nil

  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[sns confirm view] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end

  function L2_2()
    local L0_3, L1_3
    L0_3 = native
    L0_3 = L0_3.cancelWebPopup
    L0_3()
    L0_3 = L0_2
    L0_3 = L0_3.publishCancelBtn
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L0_2
    L0_3.publishCancelBtn = nil
    L0_3 = L0_2
    L0_3 = L0_3.publishSendBtn
    if L0_3 then
      L0_3 = L0_2
      L0_3 = L0_3.publishSendBtn
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = L0_2
      L0_3.publishSendBtn = nil
    end
  end

  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = true
    L2_3 = string
    L2_3 = L2_3.find
    L3_3 = A0_3.url
    L4_3 = "sns:"
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 == 1 then
      L1_3 = false
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = DISMISS_NATIVE_UI_DELAY

      function L4_3()
        local L0_4, L1_4
        L0_4 = L0_2
        L1_4 = L0_4
        L0_4 = L0_4.showAccounts
        L0_4(L1_4)
      end

      L2_3(L3_3, L4_3)
    else
      L2_3 = string
      L2_3 = L2_3.find
      L3_3 = A0_3.url
      L4_3 = "view:close"
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 == 1 then
        L1_3 = false
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = DISMISS_NATIVE_UI_DELAY

        function L4_3()
          local L0_4, L1_4
          L0_4 = L2_2
          L0_4()
          L0_4 = L0_2
          L0_4 = L0_4.cancelCallback
          L0_4()
        end

        L2_3(L3_3, L4_3)
      else
        L2_3 = string
        L2_3 = L2_3.find
        L3_3 = A0_3.url
        L4_3 = "view:activateSend"
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 == 1 then
          L2_3 = L0_2
          L3_3 = L2_3
          L2_3 = L2_3.activateSendButton
          L2_3(L3_3)
        else
          L2_3 = L1_2
          L3_3 = string
          L3_3 = L3_3.format
          L4_3 = "load URL=%s"
          L5_3 = A0_3.url
          L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3)
          L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
    return L1_3
  end

  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = {}
    L1_3.hasBackground = false
    L2_3 = system
    L2_3 = L2_3.ResourceDirectory
    L1_3.baseUrl = L2_3
    L2_3 = L3_2
    L1_3.urlRequest = L2_3
    L2_3 = L0_1
    L3_3 = userPrefLang
    L2_3 = L2_3[L3_3]
    if not L2_3 then
      L3_3 = L0_1
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
    L4_3 = L1_2
    L5_3 = "load view with URL="
    L6_3 = L3_3
    L5_3 = L5_3 .. L6_3
    L4_3(L5_3)
    L4_3 = isSimulator
    if not L4_3 then
      L4_3 = native
      L4_3 = L4_3.showWebPopup
      L5_3 = 0
      L6_3 = 0
      L7_3 = display
      L7_3 = L7_3.contentWidth
      L8_3 = display
      L8_3 = L8_3.contentHeight
      L9_3 = SNS_BUTTON_AREA_HEIGHT
      L8_3 = L8_3 - L9_3
      L9_3 = L3_3
      L10_3 = L1_3
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    else
      L4_3 = display
      L4_3 = L4_3.newRect
      L5_3 = 0
      L6_3 = 0
      L7_3 = display
      L7_3 = L7_3.contentWidth
      L8_3 = display
      L8_3 = L8_3.contentHeight
      L9_3 = SNS_BUTTON_AREA_HEIGHT
      L8_3 = L8_3 - L9_3
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = L4_3
      L7_3 = {}
      L7_3.alpha = 0
      L7_3.time = 2000

      function L8_3()
        local L0_4, L1_4
        L0_4 = L4_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
      end

      L7_3.oncomplete = L8_3
      L5_3(L6_3, L7_3)
      L5_3 = timer
      L5_3 = L5_3.performWithDelay
      L6_3 = 500

      function L7_3()
        local L0_4, L1_4
        L0_4 = L3_2
        L1_4 = {}
        L1_4.url = "view:activateSend"
        L0_4(L1_4)
      end

      L5_3(L6_3, L7_3)
    end
  end

  L0_2.showAccounts = L4_2

  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.publishSendBtn
    local __lbl_8 = false
    if not L1_3 then
      L1_3 = A0_3.publishCancelBtn
      if L1_3 then
        __lbl_8 = true
      end
    end
    if not __lbl_8 then
      do return end
    end

    function L1_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L0_4()
      L0_4 = A0_3
      L0_4 = L0_4.sendCallback
      L0_4()
    end

    L2_3 = ui
    L2_3 = L2_3.newButton
    L3_3 = {}
    L4_3 = HTML_DIR
    L5_3 = "im/send.png"
    L4_3 = L4_3 .. L5_3
    L3_3.default = L4_3
    L4_3 = HTML_DIR
    L5_3 = "im/send.png"
    L4_3 = L4_3 .. L5_3
    L3_3.over = L4_3
    L3_3.onRelease = L1_3
    L2_3 = L2_3(L3_3)
    A0_3.publishSendBtn = L2_3
    L2_3 = A0_3.publishSendBtn
    L3_3 = SNS_BUTTON_SEND_X
    L2_3.x = L3_3
    L2_3 = A0_3.publishSendBtn
    L3_3 = SNS_BUTTON_Y
    L2_3.y = L3_3
  end

  L0_2.activateSendButton = L4_2

  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3

    function L1_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L0_4()
      L0_4 = A0_3
      L0_4 = L0_4.cancelCallback
      L0_4()
    end

    L2_3 = ui
    L2_3 = L2_3.newButton
    L3_3 = {}
    L4_3 = HTML_DIR
    L5_3 = "im/cancel.png"
    L4_3 = L4_3 .. L5_3
    L3_3.default = L4_3
    L4_3 = HTML_DIR
    L5_3 = "im/cancel.png"
    L4_3 = L4_3 .. L5_3
    L3_3.over = L4_3
    L3_3.onRelease = L1_3
    L2_3 = L2_3(L3_3)
    A0_3.publishCancelBtn = L2_3
    L2_3 = A0_3.publishCancelBtn
    L3_3 = SNS_BUTTON_CANCEL_X
    L2_3.x = L3_3
    L2_3 = A0_3.publishCancelBtn
    L3_3 = SNS_BUTTON_Y
    L2_3.y = L3_3
    L2_3 = platformIsAndroid
    if L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.activateSendButton
      L2_3(L3_3)
    end
  end

  L0_2.showSendCancel = L4_2

  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = assert
    L4_3 = A1_3
    L5_3 = "no send callback function provided"
    L3_3(L4_3, L5_3)
    L3_3 = assert
    L4_3 = A2_3
    L5_3 = "no cancel callback function provided"
    L3_3(L4_3, L5_3)
    A0_3.sendCallback = A1_3
    A0_3.cancelCallback = A2_3
    L4_3 = A0_3
    L3_3 = A0_3.showAccounts
    L3_3(L4_3)
    L4_3 = A0_3
    L3_3 = A0_3.showSendCancel
    L3_3(L4_3)
  end

  L0_2.show = L4_2
  return L0_2
end

newSnsConfirmView = L1_1
