local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = true
  L3_2 = A0_2[1]
  L4_2 = A0_2[2]
  L5_2 = A0_2._onEvent
  L6_2 = A0_2._onPress
  L7_2 = A0_2._onRelease
  L8_2 = {}
  L9_2 = A0_2._id
  if L9_2 then
    L9_2 = A0_2._id
    L8_2.id = L9_2
  end
  L9_2 = A1_2.phase
  if "began" == L9_2 then
    if L4_2 then
      L3_2.isVisible = false
      L4_2.isVisible = true
    end
    if L5_2 then
      L8_2.phase = "press"
      L10_2 = L5_2
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2 = L10_2
    elseif L6_2 then
      L10_2 = L6_2
      L11_2 = A1_2
      L10_2 = L10_2(L11_2)
      L2_2 = L10_2
    end
    L10_2 = display
    L10_2 = L10_2.getCurrentStage
    L10_2 = L10_2()
    L11_2 = L10_2
    L10_2 = L10_2.setFocus
    L12_2 = A0_2
    L13_2 = A1_2.id
    L10_2(L11_2, L12_2, L13_2)
    A0_2.isFocus = true
  else
    L10_2 = A0_2.isFocus
    if L10_2 then
      L10_2 = A0_2.contentBounds
      L11_2 = A1_2.x
      L12_2 = A1_2.y
      L13_2 = L10_2.xMin
      L13_2 = L11_2 >= L13_2
      if "moved" == L9_2 then
        if L4_2 then
          L14_2 = not L13_2
          L3_2.isVisible = L14_2
          L4_2.isVisible = L13_2
        end
      elseif "ended" == L9_2 or "cancelled" == L9_2 then
        if L4_2 then
          L3_2.isVisible = true
          L4_2.isVisible = false
        end
        if "ended" == L9_2 and L13_2 then
          if L5_2 then
            L8_2.phase = "release"
            L14_2 = L5_2
            L15_2 = L8_2
            L14_2 = L14_2(L15_2)
            L2_2 = L14_2
          elseif L7_2 then
            L14_2 = L7_2
            L15_2 = A1_2
            L14_2 = L14_2(L15_2)
            L2_2 = L14_2
          end
        end
        L14_2 = display
        L14_2 = L14_2.getCurrentStage
        L14_2 = L14_2()
        L15_2 = L14_2
        L14_2 = L14_2.setFocus
        L16_2 = A0_2
        L17_2 = nil
        L14_2(L15_2, L16_2, L17_2)
        A0_2.isFocus = false
      end
    end
  end
  return L2_2
