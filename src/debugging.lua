local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = 0

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L8_2 = {}
  if not A4_2 then
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 50
    L11_2 = 255
    L9_2 = L9_2(L10_2, L11_2)
    A4_2 = L9_2
  end
  if not A5_2 then
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 50
    L11_2 = 255
    L9_2 = L9_2(L10_2, L11_2)
    A5_2 = L9_2
  end
  if not A6_2 then
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 50
    L11_2 = 255
    L9_2 = L9_2(L10_2, L11_2)
    A6_2 = L9_2
  end
  L9_2 = A7_2 or L9_2
  if not A7_2 then
    L9_2 = 3000
  end
  L8_2.delay = L9_2
  L8_2.isValid = true
  L9_2 = display
  L9_2 = L9_2.newLine
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = A3_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2.line = L9_2
  L9_2 = L8_2.line
  L10_2 = L9_2
  L9_2 = L9_2.setColor
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = A6_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = display
  L9_2 = L9_2.newCircle
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = 3
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.endPoint = L9_2
  L9_2 = L8_2.endPoint
  L10_2 = L9_2
  L9_2 = L9_2.setFillColor
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = A6_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  
  function L9_2(A0_3)
    local L1_3, L2_3
    L1_3 = L8_2
    L1_3 = L1_3.line
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L8_2
    L1_3 = L1_3.endPoint
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L8_2
    L1_3.isValid = false
  end
  
  L10_2 = timer
  L10_2 = L10_2.performWithDelay
  L11_2 = L8_2.delay
  L12_2 = L9_2
  L13_2 = 1
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L8_2.removeTimer = L10_2
  
  function L10_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3
    L4_3 = A0_3.line
    L5_3 = L4_3
    L4_3 = L4_3.setColor
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = A3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = A0_3.endPoint
    L5_3 = L4_3
    L4_3 = L4_3.setFillColor
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = A3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = timer
    L4_3 = L4_3.cancel
    L5_3 = A0_3.removeTimer
    L4_3(L5_3)
    L4_3 = timer
    L4_3 = L4_3.performWithDelay
    L5_3 = A0_3.delay
    L6_3 = L9_2
    L7_3 = 1
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    A0_3.removeTimer = L4_3
  end
  
  L8_2.updateColor = L10_2
  return L8_2
end

newVector = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 3000
  end
  L2_2.delay = L3_2
  L3_2 = L0_1
  if 440 < L3_2 then
    L3_2 = 20
    L0_1 = L3_2
  else
    L3_2 = L0_1
    L3_2 = L3_2 + 20
    L0_1 = L3_2
  end
  L2_2.isValid = true
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = "Helvetica"
  L8_2 = 20
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.textField = L3_2
  L3_2 = L2_2.textField
  L4_2 = L3_2
  L3_2 = L3_2.setTextColor
  L5_2 = 255
  L6_2 = 0
  L7_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.textField
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = L2_2.textField
  L4_2 = L0_1
  L3_2.y = L4_2
  
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = L2_2
    L1_3 = L1_3.textField
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = L2_2
    L1_3.isValid = false
  end
  
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = L2_2.delay
  L6_2 = L3_2
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2.removeTimer = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3.textField
    L2_3.text = A1_3
    L2_3 = A0_3.textField
    L3_3 = display
    L3_3 = L3_3.contentWidth
    L3_3 = L3_3 / 2
    L2_3.x = L3_3
    L2_3 = SCREEN_DEBUG
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = A0_3.textField
    L2_3(L3_3, L4_3)
    L2_3 = timer
    L2_3 = L2_3.cancel
    L3_3 = A0_3.removeTimer
    L2_3(L3_3)
    L2_3 = timer
    L2_3 = L2_3.performWithDelay
    L3_3 = A0_3.delay
    L4_3 = L3_2
    L5_3 = 1
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    A0_3.removeTimer = L2_3
  end
  
  L2_2.updateMessage = L4_2
  return L2_2
end

newTransientMessage = L1_1
