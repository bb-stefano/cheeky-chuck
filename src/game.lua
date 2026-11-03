local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "background"
L0_1(L1_1)
L0_1 = require
L1_1 = "animegg"
L0_1(L1_1)
L0_1 = require
L1_1 = "analytics"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "ui"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "uitools"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "orientation"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "touchGesture"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "accelsim"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "touchsim"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "shaking"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "clockhandler"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "happiness"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "discovery"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "confview"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "screenshot"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "screenshotview"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "sendwingamemsgview"
L14_1 = L14_1(L15_1)
L15_1 = 53
L16_1 = 10
L17_1 = 401
L18_1 = L17_1 + 42
L19_1 = 5
L20_1 = 5
L21_1 = 5000
L22_1 = 120
L23_1 = {}
L23_1.en = "win_game_en.png"
L23_1.it = "win_game_it.png"
L23_1.jp = "win_game_jp.png"
L23_1.zh = "win_game_zh.png"
L24_1 = {}
L25_1 = {}
L25_1.img = "win_share_en.png"
L25_1.x = 130
L26_1 = display
L26_1 = L26_1.contentHeight
L26_1 = L26_1 - 41
L25_1.y = L26_1
L24_1.en = L25_1
L25_1 = {}
L25_1.img = "win_share_it.png"
L25_1.x = 130
L26_1 = display
L26_1 = L26_1.contentHeight
L26_1 = L26_1 - 41
L25_1.y = L26_1
L24_1.it = L25_1
L25_1 = {}
L25_1.img = "win_share_jp.png"
L25_1.x = 130
L26_1 = display
L26_1 = L26_1.contentHeight
L26_1 = L26_1 - 41
L25_1.y = L26_1
L24_1.jp = L25_1
L25_1 = {}
L25_1.img = "win_share_zh.png"
L25_1.x = 80
L26_1 = display
L26_1 = L26_1.contentHeight
L26_1 = L26_1 - 49
L25_1.y = L26_1
L24_1.zh = L25_1
L25_1 = {}
L25_1.en = "background_unlocked_en.png"
L25_1.it = "background_unlocked_it.png"
L25_1.jp = "background_unlocked_jp.png"
L25_1.zh = "background_unlocked_zh.png"
L26_1 = {}
L26_1.en = "background_unlocked_en.png"
L26_1.it = "background_unlocked_it.png"
L26_1.jp = "background_unlocked_jp.png"
L26_1.zh = "background_unlocked_zh.png"