end

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L8_2 = A0_2.default
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newGroup
    L8_2 = L8_2()
    L1_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newImage
    L9_2 = A0_2.default
    L8_2 = L8_2(L9_2)
    L2_2 = L8_2
    L9_2 = L1_2
    L8_2 = L1_2.insert
    L10_2 = L2_2
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = A0_2.over
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newImage
    L9_2 = A0_2.over
    L8_2 = L8_2(L9_2)
    L3_2 = L8_2
    L3_2.isVisible = false
    L9_2 = L1_2
    L8_2 = L1_2.insert
    L10_2 = L3_2
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = A0_2.layer
  if L8_2 then
    L8_2 = A0_2.layer
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
  end
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = A0_3.text
    if L2_3 then
      L4_3 = L2_3
      L3_3 = L2_3.removeSelf
      L3_3(L4_3)
      A0_3.text = nil
    end
    L3_3 = A0_3.shadow
    if L3_3 then
      L5_3 = L3_3
      L4_3 = L3_3.removeSelf
      L4_3(L5_3)
      A0_3.shadow = nil
    end
    L4_3 = A0_3.highlight
    if L4_3 then
      L6_3 = L4_3
      L5_3 = L4_3.removeSelf
      L5_3(L6_3)
      A0_3.highlight = nil
    end
    L5_3 = A0_2
    L5_3 = L5_3.size
    if L5_3 then
      L5_3 = type
      L6_3 = A0_2
      L6_3 = L6_3.size
      L5_3 = L5_3(L6_3)
      if L5_3 == "number" then
        L5_3 = A0_2
        L5_3 = L5_3.size
        L4_2 = L5_3
    end
    else
      L5_3 = 20
      L4_2 = L5_3
    end
    L5_3 = A0_2
    L5_3 = L5_3.font
    if L5_3 then
      L5_3 = A0_2
      L5_3 = L5_3.font
      L5_2 = L5_3
    else
      L5_3 = native
      L5_3 = L5_3.systemFontBold
      L5_2 = L5_3
    end
    L5_3 = A0_2
    L5_3 = L5_3.textColor
    if L5_3 then
      L5_3 = A0_2
      L5_3 = L5_3.textColor
      L6_2 = L5_3
    else
      L5_3 = {}
      L6_3 = 255
      L7_3 = 255
      L8_3 = 255
      L9_3 = 255
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L5_3[4] = L9_3
      L6_2 = L5_3
    end
    L5_3 = A0_2
    L5_3 = L5_3.offset
    if L5_3 then
      L5_3 = type
      L6_3 = A0_2
      L6_3 = L6_3.offset
      L5_3 = L5_3(L6_3)
      if L5_3 == "number" then
        L5_3 = A0_2
        L5_3 = L5_3.offset
        L7_2 = L5_3
    end
    else
      L5_3 = 0
      L7_2 = L5_3
    end
    L5_3 = A0_2
    L5_3 = L5_3.emboss
    if L5_3 then
      L5_3 = L6_2
      L5_3 = L5_3[1]
      L6_3 = L6_2
      L6_3 = L6_3[2]
      L5_3 = L5_3 + L6_3
      L6_3 = L6_2
      L6_3 = L6_3[3]
      L5_3 = L5_3 + L6_3
      L5_3 = L5_3 / 3
      L6_3 = display
      L6_3 = L6_3.newText
      L7_3 = A1_3
      L8_3 = 0
      L9_3 = 0
      L10_3 = L5_2
      L11_3 = L4_2
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L4_3 = L6_3
      if 127 < L5_3 then
        L7_3 = L4_3
        L6_3 = L4_3.setTextColor
        L8_3 = 255
        L9_3 = 255
        L10_3 = 255
        L11_3 = 20
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L7_3 = L4_3
        L6_3 = L4_3.setTextColor
        L8_3 = 255
        L9_3 = 255
        L10_3 = 255
        L11_3 = 140
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L6_3 = L1_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L4_3
      L9_3 = true
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = L4_3.x
      L6_3 = L6_3 + 1.5
      L4_3.x = L6_3
      L6_3 = L4_3.y
      L6_3 = L6_3 + 1.5
      L7_3 = L7_2
      L6_3 = L6_3 + L7_3
      L4_3.y = L6_3
      A0_3.highlight = L4_3
      L6_3 = display
      L6_3 = L6_3.newText
      L7_3 = A1_3
      L8_3 = 0
      L9_3 = 0
      L10_3 = L5_2
      L11_3 = L4_2
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L3_3 = L6_3
      if 127 < L5_3 then
        L7_3 = L3_3
        L6_3 = L3_3.setTextColor
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 128
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L7_3 = L3_3
        L6_3 = L3_3.setTextColor
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 20
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L6_3 = L1_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L3_3
      L9_3 = true
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = L3_3.x
      L6_3 = L6_3 - 1
      L3_3.x = L6_3
      L6_3 = L3_3.y
      L6_3 = L6_3 - 1
      L7_3 = L7_2
      L6_3 = L6_3 + L7_3
      L3_3.y = L6_3
      A0_3.shadow = L3_3
    end
    L5_3 = display
    L5_3 = L5_3.newText
    L6_3 = A1_3
    L7_3 = 0
    L8_3 = 0
    L9_3 = L5_2
    L10_3 = L4_2
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L2_3 = L5_3
    L6_3 = L2_3
    L5_3 = L2_3.setTextColor
    L7_3 = L6_2
    L7_3 = L7_3[1]
    L8_3 = L6_2
    L8_3 = L8_3[2]
    L9_3 = L6_2
    L9_3 = L9_3[3]
    L10_3 = L6_2
    L10_3 = L10_3[4]
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = L1_2
    L6_3 = L5_3
    L5_3 = L5_3.insert
    L7_3 = L2_3
    L8_3 = true
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = L2_3.y
    L6_3 = L7_2
    L5_3 = L5_3 + L6_3
    L2_3.y = L5_3
    A0_3.text = L2_3
  end
  
  L1_2.setText = L8_2
  L8_2 = A0_2.text
  if L8_2 then
    L9_2 = L1_2
    L8_2 = L1_2.setText
    L10_2 = A0_2.text
    L8_2(L9_2, L10_2)
  end
  L8_2 = A0_2.onPress
  if L8_2 then
    L8_2 = type
    L9_2 = A0_2.onPress
    L8_2 = L8_2(L9_2)
    if L8_2 == "function" then
      L8_2 = A0_2.onPress
      L1_2._onPress = L8_2
    end
  end
  L8_2 = A0_2.onRelease
  if L8_2 then
    L8_2 = type
    L9_2 = A0_2.onRelease
    L8_2 = L8_2(L9_2)
    if L8_2 == "function" then
      L8_2 = A0_2.onRelease
      L1_2._onRelease = L8_2
    end
  end
  L8_2 = A0_2.onEvent
  if L8_2 then
    L8_2 = type
    L9_2 = A0_2.onEvent
    L8_2 = L8_2(L9_2)
    if L8_2 == "function" then
      L8_2 = A0_2.onEvent
      L1_2._onEvent = L8_2
    end
  end
  L8_2 = L0_1
  L1_2.touch = L8_2
  L9_2 = L1_2
  L8_2 = L1_2.addEventListener
  L10_2 = "touch"
  L11_2 = L1_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2.x
  if L8_2 then
    L8_2 = A0_2.x
    L1_2.x = L8_2
  end
  L8_2 = A0_2.y
  if L8_2 then
    L8_2 = A0_2.y
    L1_2.y = L8_2
  end
  L8_2 = A0_2.id
  if L8_2 then
    L8_2 = A0_2.id
    L1_2._id = L8_2
  end
  return L1_2
