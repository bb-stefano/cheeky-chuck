local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.en = "en/start.png"
L0_1.it = "it/start.png"
L0_1.jp = "jp/start.png"
L0_1.zh = "zh/start.png"

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L5_2 = display
  L5_2 = L5_2.newImage
  L6_2 = UI_PIC_DIR
  L7_2 = "menu_blink.png"
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2(L6_2)
  L4_2[A2_2] = L5_2
  L5_2 = L4_2[A2_2]
  L6_2 = A0_2.x
  L6_2 = L6_2 + 1
  L5_2.x = L6_2
  L5_2 = L4_2[A2_2]
  L6_2 = A0_2.y
  L6_2 = L6_2 - 5
  L5_2.y = L6_2
  L5_2 = SCREEN_CONTROL_PANEL
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2[A2_2]
  L5_2(L6_2, L7_2)
  L4_2.counter = A1_2
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L4_2
    L0_3 = L0_3.counter
    if 0 < L0_3 then
      L0_3 = L4_2
      L1_3 = L4_2
      L1_3 = L1_3.counter
      L1_3 = L1_3 - 1
      L0_3.counter = L1_3
      L0_3 = L4_2
      L1_3 = A2_2
      L0_3 = L0_3[L1_3]
      L0_3.alpha = 1
      L0_3 = L4_2
      L1_3 = A3_2
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L4_2
      L4_3 = A2_2
      L3_3 = L3_3[L4_3]
      L4_3 = {}
      L4_3.time = 700
      L5_3 = easing
      L5_3 = L5_3.inOutExpo
      L4_3.transition = L5_3
      L4_3.alpha = 0
      L5_3 = L5_2
      L4_3.onComplete = L5_3
      L2_3 = L2_3(L3_3, L4_3)
      L0_3[L1_3] = L2_3
    else
      L0_3 = L4_2
      L1_3 = A2_2
      L0_3 = L0_3[L1_3]
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = L4_2
      L1_3 = A2_2
      L0_3[L1_3] = nil
      L0_3 = L4_2
      L1_3 = A3_2
      L0_3[L1_3] = nil
    end
  end
  
  function L6_2(A0_3)
    local L1_3
    L1_3 = L5_2
    L1_3()
  end
  
  L4_2.start = L6_2
  return L4_2
end

newButtonHighlighter = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  L2_2 = userPrefLang
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L2_2 = L0_1
    L3_2 = DEFAULT_LOCALIZATION_LANG
    L1_2 = L2_2[L3_2]
  end
  L2_2 = display
  L2_2 = L2_2.newImage
  L3_2 = INTRO_DIR
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L2_2.alpha = 0
  L3_2 = WORLD_WIDTH
  L3_2 = L3_2 / 2
  L2_2.x = L3_2
  L3_2 = WORLD_HEIGHT
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  local L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = nil
    L3_2 = L0_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = nil
    L2_2 = L0_3
    L0_3 = A0_2
    L0_3()
  end
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L3_2
    L2_3 = {}
    L2_3.time = 100
    L3_3 = easing
    L3_3 = L3_3.inExpo
    L2_3.transition = L3_3
    compat.setProp(L2_3, "xScale", 1)
    compat.setProp(L2_3, "yScale", 1)
    L0_3(L1_3, L2_3)
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = ui
    L0_3 = L0_3.newButton
    L1_3 = {}
    L2_3 = HTML_DIR
    L3_3 = "im/ok.png"
    L2_3 = L2_3 .. L3_3
    L1_3.default = L2_3
    L2_3 = HTML_DIR
    L3_3 = "im/ok.png"
    L2_3 = L2_3 .. L3_3
    L1_3.over = L2_3
    L2_3 = L4_2
    L1_3.onRelease = L2_3
    L0_3 = L0_3(L1_3)
    L3_2 = L0_3
    L0_3 = L3_2
    L1_3 = WORLD_WIDTH
    L1_3 = L1_3 / 2
    L0_3.x = L1_3
    L0_3 = L3_2
    L1_3 = L2_2
    L1_3 = L1_3.y
    L1_3 = L1_3 + 92
    L0_3.y = L1_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L3_2
    L2_3 = {}
    L2_3.time = 100
    L3_3 = easing
    L3_3 = L3_3.inExpo
    L2_3.transition = L3_3
    compat.setProp(L2_3, "xScale", 1.15)
    compat.setProp(L2_3, "yScale", 1.15)
    L3_3 = L5_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L2_2
  L9_2 = {}
  L9_2.delay = 400
  L9_2.time = 300
  L9_2.alpha = 1
  L10_2 = easing
  L10_2 = L10_2.inExpo
  L9_2.transition = L10_2
  L9_2.onComplete = L6_2
  L7_2(L8_2, L9_2)
end

showNewGameInfo = L1_1