function L27_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L5_2 = {}
  self = L5_2
  if A0_2 then
    L5_2 = self
    L5_2.configuration = A0_2
  else
    L5_2 = self
    L6_2 = newConfiguration
    L6_2 = L6_2()
    L5_2.configuration = L6_2
  end
  L5_2 = self
  L5_2.audioController = A1_2
  L5_2 = self
  L5_2.splashscreen = A2_2
  L5_2 = self
  L5_2.background = nil
  L5_2 = self
  L5_2.animegg = nil
  L5_2 = self
  L5_2.orientationController = nil
  L5_2 = self
  L5_2.touchGestureDetector = nil
  L5_2 = self
  L5_2.shakeDetector = nil
  L5_2 = self
  L5_2.accelSim = nil
  L5_2 = self
  L5_2.touchSim = nil
  L5_2 = self
  L5_2.clockHandler = nil
  L5_2 = self
  L5_2.happinessBar = nil
  L5_2 = self
  L5_2.discoveryAccountant = nil
  L5_2 = self
  L5_2.screenshotController = nil
  L5_2 = self
  L6_2 = DEFAULT_HAPPINESS
  L5_2.happiness = L6_2
  L5_2 = self
  L5_2.hintNotifyImg = nil
  L5_2 = self
  L5_2.hintNotifyTransition = nil
  L5_2 = self
  L5_2.highlightScreenshotImg = nil
  L5_2 = self
  L5_2.highlightScreenshotTransition = nil
  L5_2 = self
  L5_2.menuBtnEnabled = true
  L5_2 = self
  L5_2.gameStartTime = 0
  L5_2 = self
  L5_2.savedGameStateRunTime = 0
  L5_2 = self
  L5_2.winGameDialogTimer = nil
  L5_2 = self
  L5_2.winGamePlaySound = true
  L5_2 = self
  L5_2.winGameAlreadyShown = false
  L5_2 = self
  L5_2.backgroundUnlockedTimer = nil
  L5_2 = self
  L5_2.hintAnimationTimer = nil
  L5_2 = self
  L6_2 = self
  L6_2 = L6_2.configuration
  L6_2 = L6_2.soundfx
  L5_2.soundfx = L6_2
  L5_2 = self
  L6_2 = self
  L6_2 = L6_2.configuration
  L6_2 = L6_2.soundbg
  L5_2.soundbg = L6_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[game] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = self
    L0_3.menuBtnEnabled = true
    L0_3 = self
    L0_3 = L0_3.orientationController
    L0_3.orientationLocked = false
    L0_3 = self
    L0_3 = L0_3.touchGestureDetector
    L0_3.enabled = true
    L0_3 = self
    L0_3 = L0_3.shakeDetector
    L0_3.enabled = true
    L0_3 = self
    L0_3 = L0_3.discoveryAccountant
    L1_3 = L0_3
    L0_3 = L0_3.resume
    L0_3(L1_3)
  end
  
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = self
    L1_3.menuBtnEnabled = false
    L1_3 = self
    L1_3 = L1_3.orientationController
    L1_3.orientationLocked = true
    L1_3 = self
    L1_3 = L1_3.touchGestureDetector
    L1_3.enabled = false
    L1_3 = self
    L1_3 = L1_3.shakeDetector
    L1_3.enabled = false
    L1_3 = self
    L1_3 = L1_3.discoveryAccountant
    L2_3 = L1_3
    L1_3 = L1_3.suspend
    L1_3(L2_3)
    if A0_3 then
      L1_3 = self
      L1_3 = L1_3.touchGestureDetector
      L2_3 = L1_3
      L1_3 = L1_3.reset
      L1_3(L2_3)
      L1_3 = self
      L1_3 = L1_3.animegg
      L2_3 = L1_3
      L1_3 = L1_3.recoverFromLoopState
      L1_3(L2_3)
    end
  end
  
  L8_2 = nil
  L9_2 = nil
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = self
    L0_3 = L0_3.menuBtnMute
    if L0_3 then
      L0_3 = self
      L0_3 = L0_3.menuBtnMute
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
    end
    L0_3 = self
    L0_3 = L0_3.configuration
    L0_3 = L0_3.soundfx
    L0_3 = self
    L0_3 = L0_3.configuration
    L0_3 = L0_3.soundbg
    L0_3 = not L0_3 and L0_3
    if L0_3 then
      L1_3 = self
      L2_3 = L1_1
      L2_3 = L2_3.newButton
      L3_3 = {}
      L4_3 = UI_PIC_DIR
      L5_3 = "menu_aud2.png"
      L4_3 = L4_3 .. L5_3
      L3_3.default = L4_3
      L4_3 = UI_PIC_DIR
      L5_3 = "menu_aud2_on.png"
      L4_3 = L4_3 .. L5_3
      L3_3.over = L4_3
      L4_3 = L9_2
      L3_3.onRelease = L4_3
      L4_3 = SCREEN_CONTROL_PANEL
      L3_3.layer = L4_3
      L2_3 = L2_3(L3_3)
      L1_3.menuBtnMute = L2_3
    else
      L1_3 = self
      L2_3 = L1_1
      L2_3 = L2_3.newButton
      L3_3 = {}
      L4_3 = UI_PIC_DIR
      L5_3 = "menu_aud.png"
      L4_3 = L4_3 .. L5_3
      L3_3.default = L4_3
      L4_3 = UI_PIC_DIR
      L5_3 = "menu_aud_on.png"
      L4_3 = L4_3 .. L5_3
      L3_3.over = L4_3
      L4_3 = L9_2
      L3_3.onRelease = L4_3
      L4_3 = SCREEN_CONTROL_PANEL
      L3_3.layer = L4_3
      L2_3 = L2_3(L3_3)
      L1_3.menuBtnMute = L2_3
    end
    L1_3 = self
    L1_3 = L1_3.menuBtnMute
    L2_3 = WORLD_WIDTH
    L2_3 = L2_3 / 3
    L2_3 = L2_3 * 2
    L3_3 = L16_1
    L2_3 = L2_3 - L3_3
    L1_3.x = L2_3
    L1_3 = self
    L1_3 = L1_3.menuBtnMute
    L2_3 = L18_1
    L1_3.y = L2_3
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = self
    L0_3 = L0_3.configuration
    L0_3 = L0_3.soundfx
    L0_3 = self
    L0_3 = L0_3.configuration
    L0_3 = L0_3.soundbg
    L0_3 = not L0_3 and L0_3
    if L0_3 then
      L1_3 = self
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = "click"
      L1_3(L2_3, L3_3)
      L1_3 = self
      L1_3 = L1_3.soundfx
      if not L1_3 then
        L1_3 = self
        L1_3 = L1_3.soundbg
        if not L1_3 then
          L1_3 = self
          L1_3.soundfx = true
          L1_3 = self
          L1_3.soundbg = true
        end
      end
      L1_3 = self
      L1_3 = L1_3.configuration
      L2_3 = self
      L2_3 = L2_3.soundfx
      L1_3.soundfx = L2_3
      L1_3 = self
      L1_3 = L1_3.configuration
      L2_3 = self
      L2_3 = L2_3.soundbg
      L1_3.soundbg = L2_3
      L1_3 = self
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.playBackgroundMusic
      L1_3(L2_3)
      L1_3 = L8_2
      L1_3()
    else
      L1_3 = self
      L2_3 = self
      L2_3 = L2_3.configuration
      L2_3 = L2_3.soundfx
      L1_3.soundfx = L2_3
      L1_3 = self
      L2_3 = self
      L2_3 = L2_3.configuration
      L2_3 = L2_3.soundbg
      L1_3.soundbg = L2_3
      L1_3 = self
      L1_3 = L1_3.configuration
      L1_3.soundfx = false
      L1_3 = self
      L1_3 = L1_3.configuration
      L1_3.soundbg = false
      L1_3 = self
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.stopAllSounds
      L1_3(L2_3)
      L1_3 = self
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.stopBackgroundMusic
      L1_3(L2_3)
      L1_3 = L8_2
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = self
    L0_3 = L0_3.menuBtnEnabled
    if L0_3 then
      L0_3 = L7_2
      L1_3 = true
      L0_3(L1_3)
      L0_3 = self
      L0_3 = L0_3.audioController
      L1_3 = L0_3
      L0_3 = L0_3.play
      L2_3 = "click"
      L0_3(L1_3, L2_3)
      L0_3 = self
      L0_3 = L0_3.discoveryAccountant
      L1_3 = L0_3
      L0_3 = L0_3.suspend
      L0_3(L1_3)
      L0_3 = self
      L0_3 = L0_3.clockHandler
      L1_3 = L0_3
      L0_3 = L0_3.suspend
      L0_3(L1_3)
      L0_3 = self
      L0_3 = L0_3.splashscreen
      L1_3 = L0_3
      L0_3 = L0_3.showWithAnimation
      L0_3(L1_3)
    end
    L0_3 = true
    return L0_3
  end
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    
    function L0_3()
      local L0_4, L1_4
      L0_4 = self
      L1_4 = self
      L1_4 = L1_4.configuration
      L1_4 = L1_4.soundfx
      L0_4.soundfx = L1_4
      L0_4 = self
      L1_4 = self
      L1_4 = L1_4.configuration
      L1_4 = L1_4.soundbg
      L0_4.soundbg = L1_4
      L0_4 = L8_2
      L0_4()
      L0_4 = self
      L0_4 = L0_4.background
      L1_4 = L0_4
      L0_4 = L0_4.reload
      L0_4(L1_4)
      L0_4 = self
      L1_4 = L0_4
      L0_4 = L0_4.unlockGame
      L0_4(L1_4)
      L0_4 = L6_2
      L0_4()
    end
    
    L1_3 = self
    L1_3 = L1_3.menuBtnEnabled
    if L1_3 then
      L1_3 = self
      L1_3 = L1_3.audioController
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = "click"
      L1_3(L2_3, L3_3)
      L1_3 = self
      L2_3 = L1_3
      L1_3 = L1_3.lockGamePortrait
      L1_3(L2_3)
      L1_3 = L7_2
      L2_3 = true
      L1_3(L2_3)
      L1_3 = L11_1
      L1_3 = L1_3.newConfigurationView
      L2_3 = self
      L2_3 = L2_3.configuration
      L3_3 = self
      L3_3 = L3_3.audioController
      L4_3 = self
      L4_3 = L4_3.animegg
      L5_3 = self
      L5_3 = L5_3.background
      L6_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L3_3 = L1_3
      L2_3 = L1_3.show
      L2_3(L3_3)
    end
    L1_3 = true
    return L1_3
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = self
    L0_3 = L0_3.menuBtnEnabled
    if L0_3 then
      L0_3 = L7_2
      L0_3()
      L0_3 = L2_1
      L0_3 = L0_3.showNewGameInfo
      L1_3 = L6_2
      L0_3(L1_3)
    end
  end
  
  function L13_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3
    L4_3 = L2_1
    L4_3 = L4_3.newButtonHighlighter
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = A3_3
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    L6_3 = L4_3
    L5_3 = L4_3.start
    L5_3(L6_3)
  end
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3
    
    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = self
      L0_4 = L0_4.configuration
      L0_4 = L0_4.highlight_screenshot_button
      if L0_4 == true then
        L0_4 = L13_2
        L1_4 = self
        L1_4 = L1_4.menuBtnPicture
        L2_4 = L20_1
        L3_4 = "highlightScreenshotImg"
        L4_4 = "highlightScreenshotTransition"
        L0_4(L1_4, L2_4, L3_4, L4_4)
      end
    end
    
    L1_3 = self
    L1_3 = L1_3.configuration
    L1_3 = L1_3.highlight_screenshot_button
    if L1_3 == true then
      L1_3 = timer
      L1_3 = L1_3.performWithDelay
      L2_3 = L21_1
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L13_2
    L1_3 = self
    L1_3 = L1_3.menuBtnInfo
    L2_3 = L19_1
    L3_3 = "hintNotifyImg"
    L4_3 = "hintNotifyTransition"
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  
  function L16_2()
    local L0_3, L1_3, L2_3
    L0_3 = self
    L0_3 = L0_3.menuBtnEnabled
    if L0_3 then
      L0_3 = L7_2
      L1_3 = true
      L0_3(L1_3)
      L0_3 = self
      L0_3 = L0_3.audioController
      L1_3 = L0_3
      L0_3 = L0_3.play
      L2_3 = "click"
      L0_3(L1_3, L2_3)
      L0_3 = L0_1
      L0_3 = L0_3.logEvent
      L1_3 = "hint button tapped"
      L0_3(L1_3)
      L0_3 = self
      L0_3 = L0_3.hintNotifyTransition
      if L0_3 then
        L0_3 = transition
        L0_3 = L0_3.cancel
        L1_3 = self
        L1_3 = L1_3.hintNotifyTransition
        L0_3(L1_3)
        L0_3 = self
        L0_3.hintNotifyTransition = nil
      end
      L0_3 = self
      L0_3 = L0_3.hintNotifyImg
      if L0_3 then
        L0_3 = self
        L0_3 = L0_3.hintNotifyImg
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = self
        L0_3.hintNotifyImg = nil
      end
      L0_3 = self
      L0_3 = L0_3.discoveryAccountant
      L1_3 = L0_3
      L0_3 = L0_3.showHint
      L2_3 = L6_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = true
    return L0_3
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = self
    L0_3 = L0_3.menuBtnEnabled
    if L0_3 then
      L0_3 = L7_2
      L0_3()
      L0_3 = self
      L0_3 = L0_3.audioController
      L1_3 = L0_3
      L0_3 = L0_3.play
      L2_3 = "background_unlocked"
      L0_3(L1_3, L2_3)
      L0_3 = self
      L0_3 = L0_3.discoveryAccountant
      L1_3 = L0_3
      L0_3 = L0_3.showHintAnimation
      L2_3 = L6_2
      L0_3(L1_3, L2_3)
    else
      L0_3 = self
      L1_3 = timer
      L1_3 = L1_3.performWithDelay
      L2_3 = L22_1
      L3_3 = L17_2
      L4_3 = 1
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3.hintAnimationTimer = L1_3
    end
  end
  
  function L18_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    if not A1_3 then
      L2_3 = self
      L2_3 = L2_3.winGameAlreadyShown
      if L2_3 then
        return
      end
    end
    L2_3 = self
    L2_3 = L2_3.winGameDialogTimer
    if L2_3 then
      L2_3 = timer
      L2_3 = L2_3.cancel
      L3_3 = self
      L3_3 = L3_3.winGameDialogTimer
      L2_3(L3_3)
    end
    if not A1_3 then
      L2_3 = self
      L2_3 = L2_3.animegg
      L2_3 = L2_3.isPlayReactionAnim
      if not L2_3 then
        L2_3 = self
        L2_3 = L2_3.menuBtnEnabled
        if L2_3 then
          goto lbl_37
        end
      end
      L2_3 = self
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = L22_1
      L5_3 = L18_2
      L6_3 = 1
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3.winGameDialogTimer = L3_3
    else
      ::lbl_37::
      L2_3 = L7_2
      L2_3()
      L2_3 = self
      L2_3.winGameAlreadyShown = true
      L2_3 = L23_1
      L3_3 = userPrefLang
      L2_3 = L2_3[L3_3]
      if not L2_3 then
        L3_3 = L23_1
        L4_3 = DEFAULT_LOCALIZATION_LANG
        L2_3 = L3_3[L4_3]
      end
      L3_3 = display
      L3_3 = L3_3.newImage
      L4_3 = UI_PIC_DIR
      L5_3 = L2_3
      L4_3 = L4_3 .. L5_3
      L3_3 = L3_3(L4_3)
      L4_3 = display
      L4_3 = L4_3.contentWidth
      L4_3 = L4_3 / 2
      L3_3.x = L4_3
      L4_3 = display
      L4_3 = L4_3.contentHeight
      L4_3 = L4_3 / 2
      L3_3.y = L4_3
      L4_3 = self
      L4_3 = L4_3.winGamePlaySound
      if L4_3 then
        L4_3 = self
        L4_3 = L4_3.audioController
        L5_3 = L4_3
        L4_3 = L4_3.play
        L6_3 = "win_game"
        L4_3(L5_3, L6_3)
        L4_3 = self
        L4_3.winGamePlaySound = false
      end
      L4_3 = nil
      L5_3 = nil
      L6_3 = nil
      
      function L7_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L4_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = nil
        L4_3 = L0_4
        L0_4 = L5_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = nil
        L5_3 = L0_4
        L0_4 = L6_3
        L1_4 = L0_4
        L0_4 = L0_4.removeEventListener
        L2_4 = "touch"
        L3_4 = L6_3
        L0_4(L1_4, L2_4, L3_4)
        L0_4 = L6_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = nil
        L6_3 = L0_4
        L0_4 = L3_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = nil
        L3_3 = L0_4
      end
      
      function L8_3()
        local L0_4, L1_4
        L0_4 = L7_3
        L0_4()
        L0_4 = L6_2
        L0_4()
      end
      
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L7_3
        L0_4()
        L0_4 = L14_1
        L0_4 = L0_4.newSendWinGameMsgView
        L0_4 = L0_4()
        L2_4 = L0_4
        L1_4 = L0_4.show
        L3_4 = L6_2
        L1_4(L2_4, L3_4)
      end
      
      L10_3 = L1_1
      L10_3 = L10_3.newButton
      L11_3 = {}
      L12_3 = HTML_DIR
      L13_3 = "im/ok.png"
      L12_3 = L12_3 .. L13_3
      L11_3.default = L12_3
      L12_3 = HTML_DIR
      L13_3 = "im/ok.png"
      L12_3 = L12_3 .. L13_3
      L11_3.over = L12_3
      L11_3.onRelease = L8_3
      L10_3 = L10_3(L11_3)
      L4_3 = L10_3
      L10_3 = WORLD_WIDTH
      L10_3 = L10_3 - 50
      L4_3.x = L10_3
      L10_3 = display
      L10_3 = L10_3.contentHeight
      L10_3 = L10_3 - 50
      L4_3.y = L10_3
      L10_3 = L24_1
      L11_3 = userPrefLang
      L10_3 = L10_3[L11_3]
      if not L10_3 then
        L11_3 = L24_1
        L12_3 = DEFAULT_LOCALIZATION_LANG
        L10_3 = L11_3[L12_3]
      end
      L11_3 = L1_1
      L11_3 = L11_3.newButton
      L12_3 = {}
      L13_3 = UI_PIC_DIR
      L14_3 = L10_3.img
      L13_3 = L13_3 .. L14_3
      L12_3.default = L13_3
      L13_3 = UI_PIC_DIR
      L14_3 = L10_3.img
      L13_3 = L13_3 .. L14_3
      L12_3.over = L13_3
      L12_3.onRelease = L9_3
      L11_3 = L11_3(L12_3)
      L5_3 = L11_3
      L11_3 = L10_3.x
      L5_3.x = L11_3
      L11_3 = L10_3.y
      L5_3.y = L11_3
      L11_3 = 26
      L12_3 = display
      L12_3 = L12_3.newRect
      L13_3 = L11_3
      L14_3 = display
      L14_3 = L14_3.contentHeight
      L14_3 = L14_3 - 160
      L15_3 = display
      L15_3 = L15_3.contentWidth
      L16_3 = 2 * L11_3
      L15_3 = L15_3 - L16_3
      L16_3 = 80
      L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3)
      L6_3 = L12_3
      L13_3 = L6_3
      L12_3 = L6_3.setFillColor
      L14_3 = 255
      L15_3 = 0
      L16_3 = 0
      L17_3 = 0
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
      
      function L12_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A1_4.phase
        if L2_4 == "began" then
          L2_4 = platformIsAndroid
          if L2_4 then
            L2_4 = system
            L2_4 = L2_4.openURL
            L3_4 = CHEEKY_CHUCK_2_MARKET_URL
            L2_4(L3_4)
          else
            L2_4 = system
            L2_4 = L2_4.openURL
            L3_4 = CHEEKY_CHUCK_2_ITUNES_URL
            L2_4(L3_4)
          end
        end
      end
      
      L6_3.touch = L12_3
      L13_3 = L6_3
      L12_3 = L6_3.addEventListener
      L14_3 = "touch"
      L15_3 = L6_3
      L12_3(L13_3, L14_3, L15_3)
    end
  end
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = self
    L0_3 = L0_3.animegg
    L0_3 = L0_3.isPlayReactionAnim
    if not L0_3 then
      L0_3 = self
      L0_3 = L0_3.menuBtnEnabled
      if L0_3 then
        goto lbl_30
      end
    end
    L0_3 = self
    L0_3 = L0_3.backgroundUnlockedTimer
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = self
      L1_3 = L1_3.backgroundUnlockedTimer
      L0_3(L1_3)
      L0_3 = self
      L0_3.backgroundUnlockedTimer = nil
    end
    L0_3 = self
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = L22_1
    L3_3 = L19_2
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L0_3.backgroundUnlockedTimer = L1_3
    goto lbl_84
    ::lbl_30::
    L0_3 = L7_2
    L0_3()
    L0_3 = L25_1
    L1_3 = userPrefLang
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L1_3 = L25_1
      L2_3 = DEFAULT_LOCALIZATION_LANG
      L0_3 = L1_3[L2_3]
    end
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = UI_PIC_DIR
    L3_3 = L0_3
    L2_3 = L2_3 .. L3_3
    L1_3 = L1_3(L2_3)
    L2_3 = WORLD_WIDTH
    L2_3 = L2_3 / 2
    L1_3.x = L2_3
    L2_3 = WORLD_HEIGHT
    L2_3 = L2_3 / 2
    L2_3 = L2_3 + 13
    L1_3.y = L2_3
    L2_3 = nil
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = self
      L0_4 = L0_4.background
      L1_4 = L0_4
      L0_4 = L0_4.reload
      L0_4(L1_4)
      L0_4 = L2_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = L1_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = nil
      L1_3 = L0_4
      L0_4 = nil
      L2_3 = L0_4
      L0_4 = L6_2
      L0_4()
    end
    
    L4_3 = L1_1
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
    L5_3.onRelease = L3_3
    L4_3 = L4_3(L5_3)
    L2_3 = L4_3
    L4_3 = WORLD_WIDTH
    L4_3 = L4_3 / 2
    L2_3.x = L4_3
    L4_3 = L1_3.y
    L4_3 = L4_3 + 90
    L2_3.y = L4_3
    L4_3 = self
    L4_3 = L4_3.audioController
    L5_3 = L4_3
    L4_3 = L4_3.play
    L6_3 = "background_unlocked"
    L4_3(L5_3, L6_3)
    ::lbl_84::
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = self
    L0_3 = L0_3.menuBtnEnabled
    if L0_3 then
      L0_3 = L7_2
      L0_3()
      L0_3 = self
      L0_3 = L0_3.highlightScreenshotTransition
      if L0_3 then
        L0_3 = transition
        L0_3 = L0_3.cancel
        L1_3 = self
        L1_3 = L1_3.highlightScreenshotTransition
        L0_3(L1_3)
        L0_3 = self
        L0_3.highlightScreenshotTransition = nil
      end
      L0_3 = self
      L0_3 = L0_3.highlightScreenshotImg
      if L0_3 then
        L0_3 = self
        L0_3 = L0_3.highlightScreenshotImg
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = self
        L0_3.highlightScreenshotImg = nil
      end
      L0_3 = self
      L0_3 = L0_3.configuration
      L0_3 = L0_3.highlight_screenshot_button
      if L0_3 then
        L0_3 = self
        L0_3 = L0_3.configuration
        L0_3.highlight_screenshot_button = false
        L0_3 = self
        L0_3 = L0_3.configuration
        L1_3 = L0_3
        L0_3 = L0_3.saveConfiguration
        L0_3(L1_3)
      end
      L0_3 = self
      L0_3 = L0_3.audioController
      L1_3 = L0_3
      L0_3 = L0_3.play
      L2_3 = "camera"
      L0_3(L1_3, L2_3)
      L0_3 = self
      L0_3 = L0_3.screenshotController
      L1_3 = L0_3
      L0_3 = L0_3.takeScreenshot
      L0_3(L1_3)
      L0_3 = system
      L0_3 = L0_3.getTimer
      L0_3 = L0_3()
      L1_3 = self
      L1_3 = L1_3.gameStartTime
      L0_3 = L0_3 - L1_3
      L1_3 = self
      L1_3 = L1_3.savedGameStateRunTime
      L0_3 = L0_3 + L1_3
      L1_3 = L13_1
      L1_3 = L1_3.newScreenshotView
      L2_3 = self
      L2_3 = L2_3.screenshotController
      L3_3 = self
      L3_3 = L3_3.discoveryAccountant
      L4_3 = L0_3
      L5_3 = L6_2
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L3_3 = L1_3
      L2_3 = L1_3.show
      L2_3(L3_3)
    end
    L0_3 = true
    return L0_3
  end
  
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.orientationController
    L2_3 = L1_3
    L1_3 = L1_3.simulate
    L3_3 = A0_3.orientationController
    L3_3 = L3_3.current
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.orientationController
    L2_3 = L1_3
    L1_3 = L1_3.simulate
    L3_3 = A0_3.orientationController
    L3_3 = L3_3.portrait
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.orientationController
    L1_3.orientationLocked = true
  end
  
  L21_2.lockGamePortrait = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3
    L1_3 = A0_3.orientationController
    L1_3.orientationLocked = false
  end
  
  L21_2.unlockGame = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = newBackground
    L2_3 = A0_3.configuration
    L3_3 = A0_3.screen
    L1_3 = L1_3(L2_3, L3_3)
    A0_3.background = L1_3
  end
  
  L21_2.initBackground = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = UI_PIC_DIR
    L3_3 = "buttons_bkg.png"
    L2_3 = L2_3 .. L3_3
    L1_3 = L1_3(L2_3)
    L3_3 = L1_3
    L2_3 = L1_3.setReferencePoint
    L4_3 = display
    L4_3 = L4_3.TopLeftReferencePoint
    L2_3(L3_3, L4_3)
    L1_3.x = 0
    L2_3 = WORLD_HEIGHT
    L2_3 = L2_3 - 7
    L1_3.y = L2_3
    L2_3 = SCREEN_CONTROL_PANEL
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = L1_1
    L2_3 = L2_3.newButton
    L3_3 = {}
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_msg.png"
    L4_3 = L4_3 .. L5_3
    L3_3.default = L4_3
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_msg_on.png"
    L4_3 = L4_3 .. L5_3
    L3_3.over = L4_3
    L4_3 = L10_2
    L3_3.onRelease = L4_3
    L4_3 = SCREEN_CONTROL_PANEL
    L3_3.layer = L4_3
    L2_3 = L2_3(L3_3)
    A0_3.menuBtnMessage = L2_3
    L2_3 = A0_3.menuBtnMessage
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 3
    L4_3 = L15_1
    L3_3 = L3_3 - L4_3
    L4_3 = L16_1
    L4_3 = 2 * L4_3
    L3_3 = L3_3 + L4_3
    L2_3.x = L3_3
    L2_3 = A0_3.menuBtnMessage
    L3_3 = L17_1
    L2_3.y = L3_3
    L2_3 = L1_1
    L2_3 = L2_3.newButton
    L3_3 = {}
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_pic.png"
    L4_3 = L4_3 .. L5_3
    L3_3.default = L4_3
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_pic_on.png"
    L4_3 = L4_3 .. L5_3
    L3_3.over = L4_3
    L4_3 = L20_2
    L3_3.onRelease = L4_3
    L4_3 = SCREEN_CONTROL_PANEL
    L3_3.layer = L4_3
    L2_3 = L2_3(L3_3)
    A0_3.menuBtnPicture = L2_3
    L2_3 = A0_3.menuBtnPicture
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 2
    L2_3.x = L3_3
    L2_3 = A0_3.menuBtnPicture
    L3_3 = L17_1
    L2_3.y = L3_3
    L2_3 = L1_1
    L2_3 = L2_3.newButton
    L3_3 = {}
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_inf.png"
    L4_3 = L4_3 .. L5_3
    L3_3.default = L4_3
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_inf_on.png"
    L4_3 = L4_3 .. L5_3
    L3_3.over = L4_3
    L4_3 = L16_2
    L3_3.onRelease = L4_3
    L4_3 = SCREEN_CONTROL_PANEL
    L3_3.layer = L4_3
    L2_3 = L2_3(L3_3)
    A0_3.menuBtnInfo = L2_3
    L2_3 = A0_3.menuBtnInfo
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 3
    L3_3 = L3_3 * 2
    L4_3 = L15_1
    L3_3 = L3_3 + L4_3
    L4_3 = L16_1
    L4_3 = 2 * L4_3
    L3_3 = L3_3 - L4_3
    L2_3.x = L3_3
    L2_3 = A0_3.menuBtnInfo
    L3_3 = L17_1
    L2_3.y = L3_3
    L2_3 = L1_1
    L2_3 = L2_3.newButton
    L3_3 = {}
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_set.png"
    L4_3 = L4_3 .. L5_3
    L3_3.default = L4_3
    L4_3 = UI_PIC_DIR
    L5_3 = "menu_set_on.png"
    L4_3 = L4_3 .. L5_3
    L3_3.over = L4_3
    L4_3 = L11_2
    L3_3.onRelease = L4_3
    L4_3 = SCREEN_CONTROL_PANEL
    L3_3.layer = L4_3
    L2_3 = L2_3(L3_3)
    A0_3.menuBtnSettings = L2_3
    L2_3 = A0_3.menuBtnSettings
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 3
    L4_3 = L16_1
    L3_3 = L3_3 + L4_3
    L2_3.x = L3_3
    L2_3 = A0_3.menuBtnSettings
    L3_3 = L18_1
    L2_3.y = L3_3
    L2_3 = L8_2
    L2_3()
  end
  
  L21_2.initControlPanel = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L9_1
    L1_3 = L1_3.newHappinessBar
    L1_3 = L1_3()
    A0_3.happinessBar = L1_3
    L1_3 = A0_3.happinessBar
    L2_3 = L1_3
    L1_3 = L1_3.update
    L3_3 = A0_3.happiness
    L1_3(L2_3, L3_3)
  end
  
  L21_2.initHappinessBar = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L10_1
    L1_3 = L1_3.newAnimDiscoveryAccountant
    L2_3 = A0_3.configuration
    L3_3 = L15_2
    L4_3 = L18_2
    L5_3 = L19_2
    L6_3 = L17_2
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    A0_3.discoveryAccountant = L1_3
  end
  
  L21_2.initDiscoveryAccountant = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = newAnimegg
    L2_3 = A0_3.configuration
    L3_3 = nil
    L4_3 = A0_3.happiness
    L5_3 = A0_3.happinessBar
    L6_3 = A0_3.discoveryAccountant
    L7_3 = A0_3.audioController
    L8_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    A0_3.animegg = L1_3
  end
  
  L21_2.initAnimegg = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3
    L1_3 = L12_1
    L1_3 = L1_3.newScreenshotController
    L2_3 = A0_3.orientationController
    L1_3 = L1_3(L2_3)
    A0_3.screenshotController = L1_3
  end
  
  L21_2.initScreenshotController = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L3_1
    L1_3 = L1_3.newOrientationController
    L2_3 = A0_3.animegg
    L3_3 = A0_3.background
    L4_3 = {}
    L5_3 = A0_3.clockHandler
    L6_3 = A0_3.happinessBar
    L7_3 = A0_3.discoveryAccountant
    L4_3[1] = L5_3
    L4_3[2] = L6_3
    L4_3[3] = L7_3
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    A0_3.orientationController = L1_3
    L1_3 = L7_1
    L1_3 = L1_3.newShakeDetector
    L2_3 = A0_3.animegg
    L1_3 = L1_3(L2_3)
    A0_3.shakeDetector = L1_3
    L1_3 = A0_3.animegg
    L2_3 = A0_3.orientationController
    L1_3.orientationController = L2_3
    L1_3 = isSimulator
    if L1_3 then
      L1_3 = L5_1
      L1_3 = L1_3.newAccelerometerSimulator
      L2_3 = A0_3.orientationController
      L3_3 = A0_3.shakeDetector
      L1_3 = L1_3(L2_3, L3_3)
      A0_3.accelSim = L1_3
    end
  end
  
  L21_2.initAccelerometer = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = system
    L1_3 = L1_3.activate
    L2_3 = "multitouch"
    L1_3(L2_3)
    L1_3 = L4_1
    L1_3 = L1_3.newTouchGestureDetector
    L2_3 = A0_3.animegg
    L3_3 = A0_3.background
    L4_3 = A0_3.orientationController
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    A0_3.touchGestureDetector = L1_3
    L1_3 = isSimulator
    if L1_3 then
      L1_3 = L6_1
      L1_3 = L1_3.newTouchSimulator
      L2_3 = A0_3.touchGestureDetector
      L1_3 = L1_3(L2_3)
      A0_3.touchSim = L1_3
    end
  end
  
  L21_2.initTouchEvents = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L8_1
    L1_3 = L1_3.newClockHandler
    L2_3 = A0_3.animegg
    L3_3 = A0_3.configuration
    L1_3 = L1_3(L2_3, L3_3)
    A0_3.clockHandler = L1_3
  end
  
  L21_2.initTimeEvents = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = system
    L1_3 = L1_3.setAccelerometerInterval
    L2_3 = 50
    L1_3(L2_3)
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.addEventListener
    L3_3 = "accelerometer"
    L4_3 = A0_3.orientationController
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.addEventListener
    L3_3 = "accelerometer"
    L4_3 = A0_3.shakeDetector
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.addEventListener
    L3_3 = "touch"
    L4_3 = A0_3.touchGestureDetector
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L21_2.startInputEvents = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = system
    L1_3 = L1_3.setAccelerometerInterval
    L2_3 = 10
    L1_3(L2_3)
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "accelerometer"
    L4_3 = A0_3.orientationController
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "accelerometer"
    L4_3 = A0_3.shakeDetector
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "touch"
    L4_3 = A0_3.touchGestureDetector
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L21_2.stopInputEvents = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A4_2
    if L1_3 then
      L1_3 = L12_2
      L1_3()
    end
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.addEventListener
    L3_3 = "memoryWarning"
    L4_3 = A0_3.animegg
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_3.background
    L2_3 = L1_3
    L1_3 = L1_3.play
    L1_3(L2_3)
    L1_3 = A0_3.animegg
    L2_3 = L1_3
    L1_3 = L1_3.play
    L1_3(L2_3)
    L2_3 = A0_3
    L1_3 = A0_3.startInputEvents
    L1_3(L2_3)
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    A0_3.gameStartTime = L1_3
    L1_3 = L14_2
    L1_3()
    L1_3 = isSimulator
    if L1_3 then
      function L1_3()
        local L0_4, L1_4, L2_4
        
        L0_4 = A0_3
        L0_4 = L0_4.orientationController
        L1_4 = L0_4
        L0_4 = L0_4.simulate
        L2_4 = A0_3
        L2_4 = L2_4.orientationController
        L2_4 = L2_4.landscapeLeft
        L0_4(L1_4, L2_4)
      end
    end
  end
  
  L21_2.start = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3
    L1_3 = L6_2
    L1_3()
    L1_3 = A0_3.discoveryAccountant
    L2_3 = L1_3
    L1_3 = L1_3.resume
    L1_3(L2_3)
    L1_3 = A0_3.clockHandler
    L2_3 = L1_3
    L1_3 = L1_3.resume
    L1_3(L2_3)
  end
  
  L21_2.resume = L22_2
  L21_2 = self
  
  function L22_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.stopInputEvents
    L1_3(L2_3)
    L1_3 = A0_3.animegg
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.background
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.orientationController
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.touchGestureDetector
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.discoveryAccountant
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.happinessBar
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.clockHandler
    L2_3 = L1_3
    L1_3 = L1_3.destroy
    L1_3(L2_3)
    L1_3 = A0_3.accelSim
    if L1_3 then
      L1_3 = A0_3.accelSim
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
    end
    A0_3.orientationController = nil
    A0_3.touchGestureDetector = nil
    A0_3.shakeDetector = nil
    A0_3.accelSim = nil
    A0_3.touchSim = nil
    A0_3.clockHandler = nil
    A0_3.happinessBar = nil
    A0_3.discoveryAccountant = nil
    A0_3.screenshotController = nil
    A0_3.configuration = nil
  end
  
  L21_2.destroy = L22_2
  
  function L21_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L5_2
    L2_3 = string
    L2_3 = L2_3.format
    L3_3 = "SYSTEM EVENT: %s"
    L4_3 = A0_3.type
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_3.type
    if L1_3 ~= "applicationSuspend" then
      L1_3 = A0_3.type
      if L1_3 ~= "applicationExit" then
        goto lbl_43
      end
    end
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L2_3 = self
    L2_3 = L2_3.gameStartTime
    L1_3 = L1_3 - L2_3
    L2_3 = self
    L2_3 = L2_3.savedGameStateRunTime
    L1_3 = L1_3 + L2_3
    L2_3 = self
    L2_3 = L2_3.discoveryAccountant
    L3_3 = L2_3
    L2_3 = L2_3.saveState
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = platformIsAndroid
    if L2_3 then
      L2_3 = A1_2
      L3_3 = L2_3
      L2_3 = L2_3.stopAllSoundsAndMusic
      L2_3(L3_3)
    end
    L2_3 = self
    L2_3 = L2_3.animegg
    L3_3 = L2_3
    L2_3 = L2_3.memoryWarning
    L2_3(L3_3)
    L2_3 = self
    L2_3 = L2_3.audioController
    L3_3 = L2_3
    L2_3 = L2_3.memoryWarning
    L2_3(L3_3)
    goto lbl_52
    ::lbl_43::
    L1_3 = A0_3.type
    if L1_3 == "applicationResume" then
      L1_3 = platformIsAndroid
      if L1_3 then
        L1_3 = A1_2
        L2_3 = L1_3
        L1_3 = L1_3.playBackgroundMusic
        L1_3(L2_3)
      end
    end
    ::lbl_52::
  end
  
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initControlPanel
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initBackground
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initHappinessBar
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initDiscoveryAccountant
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initAnimegg
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initTimeEvents
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initAccelerometer
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initTouchEvents
  L22_2(L23_2)
  L22_2 = self
  L23_2 = L22_2
  L22_2 = L22_2.initScreenshotController
  L22_2(L23_2)
  if A3_2 then
    L22_2 = self
    L23_2 = self
    L23_2 = L23_2.discoveryAccountant
    L24_2 = L23_2
    L23_2 = L23_2.loadState
    L23_2 = L23_2(L24_2)
    L22_2.savedGameStateRunTime = L23_2
  end
  L22_2 = Runtime
  L23_2 = L22_2
  L22_2 = L22_2.addEventListener
  L24_2 = "system"
  L25_2 = L21_2
  L22_2(L23_2, L24_2, L25_2)
  L22_2 = self
  return L22_2
end

newGame = L27_1