end

newButton = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L7_2 = A0_2.bounds
  if L7_2 then
    L7_2 = A0_2.bounds
    L8_2 = L7_2[1]
    L9_2 = L7_2[2]
    L10_2 = L7_2[3]
    L11_2 = L7_2[4]
    L12_2 = A0_2.size
    if L12_2 then
      L12_2 = type
      L13_2 = A0_2.size
      L12_2 = L12_2(L13_2)
      if L12_2 == "number" then
        L2_2 = A0_2.size
    end
    else
      L2_2 = 20
    end
    L12_2 = A0_2.font
    if L12_2 then
      L3_2 = A0_2.font
    else
      L12_2 = native
      L3_2 = L12_2.systemFontBold
    end
    L12_2 = A0_2.textColor
    if L12_2 then
      L4_2 = A0_2.textColor
    else
      L12_2 = {}
      L13_2 = 255
      L14_2 = 255
      L15_2 = 255
      L16_2 = 255
      L12_2[1] = L13_2
      L12_2[2] = L14_2
      L12_2[3] = L15_2
      L12_2[4] = L16_2
      L4_2 = L12_2
    end
    L12_2 = A0_2.offset
    if L12_2 then
      L12_2 = type
      L13_2 = A0_2.offset
      L12_2 = L12_2(L13_2)
      if L12_2 == "number" then
        L12_2 = A0_2.offset
        offset = L12_2
    end
    else
      L12_2 = 0
      offset = L12_2
    end
    L12_2 = A0_2.align
    if L12_2 then
      L5_2 = A0_2.align
    else
      L5_2 = "center"
    end
    L12_2 = A0_2.text
    if L12_2 then
      L12_2 = display
      L12_2 = L12_2.newText
      L13_2 = A0_2.text
      L14_2 = 0
      L15_2 = 0
      L16_2 = L3_2
      L17_2 = L2_2
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L1_2 = L12_2
      L13_2 = L1_2
      L12_2 = L1_2.setTextColor
      L14_2 = L4_2[1]
      L15_2 = L4_2[2]
      L16_2 = L4_2[3]
      L17_2 = L4_2[4]
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L13_2 = L6_2
      L12_2 = L6_2.insert
      L14_2 = L1_2
      L12_2(L13_2, L14_2)
      if L5_2 == "left" then
        L12_2 = L1_2.contentWidth
        L12_2 = L12_2 * 0.5
        L12_2 = L8_2 + L12_2
        L1_2.x = L12_2
      elseif L5_2 == "right" then
        L12_2 = L8_2 + L10_2
        L13_2 = L1_2.contentWidth
        L13_2 = L13_2 * 0.5
        L12_2 = L12_2 - L13_2
        L1_2.x = L12_2
      else
        L12_2 = 2 * L8_2
        L12_2 = L12_2 + L10_2
        L12_2 = L12_2 * 0.5
        L1_2.x = L12_2
      end
    end
    L12_2 = L1_2.contentHeight
    L12_2 = L12_2 * 0.5
    L12_2 = L9_2 + L12_2
    L1_2.y = L12_2
    
    function L12_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      if A1_3 then
        L2_3 = L1_2
        L2_3.text = A1_3
        L2_3 = L5_2
        if "left" == L2_3 then
          L2_3 = L1_2
          L3_3 = L8_2
          L4_3 = L1_2
          L4_3 = L4_3.contentWidth
          L4_3 = L4_3 / 2
          L3_3 = L3_3 + L4_3
          L2_3.x = L3_3
        else
          L2_3 = L5_2
          if "right" == L2_3 then
            L2_3 = L1_2
            L3_3 = L8_2
            L4_3 = L10_2
            L3_3 = L3_3 + L4_3
            L4_3 = L1_2
            L4_3 = L4_3.contentWidth
            L4_3 = L4_3 / 2
            L3_3 = L3_3 - L4_3
            L2_3.x = L3_3
          else
            L2_3 = L1_2
            L3_3 = L8_2
            L3_3 = 2 * L3_3
            L4_3 = L10_2
            L3_3 = L3_3 + L4_3
            L3_3 = L3_3 / 2
            L2_3.x = L3_3
          end
        end
      end
    end
    
    L6_2.setText = L12_2
    
    function L12_2(A0_3, A1_3, A2_3, A3_3, A4_3)
      local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      L5_3 = 255
      L6_3 = 255
      L7_3 = 255
      L8_3 = 255
      if A1_3 then
        L9_3 = type
        L10_3 = A1_3
        L9_3 = L9_3(L10_3)
        if L9_3 == "number" then
          L5_3 = A1_3
        end
      end
      if A2_3 then
        L9_3 = type
        L10_3 = A2_3
        L9_3 = L9_3(L10_3)
        if L9_3 == "number" then
          L6_3 = A2_3
        end
      end
      if A3_3 then
        L9_3 = type
        L10_3 = A3_3
        L9_3 = L9_3(L10_3)
        if L9_3 == "number" then
          L7_3 = A3_3
        end
      end
      if A4_3 then
        L9_3 = type
        L10_3 = A4_3
        L9_3 = L9_3(L10_3)
        if L9_3 == "number" then
          L8_3 = A4_3
        end
      end
      L9_3 = L1_2
      L10_3 = L9_3
      L9_3 = L9_3.setTextColor
      L11_3 = A1_3
      L12_3 = A2_3
      L13_3 = A3_3
      L14_3 = A4_3
      L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
    end
    
    L6_2.setTextColor = L12_2
  end
  return L6_2
end

newLabel = L1_1
