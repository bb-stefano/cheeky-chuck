local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.en = "configuration_en.html"
L0_1.it = "configuration_it.html"
L0_1.jp = "configuration_jp.html"
L0_1.zh = "configuration_zh.html"
L1_1 = {}
L1_1.en = "android_configuration_en.html"
L1_1.it = "android_configuration_it.html"
L1_1.jp = "android_configuration_jp.html"
L1_1.zh = "android_configuration_zh.html"
L2_1 = {}
L2_1.en = "accounts_en.html"
L2_1.it = "accounts_it.html"
L2_1.jp = "accounts_jp.html"
L2_1.zh = "accounts_zh.html"
L3_1 = {}
L3_1.en = "android_accounts_en.html"
L3_1.it = "android_accounts_it.html"
L3_1.jp = "android_accounts_jp.html"
L3_1.zh = "android_accounts_zh.html"

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = {}
  L5_2.configuration = A0_2
  L5_2.audioController = A1_2
  L5_2.animegg = A2_2
  L5_2.background = A3_2
  L5_2.alphaLayer = nil
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3
    L1_3 = A0_3.sub
    L4_3 = A0_3
    L3_3 = A0_3.find
    L5_3 = "="
    L3_3 = L3_3(L4_3, L5_3)
    L3_3 = L3_3 + 1
    L5_3 = A0_3
    L4_3 = A0_3.len
    L4_3, L5_3 = L4_3(L5_3)
    return L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[configuration view] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L4_3 = A0_3
    L3_3 = A0_3.find
    L5_3 = "?"
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 then
      L5_3 = A0_3
      L4_3 = A0_3.sub
      L6_3 = L3_3 + 1
      L4_3 = L4_3(L5_3, L6_3)
      L6_3 = L4_3
      L5_3 = L4_3.find
      L7_3 = A1_3
      L8_3 = "="
      L7_3 = L7_3 .. L8_3
      L5_3 = L5_3(L6_3, L7_3)
      if L5_3 then
        L7_3 = L4_3
        L6_3 = L4_3.sub
        L8_3 = L5_3
        L6_3 = L6_3(L7_3, L8_3)
        L8_3 = L6_3
        L7_3 = L6_3.find
        L9_3 = "&"
        L7_3 = L7_3(L8_3, L9_3)
        if L7_3 then
          L9_3 = L6_3
          L8_3 = L6_3.sub
          L11_3 = A1_3
          L10_3 = A1_3.len
          L10_3 = L10_3(L11_3)
          L10_3 = L10_3 + 2
          L11_3 = L7_3 - 1
          L8_3 = L8_3(L9_3, L10_3, L11_3)
          L2_3 = L8_3
        else
          L9_3 = L6_3
          L8_3 = L6_3.sub
          L11_3 = A1_3
          L10_3 = A1_3.len
          L10_3 = L10_3(L11_3)
          L10_3 = L10_3 + 2
          L8_3 = L8_3(L9_3, L10_3)
          L2_3 = L8_3
        end
      else
        L6_3 = L7_2
        L7_3 = string
        L7_3 = L7_3.format
        L8_3 = "param key=%s not found"
        L9_3 = A1_3
        L7_3, L8_3, L9_3, L10_3, L11_3 = L7_3(L8_3, L9_3)
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      end
    end
    return L2_3
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = platformIsAndroid
    if L0_3 then
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.showBrowser
      L2_3 = L3_1
      L0_3(L1_3, L2_3)
    else
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.showBrowser
      L2_3 = L2_1
      L0_3(L1_3, L2_3)
    end
  end
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L7_2
    L2_3 = string
    L2_3 = L2_3.format
    L3_3 = "set background=%s"
    L4_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L5_2
    L1_3 = L1_3.configuration
    L1_3.background = A0_3
    L1_3 = L5_2
    L1_3 = L1_3.background
    L2_3 = L1_3
    L1_3 = L1_3.reload
    L1_3(L2_3)
    L1_3 = L5_2
    L1_3 = L1_3.audioController
    L2_3 = L1_3
    L1_3 = L1_3.stopAllSounds
    L1_3(L2_3)
    L1_3 = L5_2
    L1_3 = L1_3.animegg
    L2_3 = L1_3
    L1_3 = L1_3.stopAndPlayBreathing
    L1_3(L2_3)
    L1_3 = L5_2
    L1_3 = L1_3.animegg
    L1_3 = L1_3.isOffended
    if L1_3 then
      L1_3 = L5_2
      L1_3 = L1_3.animegg
      L2_3 = L1_3
      L1_3 = L1_3.setHappiness
      L3_3 = OFFENDED_THRESHOLD
      L3_3 = L3_3 + 10
      L1_3(L2_3, L3_3)
    end
  end
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L7_2
    L2_3 = string
    L2_3 = L2_3.format
    L3_3 = "set soundfx=%s"
    L4_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L5_2
    L1_3 = L1_3.configuration
    L2_3 = A0_3 == "true"
    L1_3.soundfx = L2_3
  end
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L7_2
    L2_3 = string
    L2_3 = L2_3.format
    L3_3 = "set soundbg=%s"
    L4_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L5_2
    L1_3 = L1_3.configuration
    L2_3 = A0_3 == "true"
    L1_3.soundbg = L2_3
    L1_3 = L5_2
    L1_3 = L1_3.configuration
    L1_3 = L1_3.soundbg
    if L1_3 then
      L1_3 = L5_2
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.playBackgroundMusic
      L1_3(L2_3)
    else
      L1_3 = L5_2
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.stopBackgroundMusic
      L1_3(L2_3)
    end
  end
  
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = tonumber
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L7_2
    L3_3 = string
    L3_3 = L3_3.format
    L4_3 = "set volume=%0.2f"
    L5_3 = L1_3
    L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3)
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L5_2
    L2_3 = L2_3.configuration
    L2_3.soundbgvol = L1_3
    L2_3 = L5_2
    L2_3 = L2_3.audioController
    L3_3 = L2_3
    L2_3 = L2_3.setBackgroundMusicVolume
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = true
    L2_3 = A0_3.url
    L3_3 = L7_2
    L4_3 = string
    L4_3 = L4_3.format
    L5_3 = "listener URL=%s"
    L6_3 = L2_3
    L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3, L6_3)
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = string
    L3_3 = L3_3.find
    L4_3 = L2_3
    L5_3 = "sns:"
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 == 1 then
      L1_3 = false
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = DISMISS_NATIVE_UI_DELAY
      L5_3 = L9_2
      L3_3(L4_3, L5_3)
    else
      L3_3 = string
      L3_3 = L3_3.find
      L4_3 = L2_3
      L5_3 = "setting:background="
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 == 1 then
        L3_3 = L6_2
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        L4_3 = L10_2
        L5_3 = L3_3
        L4_3(L5_3)
      else
        L3_3 = string
        L3_3 = L3_3.find
        L4_3 = L2_3
        L5_3 = "setting:soundfx="
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 == 1 then
          L3_3 = L6_2
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          L4_3 = L11_2
          L5_3 = L3_3
          L4_3(L5_3)
        else
          L3_3 = string
          L3_3 = L3_3.find
          L4_3 = L2_3
          L5_3 = "setting:soundbg="
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 == 1 then
            L3_3 = L6_2
            L4_3 = L2_3
            L3_3 = L3_3(L4_3)
            L4_3 = L12_2
            L5_3 = L3_3
            L4_3(L5_3)
          else
            L3_3 = string
            L3_3 = L3_3.find
            L4_3 = L2_3
            L5_3 = "setting:mvolume="
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 == 1 then
              L3_3 = tonumber
              L4_3 = L6_2
              L5_3 = L2_3
              L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3)
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
              L4_3 = L13_2
              L5_3 = L3_3
              L4_3(L5_3)
            else
              L3_3 = string
              L3_3 = L3_3.find
              L4_3 = L2_3
              L5_3 = "configuration_?[a-z]?[a-z]?.html"
              L3_3 = L3_3(L4_3, L5_3)
              if L3_3 then
                L3_3 = L7_2
                L4_3 = string
                L4_3 = L4_3.format
                L5_3 = "reload configuration URL=%s"
                L6_3 = L2_3
                L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3, L6_3)
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                L3_3 = L8_2
                L4_3 = L2_3
                L5_3 = "background"
                L3_3 = L3_3(L4_3, L5_3)
                L4_3 = L8_2
                L5_3 = L2_3
                L6_3 = "soundfx"
                L4_3 = L4_3(L5_3, L6_3)
                L5_3 = L8_2
                L6_3 = L2_3
                L7_3 = "soundbg"
                L5_3 = L5_3(L6_3, L7_3)
                L6_3 = L8_2
                L7_3 = L2_3
                L8_3 = "mvolume"
                L6_3 = L6_3(L7_3, L8_3)
                if L3_3 then
                  L7_3 = L10_2
                  L8_3 = L3_3
                  L7_3(L8_3)
                end
                if L4_3 then
                  L7_3 = L11_2
                  L8_3 = L4_3
                  L7_3(L8_3)
                end
                if L5_3 then
                  L7_3 = L12_2
                  L8_3 = L5_3
                  L7_3(L8_3)
                end
                if L6_3 then
                  L7_3 = L13_2
                  L8_3 = L6_3
                  L7_3(L8_3)
                end
              else
                L3_3 = L7_2
                L4_3 = string
                L4_3 = L4_3.format
                L5_3 = "load URL=%s"
                L6_3 = L2_3
                L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3, L6_3)
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
              end
            end
          end
        end
      end
    end
    return L1_3
  end
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    
    function L2_3()
      local L0_4, L1_4
      L0_4 = native
      L0_4 = L0_4.cancelWebPopup
      L0_4()
      L0_4 = A0_3
      L0_4 = L0_4.alphaLayer
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = A0_3
      L0_4.alphaLayer = nil
      L0_4 = L1_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = nil
      L1_3 = L0_4
      L0_4 = L7_2
      L1_4 = "save settings"
      L0_4(L1_4)
      L0_4 = A0_3
      L0_4 = L0_4.configuration
      L1_4 = L0_4
      L0_4 = L0_4.saveConfiguration
      L0_4(L1_4)
      L0_4 = A4_2
      L0_4()
    end
    
    L3_3 = ui
    L3_3 = L3_3.newButton
    L4_3 = {}
    L5_3 = HTML_DIR
    L6_3 = "im/ok.png"
    L5_3 = L5_3 .. L6_3
    L4_3.default = L5_3
    L5_3 = HTML_DIR
    L6_3 = "im/ok.png"
    L5_3 = L5_3 .. L6_3
    L4_3.over = L5_3
    L4_3.onRelease = L2_3
    L3_3 = L3_3(L4_3)
    L1_3 = L3_3
    L3_3 = CONF_BUTTON_OK_X
    L1_3.x = L3_3
    L3_3 = CONF_BUTTON_OK_Y
    L1_3.y = L3_3
  end
  
  L5_2.showOkButton = L15_2
  
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = {}
    L2_3.hasBackground = false
    L3_3 = system
    L3_3 = L3_3.ResourceDirectory
    L2_3.baseUrl = L3_3
    L3_3 = L14_2
    L2_3.urlRequest = L3_3
    L3_3 = userPrefLang
    L3_3 = A1_3[L3_3]
    if not L3_3 then
      L4_3 = DEFAULT_LOCALIZATION_LANG
      L3_3 = A1_3[L4_3]
    end
    L4_3 = HTML_DIR
    L5_3 = L3_3
    L6_3 = "?"
    L4_3 = L4_3 .. L5_3 .. L6_3
    L5_3 = L4_3
    L6_3 = "cid="
    L7_3 = DEVICE_ID
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = L4_3
    L6_3 = "&background="
    L7_3 = A0_3.configuration
    L7_3 = L7_3.background
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = L4_3
    L6_3 = "&soundfx="
    L7_3 = tostring
    L8_3 = A0_3.configuration
    L8_3 = L8_3.soundfx
    L7_3 = L7_3(L8_3)
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = L4_3
    L6_3 = "&soundbg="
    L7_3 = tostring
    L8_3 = A0_3.configuration
    L8_3 = L8_3.soundbg
    L7_3 = L7_3(L8_3)
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = L4_3
    L6_3 = "&mvolume="
    L7_3 = tostring
    L8_3 = A0_3.configuration
    L8_3 = L8_3.soundbgvol
    L7_3 = L7_3(L8_3)
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = L4_3
    L6_3 = "&bg2unlocked="
    L7_3 = tostring
    L8_3 = A0_3.configuration
    L8_3 = L8_3.background_2_unlocked
    L7_3 = L7_3(L8_3)
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = L4_3
    L6_3 = "&bg3unlocked="
    L7_3 = tostring
    L8_3 = A0_3.configuration
    L8_3 = L8_3.background_3_unlocked
    L7_3 = L7_3(L8_3)
    L4_3 = L5_3 .. L6_3 .. L7_3
    L5_3 = platformIsAndroid
    if L5_3 then
      L5_3 = L4_3
      L6_3 = "&android=true"
      L4_3 = L5_3 .. L6_3
    end
    L5_3 = L7_2
    L6_3 = "load view with URL="
    L7_3 = L4_3
    L6_3 = L6_3 .. L7_3
    L5_3(L6_3)
    L5_3 = native
    L5_3 = L5_3.showWebPopup
    L6_3 = 0
    L7_3 = 0
    L8_3 = display
    L8_3 = L8_3.contentWidth
    L9_3 = display
    L9_3 = L9_3.contentHeight
    L10_3 = CONF_BUTTON_AREA_HEIGHT
    L9_3 = L9_3 - L10_3
    L10_3 = L4_3
    L11_3 = L2_3
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  
  L5_2.showBrowser = L15_2
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = display
    L1_3 = L1_3.newRect
    L2_3 = 0
    L3_3 = 0
    L4_3 = display
    L4_3 = L4_3.contentWidth
    L5_3 = display
    L5_3 = L5_3.contentHeight
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    A0_3.alphaLayer = L1_3
    L1_3 = A0_3.alphaLayer
    L2_3 = L1_3
    L1_3 = L1_3.setFillColor
    L3_3 = 0
    L4_3 = 0
    L5_3 = 0
    L6_3 = DIALOG_TRANSPARENCY
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L2_3 = A0_3
    L1_3 = A0_3.showOkButton
    L1_3(L2_3)
    L1_3 = A0_3.background
    L2_3 = L1_3
    L1_3 = L1_3.stopSpecialLayer
    L1_3(L2_3)
    L1_3 = platformIsAndroid
    if L1_3 then
      L2_3 = A0_3
      L1_3 = A0_3.showBrowser
      L3_3 = L1_1
      L1_3(L2_3, L3_3)
    else
      L2_3 = A0_3
      L1_3 = A0_3.showBrowser
      L3_3 = L0_1
      L1_3(L2_3, L3_3)
    end
  end
  
  L5_2.show = L15_2
  return L5_2
end

newConfigurationView = L4_1
