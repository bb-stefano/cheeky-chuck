local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = require
L1_1 = "anim"
L0_1(L1_1)
L0_1 = require
L1_1 = "analytics"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "ui"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "game"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "configuration"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "animdata"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "audioctrl"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "fakeuuid"
L6_1 = L6_1(L7_1)
L7_1 = io
L7_1 = L7_1.output
L7_1 = L7_1()
L8_1 = L7_1
L7_1 = L7_1.setvbuf
L9_1 = "no"
L7_1(L8_1, L9_1)

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = "[main] "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end

L8_1 = "free"
APP_EDITION = L8_1
L8_1 = "1.5"
APP_VERSION = L8_1
L8_1 = L7_1
L9_1 = string
L9_1 = L9_1.format
L10_1 = "application edition=%s, version=%s"
L11_1 = APP_EDITION
L12_1 = APP_VERSION
L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L9_1(L10_1, L11_1, L12_1)
L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
L8_1 = true
IS_RELEASE = L8_1
L8_1 = ""
DEVICE_ID = L8_1
L8_1 = "anim_background_01"
DEFAULT_BACKGROUND = L8_1
L8_1 = 320
WORLD_WIDTH = L8_1
L8_1 = 320
WORLD_HEIGHT = L8_1
L8_1 = 20
GROUND_LEVEL = L8_1
L8_1 = {}
L8_1.x = 160
L8_1.y = 160
CENTER = L8_1
L8_1 = 0.9
FRAME_REFRESH_RATE_FACTOR = L8_1
L8_1 = 100
MAX_HAPPINESS = L8_1
L8_1 = 80
DEFAULT_HAPPINESS = L8_1
L8_1 = 70
OFFENDED_WARN_THRESHOLD = L8_1
L8_1 = 40
OFFENDED_CRITICAL_THRESHOLD = L8_1
L8_1 = 10
OFFENDED_THRESHOLD = L8_1
L8_1 = 71
SNS_BUTTON_AREA_HEIGHT = L8_1
L8_1 = 58
SNS_BUTTON_CANCEL_X = L8_1
L8_1 = display
L8_1 = L8_1.contentWidth
L9_1 = SNS_BUTTON_CANCEL_X
L8_1 = L8_1 - L9_1
SNS_BUTTON_SEND_X = L8_1
L8_1 = 444
SNS_BUTTON_Y = L8_1
L8_1 = SNS_BUTTON_AREA_HEIGHT
CONF_BUTTON_AREA_HEIGHT = L8_1
L8_1 = display
L8_1 = L8_1.contentWidth
L8_1 = L8_1 / 2
CONF_BUTTON_OK_X = L8_1
L8_1 = SNS_BUTTON_Y
CONF_BUTTON_OK_Y = L8_1
L8_1 = system
L8_1 = L8_1.getInfo
L9_1 = "platformName"
L8_1 = L8_1(L9_1)
L8_1 = L8_1 == "Android"
platformIsAndroid = L8_1
L8_1 = system
L8_1 = L8_1.getInfo
L9_1 = "environment"
L8_1 = L8_1(L9_1)
L8_1 = L8_1 == "simulator"
isSimulator = L8_1
L8_1 = system
L8_1 = L8_1.getPreference
L9_1 = "ui"
L10_1 = "language"
L8_1 = L8_1(L9_1, L10_1)
L9_1 = L7_1
L10_1 = string
L10_1 = L10_1.format
L11_1 = "device language=%s"
L12_1 = L8_1
L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L10_1(L11_1, L12_1)
L9_1(L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
L9_1 = string
L9_1 = L9_1.lower
L10_1 = string
L10_1 = L10_1.sub
L11_1 = L8_1
L12_1 = 1
L13_1 = 2
L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L10_1(L11_1, L12_1, L13_1)
L9_1 = L9_1(L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
userPrefLang = L9_1
if L8_1 == "\228\184\173\230\150\135" then
  L9_1 = "zh"
  userPrefLang = L9_1
elseif L8_1 == "\230\151\165\230\156\172\232\170\158" then
  L9_1 = "jp"
  userPrefLang = L9_1
else
  L9_1 = userPrefLang
  if L9_1 == "ja" then
    L9_1 = "jp"
    userPrefLang = L9_1
  else
    L9_1 = platformIsAndroid
    if L9_1 then
      L9_1 = string
      L9_1 = L9_1.len
      L10_1 = L8_1
      L9_1 = L9_1(L10_1)
      L10_1 = string
      L10_1 = L10_1.gsub
      L11_1 = L8_1
      L12_1 = "[^\128-\193]"
      L13_1 = ""
      L10_1, L11_1 = L10_1(L11_1, L12_1, L13_1)
      if L9_1 > L11_1 then
        L12_1 = L7_1
        L13_1 = "device language is not supported, set userPrefLang=en"
        L12_1(L13_1)
        L12_1 = "en"
        userPrefLang = L12_1
      end
    end
  end
end
L9_1 = L7_1
L10_1 = string
L10_1 = L10_1.format
L11_1 = "game language=%s"
L12_1 = userPrefLang
L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L10_1(L11_1, L12_1)
L9_1(L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
L9_1 = ""
ANIM_DATA_DIR = L9_1
L9_1 = "animpic/"
ANIM_PIC_DIR = L9_1
L9_1 = ""
SOUND_DIR = L9_1
L9_1 = "html/"
HTML_DIR = L9_1
L9_1 = "intro/"
INTRO_DIR = L9_1
L9_1 = "hints/"
HINTS_DIR = L9_1
L9_1 = "uipic/"
UI_PIC_DIR = L9_1
L9_1 = 225
DIALOG_TRANSPARENCY = L9_1
L9_1 = "en"
DEFAULT_LOCALIZATION_LANG = L9_1
L9_1 = DEFAULT_LOCALIZATION_LANG
DEFAULT_LOCALIZATION_DIR = L9_1
L9_1 = {}
LOCALIZATION_DIRS = L9_1
L9_1 = LOCALIZATION_DIRS
L10_1 = DEFAULT_LOCALIZATION_DIR
L11_1 = DEFAULT_LOCALIZATION_DIR
L9_1[L10_1] = L11_1
L9_1 = LOCALIZATION_DIRS
L9_1.it = "it"
L9_1 = LOCALIZATION_DIRS
L9_1.jp = "jp"
L9_1 = LOCALIZATION_DIRS
L9_1.zh = "zh"
L9_1 = 200
DISMISS_NATIVE_UI_DELAY = L9_1
L9_1 = "http://itunes.apple.com/app/cheeky-chuck/id487583415?mt=8"
CHEEKY_CHUCK_2_ITUNES_URL = L9_1
L9_1 = "market://details?id=com.eggsist.cheekychuckchamp"
CHEEKY_CHUCK_2_MARKET_URL = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREENSHOT_GROUP = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_BACKGROUND = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_HAPPINESS_BAR = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_CLOCK = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_ANIMEGG = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_FINGERPRINT = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_CONTROL_PANEL = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_SPLASHSCREEN = L9_1
L9_1 = display
L9_1 = L9_1.newGroup
L9_1 = L9_1()
SCREEN_DEBUG = L9_1
L9_1 = SCREENSHOT_GROUP
L10_1 = L9_1
L9_1 = L9_1.insert
L11_1 = SCREEN_BACKGROUND
L9_1(L10_1, L11_1)
L9_1 = SCREENSHOT_GROUP
L10_1 = L9_1
L9_1 = L9_1.insert
L11_1 = SCREEN_ANIMEGG
L9_1(L10_1, L11_1)
L9_1 = SCREENSHOT_GROUP
L10_1 = L9_1
L9_1 = L9_1.insert
L11_1 = SCREEN_FINGERPRINT
L9_1(L10_1, L11_1)
L9_1 = display
L9_1 = L9_1.screenOriginY
if L9_1 < 0 then
  L9_1 = display
  L9_1 = L9_1.newRect
  L10_1 = 0
  L11_1 = display
  L11_1 = L11_1.screenOriginY
  L12_1 = WORLD_WIDTH
  L13_1 = math
  L13_1 = L13_1.abs
  L14_1 = display
  L14_1 = L14_1.screenOriginY
  L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L13_1(L14_1)
  L9_1 = L9_1(L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
  L10_1 = display
  L10_1 = L10_1.newRect
  L11_1 = 0
  L12_1 = display
  L12_1 = L12_1.contentHeight
  L13_1 = WORLD_WIDTH
  L14_1 = math
  L14_1 = L14_1.abs
  L15_1 = display
  L15_1 = L15_1.screenOriginY
  L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L14_1(L15_1)
  L10_1 = L10_1(L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
  L12_1 = L9_1
  L11_1 = L9_1.setFillColor
  L13_1 = 0
  L14_1 = 0
  L15_1 = 0
  L16_1 = 255
  L11_1(L12_1, L13_1, L14_1, L15_1, L16_1)
  L12_1 = L10_1
  L11_1 = L10_1.setFillColor
  L13_1 = 0
  L14_1 = 0
  L15_1 = 0
  L16_1 = 255
  L11_1(L12_1, L13_1, L14_1, L15_1, L16_1)
end
L9_1 = 50
L10_1 = 12
L11_1 = 20
L12_1 = 31
L13_1 = "anim_background_christmas_01"
L14_1 = 2
L15_1 = 10
L16_1 = 20
L17_1 = 2013
L18_1 = "anim_background_newyear"
L19_1 = 2
L20_1 = 13
L21_1 = 15
L22_1 = "anim_background_valentinesday"

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = print
  L1_2 = "----- GLOBAL VARS -----"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = _G
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = print
    L6_2 = "global var: "
    L7_2 = L3_2
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
  L0_2 = print
  L1_2 = "----- END GLOBAL VARS -----"
  L0_2(L1_2)
end

L24_1 = isSimulator
if L24_1 then
end

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L2_2.game = nil
  L2_2.isFirstGame = false
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = system
    L2_3 = L2_3.pathForFile
    L3_3 = ANIM_DATA_DIR
    L4_3 = A0_3
    L5_3 = "_"
    L6_3 = userPrefLang
    L7_3 = ".data"
    L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = system
      L2_3 = L2_3.pathForFile
      L3_3 = ANIM_DATA_DIR
      L4_3 = A0_3
      L5_3 = "_"
      L6_3 = userPrefLang
      L7_3 = ".data"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
      L2_3 = L2_3(L3_3)
      L1_3 = L2_3
    else
      L2_3 = system
      L2_3 = L2_3.pathForFile
      L3_3 = ANIM_DATA_DIR
      L4_3 = A0_3
      L5_3 = "_"
      L6_3 = DEFAULT_LOCALIZATION_LANG
      L7_3 = ".data"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = system
        L2_3 = L2_3.pathForFile
        L3_3 = ANIM_DATA_DIR
        L4_3 = A0_3
        L5_3 = "_"
        L6_3 = DEFAULT_LOCALIZATION_LANG
        L7_3 = ".data"
        L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
        L2_3 = L2_3(L3_3)
        L1_3 = L2_3
      else
        L2_3 = L7_1
        L3_3 = "FATAL no splashscreen animation data file found!"
        L2_3(L3_3)
        L2_3 = os
        L2_3 = L2_3.exit
        L3_3 = -1
        L2_3(L3_3)
      end
    end
    L2_3 = L7_1
    L3_3 = string
    L3_3 = L3_3.format
    L4_3 = "splashscreen path: %s"
    L5_3 = L1_3
    L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3, L5_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    return L1_3
  end
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = false
    L1_3 = L2_2
    L1_3 = L1_3.game
    if not L1_3 then
      L0_3 = true
      L1_3 = L2_2
      L2_3 = L2_1
      L2_3 = L2_3.newGame
      L3_3 = A0_2
      L4_3 = A1_2
      L5_3 = L2_2
      L6_3 = true
      L7_3 = L2_2
      L7_3 = L7_3.isFirstGame
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L1_3.game = L2_3
    end
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "enterFrame"
    L4_3 = L2_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L2_2
    L1_3 = L1_3.splashBgImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L2_2
    L1_3.splashBgImg = nil
    L1_3 = L2_2
    L1_3 = L1_3.splashLightImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L2_2
    L1_3.splashLightImg = nil
    if L0_3 then
      L1_3 = L2_2
      L1_3 = L1_3.game
      L2_3 = L1_3
      L1_3 = L1_3.start
      L1_3(L2_3)
    else
      L1_3 = L2_2
      L1_3 = L1_3.game
      L2_3 = L1_3
      L1_3 = L1_3.resume
      L1_3(L2_3)
    end
  end
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L2_2
    L0_3 = L0_3.game
    if L0_3 then
      L0_3 = L2_2
      L0_3 = L0_3.game
      L1_3 = L0_3
      L0_3 = L0_3.destroy
      L0_3(L1_3)
    end
    L0_3 = os
    L0_3 = L0_3.date
    L1_3 = "*t"
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3.month
    L2_3 = L10_1
    if L1_3 == L2_3 then
      L1_3 = L0_3.day
      L2_3 = L11_1
      if L1_3 >= L2_3 then
        L1_3 = L0_3.day
        L2_3 = L12_1
        if L1_3 <= L2_3 then
          L1_3 = A0_2
          L1_3 = L1_3.background
          L2_3 = L13_1
          if L1_3 == L2_3 then
        end
      end
    end
    else
      L1_3 = L0_3.year
      L2_3 = L17_1
      if L1_3 == L2_3 then
        L1_3 = L0_3.month
        L2_3 = L14_1
        if L1_3 == L2_3 then
          L1_3 = L0_3.day
          L2_3 = L15_1
          if L1_3 >= L2_3 then
            L1_3 = L0_3.day
            L2_3 = L16_1
            if L1_3 <= L2_3 then
              L1_3 = A0_2
              L1_3 = L1_3.background
              L2_3 = L18_1
              if L1_3 == L2_3 then
            end
          end
        end
      end
      else
        L1_3 = L0_3.month
        L2_3 = L19_1
        if L1_3 == L2_3 then
          L1_3 = L0_3.day
          L2_3 = L20_1
          if L1_3 >= L2_3 then
            L1_3 = L0_3.day
            L2_3 = L21_1
            if L1_3 <= L2_3 then
              L1_3 = A0_2
              L1_3 = L1_3.background
              L2_3 = L22_1
              if L1_3 == L2_3 then
            end
          end
        end
        else
          L1_3 = A0_2
          L2_3 = DEFAULT_BACKGROUND
          L1_3.background = L2_3
        end
      end
    end
    L1_3 = A0_2
    L1_3.background_2_unlocked = false
    L1_3 = A0_2
    L1_3.background_3_unlocked = false
    L1_3 = A0_2
    L1_3.punch_banner_ad_last_show_date = 0
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.saveConfiguration
    L1_3(L2_3)
    L1_3 = L2_2
    L2_3 = L2_1
    L2_3 = L2_3.newGame
    L3_3 = A0_2
    L4_3 = A1_2
    L5_3 = L2_2
    L6_3 = false
    L7_3 = L2_2
    L7_3 = L7_3.isFirstGame
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3.game = L2_3
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "enterFrame"
    L4_3 = L2_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L2_2
    L1_3 = L1_3.splashBgImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L2_2
    L1_3.splashBgImg = nil
    L1_3 = L2_2
    L1_3 = L1_3.splashLightImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L2_2
    L1_3.splashLightImg = nil
    L1_3 = L2_2
    L1_3 = L1_3.game
    L2_3 = L1_3
    L1_3 = L1_3.start
    L1_3(L2_3)
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = LOCALIZATION_DIRS
    L3_3 = userPrefLang
    L2_3 = L2_3[L3_3]
    if not L2_3 then
      L2_3 = DEFAULT_LOCALIZATION_DIR
    end
    
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = A1_2
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = "click"
      L0_4(L1_4, L2_4)
      L0_4 = L1_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = L0_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = L2_2
      L0_4 = L0_4.splashTransitionTimeline
      L1_4 = L0_4
      L0_4 = L0_4.hide
      L0_4(L1_4)
      L0_4 = L2_2
      L0_4 = L0_4.splashTransitionTimeline
      L1_4 = L0_4
      L0_4 = L0_4.destroy
      L0_4(L1_4)
      L0_4 = A0_2
      L0_4 = L0_4.intro_shown
      if not L0_4 then
        L0_4 = L2_2
        L0_4.isFirstGame = true
        L0_4 = A0_2
        L0_4.intro_shown = true
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4.saveConfiguration
        L0_4(L1_4)
      end
      L0_4 = L4_2
      L0_4()
      L0_4 = true
      return L0_4
    end
    
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = A1_2
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = "click"
      L0_4(L1_4, L2_4)
      L0_4 = L1_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = display
      L0_4 = L0_4.newImage
      L1_4 = INTRO_DIR
      L2_4 = L2_3
      L3_4 = "/intro3.png"
      L1_4 = L1_4 .. L2_4 .. L3_4
      L0_4 = L0_4(L1_4)
      L1_3 = L0_4
      L0_4 = L1_3
      L1_4 = display
      L1_4 = L1_4.contentWidth
      L1_4 = L1_4 / 2
      L1_4 = L1_4 - 7
      L0_4.x = L1_4
      L0_4 = L1_3
      L0_4.y = 330
      L0_4 = L0_3
      L1_4 = L3_3
      L0_4._onRelease = L1_4
      L0_4 = true
      return L0_4
    end
    
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = A1_2
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = "click"
      L0_4(L1_4, L2_4)
      L0_4 = L1_3
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
      L0_4 = display
      L0_4 = L0_4.newImage
      L1_4 = INTRO_DIR
      L2_4 = L2_3
      L3_4 = "/intro2.png"
      L1_4 = L1_4 .. L2_4 .. L3_4
      L0_4 = L0_4(L1_4)
      L1_3 = L0_4
      L0_4 = L1_3
      L1_4 = display
      L1_4 = L1_4.contentWidth
      L1_4 = L1_4 / 2
      L1_4 = L1_4 + 1
      L0_4.x = L1_4
      L0_4 = L1_3
      L0_4.y = 322
      L0_4 = L0_3
      L1_4 = L4_3
      L0_4._onRelease = L1_4
      L0_4 = true
      return L0_4
    end
    
    L6_3 = display
    L6_3 = L6_3.newImage
    L7_3 = INTRO_DIR
    L8_3 = L2_3
    L9_3 = "/intro1.png"
    L7_3 = L7_3 .. L8_3 .. L9_3
    L6_3 = L6_3(L7_3)
    L1_3 = L6_3
    L6_3 = display
    L6_3 = L6_3.contentWidth
    L6_3 = L6_3 / 2
    L1_3.x = L6_3
    L1_3.y = 340
    L6_3 = L1_1
    L6_3 = L6_3.newButton
    L7_3 = {}
    L8_3 = UI_PIC_DIR
    L9_3 = "splash_play.png"
    L8_3 = L8_3 .. L9_3
    L7_3.default = L8_3
    L8_3 = UI_PIC_DIR
    L9_3 = "splash_play_on.png"
    L8_3 = L8_3 .. L9_3
    L7_3.over = L8_3
    L7_3.onRelease = L5_3
    L6_3 = L6_3(L7_3)
    L0_3 = L6_3
    L6_3 = display
    L6_3 = L6_3.contentWidth
    L6_3 = L6_3 - 35
    L0_3.x = L6_3
    L6_3 = display
    L6_3 = L6_3.contentHeight
    L6_3 = L6_3 - 35
    L0_3.y = L6_3
  end
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L0_3 = L0_3.btnNewGame
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3.btnNewGame = nil
    L0_3 = L2_2
    L0_3 = L0_3.btnShowIntro
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3.btnShowIntro = nil
    L0_3 = L2_2
    L0_3 = L0_3.btnResumeGame
    if L0_3 then
      L0_3 = L2_2
      L0_3 = L0_3.btnResumeGame
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = L2_2
      L0_3.btnResumeGame = nil
    end
    L0_3 = L2_2
    L0_3 = L0_3.splashTimeline
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.splashTimeline
    L1_3 = L0_3
    L0_3 = L0_3.hide
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.splashTimeline
    L1_3 = L0_3
    L0_3 = L0_3.destroy
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3.splashTimeline = nil
  end
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_1
    L1_3 = "show intro"
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.splashVerImg
    if L0_3 then
      function L0_3()
        local L0_4, L1_4
        
        L0_4 = L2_2
        L0_4 = L0_4.splashVerImg
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = L2_2
        L0_4.splashVerImg = nil
      end
      
      L1_3 = transition
      L1_3 = L1_3.to
      L2_3 = L2_2
      L2_3 = L2_3.splashVerImg
      L3_3 = {}
      L3_3.time = 800
      L3_3.alpha = 0
      L3_3.onComplete = L0_3
      L1_3(L2_3, L3_3)
    end
    L0_3 = L7_2
    L0_3()
    L0_3 = L2_2
    L0_3 = L0_3.splashTransitionTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L6_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = true
    return L0_3
  end
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.intro_shown
    if not L0_3 then
      L0_3 = L8_2
      L0_3()
    else
      L0_3 = L7_1
      L1_3 = "new game"
      L0_3(L1_3)
      L0_3 = L2_2
      L0_3 = L0_3.splashVerImg
      if L0_3 then
        L0_3 = L2_2
        L0_3 = L0_3.splashVerImg
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = L2_2
        L0_3.splashVerImg = nil
      end
      L0_3 = L2_2
      L0_3.isFirstGame = true
      L0_3 = L7_2
      L0_3()
      L0_3 = L5_2
      L0_3()
    end
    L0_3 = true
    return L0_3
  end
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L7_1
    L1_3 = "resume game"
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.splashVerImg
    if L0_3 then
      L0_3 = L2_2
      L0_3 = L0_3.splashVerImg
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = L2_2
      L0_3.splashVerImg = nil
    end
    L0_3 = L7_2
    L0_3()
    L0_3 = L4_2
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = UI_PIC_DIR
      L2_4 = A0_3
      L3_4 = "_"
      L4_4 = A0_4
      L5_4 = ".png"
      L1_4 = L1_4 .. L2_4 .. L3_4 .. L4_4 .. L5_4
      return L1_4
    end
    
    L2_3 = L1_3
    L3_3 = userPrefLang
    L2_3 = L2_3(L3_3)
    L3_3 = system
    L3_3 = L3_3.pathForFile
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    if not L3_3 then
      L3_3 = L1_3
      L4_3 = DEFAULT_LOCALIZATION_LANG
      L3_3 = L3_3(L4_3)
      L2_3 = L3_3
    else
      L3_3 = platformIsAndroid
      if L3_3 then
        L3_3 = display
        L3_3 = L3_3.newImage
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L4_3 = L1_3
          L5_3 = DEFAULT_LOCALIZATION_LANG
          L4_3 = L4_3(L5_3)
          L2_3 = L4_3
        else
          L5_3 = L3_3
          L4_3 = L3_3.removeSelf
          L4_3(L5_3)
          L3_3 = nil
        end
      end
    end
    return L2_3
  end
  
  function L12_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.lastLightRotTime
    if L2_3 == 0 then
      L2_3 = A1_3.time
      A0_3.lastLightRotTime = L2_3
    else
      L2_3 = A1_3.time
      L3_3 = A0_3.lastLightRotTime
      L2_3 = L2_3 - L3_3
      L3_3 = L9_1
      if L2_3 < L3_3 then
        return
      end
    end
    L2_3 = A0_3.splashLightImg
    L3_3 = L2_3
    L2_3 = L2_3.rotate
    L4_3 = 1
    L2_3(L3_3, L4_3)
    L2_3 = A1_3.time
    A0_3.lastLightRotTime = L2_3
  end
  
  L2_2.enterFrame = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = SCREEN_SPLASHSCREEN
    L3_3 = UI_PIC_DIR
    L4_3 = "splash_screen_background.png"
    L3_3 = L3_3 .. L4_3
    L1_3 = L1_3(L2_3, L3_3)
    A0_3.splashBgImg = L1_3
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = SCREEN_SPLASHSCREEN
    L3_3 = UI_PIC_DIR
    L4_3 = "splash_screen_version.png"
    L3_3 = L3_3 .. L4_3
    L1_3 = L1_3(L2_3, L3_3)
    A0_3.splashVerImg = L1_3
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = SCREEN_SPLASHSCREEN
    L3_3 = UI_PIC_DIR
    L4_3 = "splash_screen_light.png"
    L3_3 = L3_3 .. L4_3
    L4_3 = 0
    L5_3 = 0
    L6_3 = true
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    A0_3.splashLightImg = L1_3
    L1_3 = A0_3.splashVerImg
    L2_3 = L1_3
    L1_3 = L1_3.setReferencePoint
    L3_3 = display
    L3_3 = L3_3.TopLeftReferencePoint
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.splashVerImg
    L1_3.alpha = 0.5
    L1_3 = A0_3.splashVerImg
    L1_3.x = 5
    L1_3 = A0_3.splashVerImg
    L1_3.y = 345
    L1_3 = A0_3.splashLightImg
    L1_3.x = 127
    L1_3 = A0_3.splashLightImg
    L1_3.y = 338
    L1_3 = L4_1
    L1_3 = L1_3.readAnimDataFile
    L2_3 = L3_2
    L3_3 = "anim_splash_page"
    L2_3, L3_3, L4_3, L5_3, L6_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    A0_3.splashTimeline = L1_3
    L1_3 = A0_3.splashTimeline
    L2_3 = L1_3
    L1_3 = L1_3.setConfiguration
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
    L1_3 = SCREEN_SPLASHSCREEN
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = A0_3.splashTimeline
    L3_3 = L3_3.group
    L1_3(L2_3, L3_3)
    L1_3 = L4_1
    L1_3 = L1_3.readAnimDataFile
    L2_3 = L3_2
    L3_3 = "anim_splash_page_transition"
    L2_3, L3_3, L4_3, L5_3, L6_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    A0_3.splashTransitionTimeline = L1_3
    L1_3 = A0_3.splashTransitionTimeline
    L2_3 = L1_3
    L1_3 = L1_3.setConfiguration
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
    L1_3 = SCREEN_SPLASHSCREEN
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = A0_3.splashTransitionTimeline
    L3_3 = L3_3.group
    L1_3(L2_3, L3_3)
    A0_3.btnNewGame = nil
    A0_3.btnResumeGame = nil
    A0_3.btnShowIntro = nil
    A0_3.lastLightRotTime = 0
  end
  
  L2_2.init = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = 250
    L2_3 = 395
    L3_3 = L1_3
    L4_3 = L2_3 + 50
    L5_3 = 40
    L6_3 = L4_3 - 5
    L7_3 = A0_3.splashTimeline
    L8_3 = L7_3
    L7_3 = L7_3.play
    L9_3 = 0
    L7_3(L8_3, L9_3)
    L7_3 = L1_1
    L7_3 = L7_3.newButton
    L8_3 = {}
    L9_3 = L11_2
    L10_3 = "splash_new"
    L9_3 = L9_3(L10_3)
    L8_3.default = L9_3
    L9_3 = L11_2
    L10_3 = "splash_new_on"
    L9_3 = L9_3(L10_3)
    L8_3.over = L9_3
    
    function L9_3()
      local L0_4, L1_4, L2_4
      L0_4 = A1_2
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = "click"
      L0_4(L1_4, L2_4)
      L0_4 = L9_2
      L0_4()
    end
    
    L8_3.onRelease = L9_3
    L9_3 = SCREEN_SPLASHSCREEN
    L8_3.layer = L9_3
    L7_3 = L7_3(L8_3)
    A0_3.btnNewGame = L7_3
    L7_3 = A0_2
    L7_3 = L7_3.intro_shown
    if L7_3 then
      L7_3 = L1_1
      L7_3 = L7_3.newButton
      L8_3 = {}
      L9_3 = L11_2
      L10_3 = "splash_resume"
      L9_3 = L9_3(L10_3)
      L8_3.default = L9_3
      L9_3 = L11_2
      L10_3 = "splash_resume_on"
      L9_3 = L9_3(L10_3)
      L8_3.over = L9_3
      
      function L9_3()
        local L0_4, L1_4, L2_4
        L0_4 = A1_2
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = "click"
        L0_4(L1_4, L2_4)
        L0_4 = L10_2
        L0_4()
      end
      
      L8_3.onRelease = L9_3
      L9_3 = SCREEN_SPLASHSCREEN
      L8_3.layer = L9_3
      L7_3 = L7_3(L8_3)
      A0_3.btnResumeGame = L7_3
      L7_3 = A0_3.btnNewGame
      L7_3.x = L1_3
      L7_3 = A0_3.btnNewGame
      L7_3.y = L2_3
      L7_3 = A0_3.btnResumeGame
      L7_3.x = L3_3
      L7_3 = A0_3.btnResumeGame
      L7_3.y = L4_3
    else
      L7_3 = A0_3.btnNewGame
      L7_3.x = L3_3
      L7_3 = A0_3.btnNewGame
      L7_3.y = L4_3
    end
    L7_3 = L1_1
    L7_3 = L7_3.newButton
    L8_3 = {}
    L9_3 = L11_2
    L10_3 = "splash_help"
    L9_3 = L9_3(L10_3)
    L8_3.default = L9_3
    L9_3 = L11_2
    L10_3 = "splash_help_on"
    L9_3 = L9_3(L10_3)
    L8_3.over = L9_3
    
    function L9_3()
      local L0_4, L1_4, L2_4
      L0_4 = A1_2
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = "click"
      L0_4(L1_4, L2_4)
      L0_4 = L8_2
      L0_4()
    end
    
    L8_3.onRelease = L9_3
    L9_3 = SCREEN_SPLASHSCREEN
    L8_3.layer = L9_3
    L7_3 = L7_3(L8_3)
    A0_3.btnShowIntro = L7_3
    L7_3 = A0_3.btnShowIntro
    L7_3.x = L5_3
    L7_3 = A0_3.btnShowIntro
    L7_3.y = L6_3
    L7_3 = Runtime
    L8_3 = L7_3
    L7_3 = L7_3.addEventListener
    L9_3 = "enterFrame"
    L10_3 = A0_3
    L7_3(L8_3, L9_3, L10_3)
    L7_3 = A1_2
    L8_3 = L7_3
    L7_3 = L7_3.playBackgroundMusic
    L7_3(L8_3)
  end
  
  L2_2.start = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.init
    L1_3(L2_3)
    L2_3 = A0_3
    L1_3 = A0_3.start
    L1_3(L2_3)
  end
  
  L2_2.showWithAnimation = L12_2
  L13_2 = L2_2
  L12_2 = L2_2.init
  L12_2(L13_2)
  return L2_2
end

L25_1 = platformIsAndroid
if not L25_1 then
  L25_1 = display
  L25_1 = L25_1.setStatusBar
  L26_1 = display
  L26_1 = L26_1.HiddenStatusBar
  L25_1(L26_1)
end
L25_1 = IS_RELEASE
if L25_1 then
  L25_1 = L7_1
  L26_1 = "initialize flurry analytics: release key"
  L25_1(L26_1)
  L25_1 = L0_1.init
  L26_1 = "VXCDFZ7Z4MCM1GH4FXC3"
  L25_1(L26_1)
else
  L25_1 = L7_1
  L26_1 = "initialize flurry analytics: testing key"
  L25_1(L26_1)
  L25_1 = L0_1.init
  L26_1 = "91PTK1XD17HJ911NP34S"
  L25_1(L26_1)
end
L25_1 = L3_1.newConfiguration
L25_1 = L25_1()
L27_1 = L25_1
L26_1 = L25_1.loadConfiguration
L26_1(L27_1)
L26_1 = L25_1.uuid
if not L26_1 then
  L26_1 = platformIsAndroid
  if L26_1 then
    L26_1 = tostring
    L27_1 = system
    L27_1 = L27_1.getInfo
    L28_1 = "deviceID"
    L27_1, L28_1, L29_1, L30_1, L31_1 = L27_1(L28_1)
    L26_1 = L26_1(L27_1, L28_1, L29_1, L30_1, L31_1)
    L25_1.uuid = L26_1
  else
    L26_1 = L6_1.fakeUUID
    L26_1 = L26_1()
    L25_1.uuid = L26_1
  end
  L27_1 = L25_1
  L26_1 = L25_1.saveConfiguration
  L26_1(L27_1)
end
L26_1 = L25_1.uuid
DEVICE_ID = L26_1
L26_1 = os
L26_1 = L26_1.date
L27_1 = "*t"
L26_1 = L26_1(L27_1)
L27_1 = L26_1.month
if L27_1 == L10_1 then
  L27_1 = L26_1.day
  if L11_1 <= L27_1 then
    L27_1 = L26_1.day
    if L12_1 >= L27_1 then
      L27_1 = L25_1.christmas_season_special_shown
      if not L27_1 then
        L25_1.background = L13_1
        L25_1.christmas_season_special_shown = true
        L25_1.cny_season_special_shown = false
        L25_1.valentine_season_special_shown = false
        L28_1 = L25_1
        L27_1 = L25_1.saveConfiguration
        L27_1(L28_1)
      end
  end
end
else
  L27_1 = L26_1.month
  if L27_1 == L19_1 then
    L27_1 = L26_1.day
    if L20_1 <= L27_1 then
      L27_1 = L26_1.day
      if L21_1 >= L27_1 then
        L27_1 = L25_1.valentine_season_special_shown
        if not L27_1 then
          L25_1.background = L22_1
          L25_1.christmas_season_special_shown = false
          L25_1.cny_season_special_shown = false
          L25_1.valentine_season_special_shown = true
          L28_1 = L25_1
          L27_1 = L25_1.saveConfiguration
          L27_1(L28_1)
        end
    end
  end
  else
    L27_1 = L26_1.year
    if L27_1 == L17_1 then
      L27_1 = L26_1.month
      if L27_1 == L14_1 then
        L27_1 = L26_1.day
        if L15_1 <= L27_1 then
          L27_1 = L26_1.day
          if L16_1 >= L27_1 then
            L27_1 = L25_1.cny_season_special_shown
            if not L27_1 then
              L25_1.background = L18_1
              L25_1.christmas_season_special_shown = false
              L25_1.cny_season_special_shown = true
              L25_1.valentine_season_special_shown = false
              L28_1 = L25_1
              L27_1 = L25_1.saveConfiguration
              L27_1(L28_1)
            end
        end
      end
    end
    else
      L25_1.christmas_season_special_shown = false
      L25_1.cny_season_special_shown = false
      L25_1.valentine_season_special_shown = false
      L28_1 = L25_1
      L27_1 = L25_1.saveConfiguration
      L27_1(L28_1)
    end
  end
end
L27_1 = L5_1.newAudioController
L28_1 = L25_1
L27_1 = L27_1(L28_1)
L28_1 = Runtime
L29_1 = L28_1
L28_1 = L28_1.addEventListener
L30_1 = "memoryWarning"
L31_1 = L27_1
L28_1(L29_1, L30_1, L31_1)
L28_1 = L24_1
L29_1 = L25_1
L30_1 = L27_1
L28_1 = L28_1(L29_1, L30_1)
L30_1 = L28_1
L29_1 = L28_1.start
L29_1(L30_1)
