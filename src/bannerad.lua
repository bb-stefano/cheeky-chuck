local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = 1
BANNER_PUNCH = L0_1
L0_1 = {}
L1_1 = BANNER_PUNCH
L2_1 = {}
L2_1.en = "banner_en.png"
L2_1.it = "banner_it.png"
L2_1.jp = "banner_jp.png"
L2_1.zh = "banner_zh.png"
L0_1[L1_1] = L2_1
L1_1 = 63
L2_1 = 500
L3_1 = 500
L4_1 = 5000
L5_1 = nil

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if L1_2 == "began" then
    L1_2 = L5_1
    if L1_2 then
      L1_2 = L5_1
      L2_2 = L1_2
      L1_2 = L1_2.dismiss
      L1_2(L2_2)
    end
    L1_2 = platformIsAndroid
    if L1_2 then
      L1_2 = system
      L1_2 = L1_2.openURL
      L2_2 = CHEEKY_CHUCK_2_MARKET_URL
      L1_2(L2_2)
    else
      L1_2 = system
      L1_2 = L1_2.openURL
      L2_2 = CHEEKY_CHUCK_2_ITUNES_URL
      L1_2(L2_2)
    end
  end
end

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = {}
  L5_2.bannerId = A0_2
  L5_2.orientationChangedListenerIndex = nil
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L5_2.group = L6_2
  L6_2 = L5_2.group
  L7_2 = WORLD_WIDTH
  L7_2 = L7_2 / 2
  L6_2.xReference = L7_2
  L6_2 = L5_2.group
  L7_2 = WORLD_HEIGHT
  L7_2 = L7_2 / 2
  L6_2.yReference = L7_2
  L6_2 = L5_2.group
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = SCREEN_CONTROL_PANEL
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.group
  L6_2(L7_2, L8_2)
  L5_2.removalTimer = nil
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = A3_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = A3_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = nil
    A1_2 = L0_3
    L0_3 = nil
    L5_1 = L0_3
    L0_3 = L5_2
    L0_3 = L0_3.orientationChangedListenerIndex
    if L0_3 then
      L0_3 = A2_2
      L1_3 = L0_3
      L0_3 = L0_3.removeOrientationChangedListener
      L2_3 = L5_2
      L2_3 = L2_3.orientationChangedListenerIndex
      L0_3(L1_3, L2_3)
    end
    L0_3 = L5_2
    L0_3 = L0_3.group
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L5_2
    L0_3.group = nil
    L0_3 = A4_2
    if L0_3 then
      L0_3 = A4_2
      L0_3()
    end
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    L0_3()
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A1_2
    L2_3 = {}
    L3_3 = L3_1
    L2_3.time = L3_3
    L3_3 = A1_2
    L3_3 = L3_3.width
    L3_3 = -L3_3
    L3_3 = L3_3 / 2
    L2_3.x = L3_3
    L3_3 = easing
    L3_3 = L3_3.inExpo
    L2_3.transition = L3_3
    L3_3 = L7_2
    L2_3.onStart = L3_3
    L3_3 = L8_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L5_2
    L0_3 = L0_3.removalTimer
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L5_2
      L1_3 = L1_3.removalTimer
      L0_3(L1_3)
      L0_3 = L5_2
      L0_3.removalTimer = nil
    end
  end
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = L6_2
    L0_3()
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.renewRemovalTimer
    L0_3(L1_3)
  end
  
  function L12_2(A0_3)
    local L1_3
    L1_3 = L7_2
    L1_3()
    L1_3 = L10_2
    L1_3()
    L1_3 = L8_2
    L1_3()
  end
  
  L5_2.dismiss = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L10_2
    L1_3()
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = L4_1
    L3_3 = L9_2
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    A0_3.removalTimer = L1_3
  end
  
  L5_2.renewRemovalTimer = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A2_2
    L2_3 = L1_3
    L1_3 = L1_3.addOrientationChangedListener
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    A0_3.orientationChangedListenerIndex = L1_3
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = A1_2
    L3_3 = {}
    L4_3 = L2_1
    L3_3.time = L4_3
    L4_3 = display
    L4_3 = L4_3.contentWidth
    L4_3 = L4_3 / 2
    L3_3.x = L4_3
    L4_3 = easing
    L4_3 = L4_3.outExpo
    L3_3.transition = L4_3
    L4_3 = L11_2
    L3_3.onComplete = L4_3
    L1_3(L2_3, L3_3)
  end
  
  L5_2.show = L12_2
  
  function L12_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.group
    L3_3 = L2_3
    L2_3 = L2_3.rotate
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  
  L5_2.rotate = L12_2
  return L5_2
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L2_2 = nil
  if L1_2 then
    L3_2 = userPrefLang
    L2_2 = L1_2[L3_2]
    if not L2_2 then
      L3_2 = DEFAULT_LOCALIZATION_LANG
      L2_2 = L1_2[L3_2]
    end
  end
  return L2_2
end

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L5_1
  if L3_2 then
    L3_2 = false
    return L3_2
  else
    L3_2 = BANNER_PUNCH
    if A0_2 == L3_2 then
      L3_2 = L8_1
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = display
        L4_2 = L4_2.newImage
        L5_2 = UI_PIC_DIR
        L6_2 = L3_2
        L5_2 = L5_2 .. L6_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L5_2 = display
          L5_2 = L5_2.contentWidth
          L6_2 = L4_2.width
          L6_2 = L6_2 / 2
          L5_2 = L5_2 + L6_2
          L4_2.x = L5_2
          L5_2 = L1_1
          L4_2.y = L5_2
          L5_2 = L7_1
          L6_2 = A0_2
          L7_2 = L4_2
          L8_2 = A1_2
          L9_2 = L6_1
          L10_2 = A2_2
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          L5_1 = L5_2
          L5_2 = L5_1
          L6_2 = L5_2
          L5_2 = L5_2.show
          L5_2(L6_2)
        end
      end
    else
      L3_2 = print
      L4_2 = "FATAL: invalid banner ID"
      L3_2(L4_2)
      L3_2 = os
      L3_2 = L3_2.exit
      L4_2 = -1
      L3_2(L4_2)
    end
  end
  L3_2 = true
  return L3_2
end

showBannerAd = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L5_1
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2.bannerId
    if L1_2 == A0_2 then
      L1_2 = L5_1
      L2_2 = L1_2
      L1_2 = L1_2.renewRemovalTimer
      L1_2(L2_2)
    end
  end
end

renewRemovalTimerForBannerAdIfShowing = L9_1
