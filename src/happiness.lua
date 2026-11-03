local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = 10
L1_1 = 10
L2_1 = 3
L3_1 = 278
L4_1 = 4

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L0_2.group = L1_2
  L1_2 = SCREEN_HAPPINESS_BAR
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = L0_2.group
  L1_2(L2_2, L3_2)
  L1_2 = display
  L1_2 = L1_2.newImage
  L2_2 = UI_PIC_DIR
  L3_2 = "happiness_frame.png"
  L2_2 = L2_2 .. L3_2
  L3_2 = L0_1
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.whiteFrame = L1_2
  L1_2 = display
  L1_2 = L1_2.newRoundedRect
  L2_2 = L0_1
  L2_2 = L2_2 + 1
  L3_2 = L1_1
  L3_2 = L3_2 + 1
  L4_2 = L0_2.whiteFrame
  L4_2 = L4_2.width
  L4_2 = L4_2 - 1
  L5_2 = L0_2.whiteFrame
  L5_2 = L5_2.height
  L5_2 = L5_2 - 2
  L6_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2.happinessBar = L1_2
  L1_2 = L0_2.happinessBar
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 200
  L5_2 = 0
  L6_2 = 255
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L0_2.happinessBar
  L1_2.strokeWidth = 0
  L1_2 = L0_2.group
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = 1
  L4_2 = L0_2.happinessBar
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_2.group
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = 2
  L4_2 = L0_2.whiteFrame
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_2.group
  L2_2 = WORLD_WIDTH
  L2_2 = L2_2 / 2
  L1_2.xReference = L2_2
  L1_2 = L0_2.group
  L2_2 = WORLD_HEIGHT
  L2_2 = L2_2 / 2
  L1_2.yReference = L2_2
  L1_2 = display
  L1_2 = L1_2.newImage
  L2_2 = L0_2.group
  L3_2 = UI_PIC_DIR
  L4_2 = "happiness_face_1.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_1
  L5_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L0_2.faceHappyImg = L1_2
  L1_2 = display
  L1_2 = L1_2.newImage
  L2_2 = L0_2.group
  L3_2 = UI_PIC_DIR
  L4_2 = "happiness_face_2.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_1
  L5_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L0_2.faceWarnImg = L1_2
  L1_2 = display
  L1_2 = L1_2.newImage
  L2_2 = L0_2.group
  L3_2 = UI_PIC_DIR
  L4_2 = "happiness_face_3.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_1
  L5_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L0_2.faceCriticalImg = L1_2
  L1_2 = display
  L1_2 = L1_2.newImage
  L2_2 = L0_2.group
  L3_2 = UI_PIC_DIR
  L4_2 = "happiness_face_4.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_1
  L5_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L0_2.faceOffendedImg = L1_2
  L1_2 = L0_2.faceHappyImg
  L1_2.isVisible = false
  L1_2 = L0_2.faceWarnImg
  L1_2.isVisible = false
  L1_2 = L0_2.faceCriticalImg
  L1_2.isVisible = false
  L1_2 = L0_2.faceOffendedImg
  L1_2.isVisible = false
  
  function L1_2(A0_3)
    local L1_3
  end
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.group
    L3_3 = L2_3
    L2_3 = L2_3.rotate
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  
  L0_2.rotate = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = L1_2
    L3_3 = string
    L3_3 = L3_3.format
    L4_3 = "update to happiness=%d"
    L5_3 = A1_3
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = A0_3.happinessBar
    if L2_3 then
      L2_3 = A0_3.happinessBar
      L3_3 = L2_3
      L2_3 = L2_3.removeSelf
      L2_3(L3_3)
      A0_3.happinessBar = nil
    end
    if A1_3 < 3 then
      A1_3 = 2
    end
    L2_3 = A0_3.whiteFrame
    L2_3 = L2_3.width
    L2_3 = A1_3 * L2_3
    L3_3 = MAX_HAPPINESS
    L2_3 = L2_3 / L3_3
    L3_3 = display
    L3_3 = L3_3.newRoundedRect
    L4_3 = L0_1
    L4_3 = L4_3 + 1
    L5_3 = L1_1
    L5_3 = L5_3 + 1
    L6_3 = L2_3 - 1
    L7_3 = A0_3.whiteFrame
    L7_3 = L7_3.height
    L7_3 = L7_3 - 2
    L8_3 = L2_1
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    A0_3.happinessBar = L3_3
    L3_3 = A0_3.happinessBar
    L3_3.strokeWidth = 0
    L3_3 = OFFENDED_THRESHOLD
    if A1_3 <= L3_3 then
      L3_3 = A0_3.happinessBar
      L4_3 = L3_3
      L3_3 = L3_3.setFillColor
      L5_3 = 200
      L6_3 = 0
      L7_3 = 0
      L8_3 = 255
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L3_3 = A0_3.faceHappyImg
      L3_3.isVisible = false
      L3_3 = A0_3.faceWarnImg
      L3_3.isVisible = false
      L3_3 = A0_3.faceCriticalImg
      L3_3.isVisible = false
      L3_3 = A0_3.faceOffendedImg
      L3_3.isVisible = true
    else
      L3_3 = OFFENDED_THRESHOLD
      if A1_3 > L3_3 then
        L3_3 = OFFENDED_CRITICAL_THRESHOLD
        if A1_3 <= L3_3 then
          L3_3 = A0_3.happinessBar
          L4_3 = L3_3
          L3_3 = L3_3.setFillColor
          L5_3 = 240
          L6_3 = 150
          L7_3 = 20
          L8_3 = 255
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          L3_3 = A0_3.faceHappyImg
          L3_3.isVisible = false
          L3_3 = A0_3.faceWarnImg
          L3_3.isVisible = false
          L3_3 = A0_3.faceCriticalImg
          L3_3.isVisible = true
          L3_3 = A0_3.faceOffendedImg
          L3_3.isVisible = false
      end
      else
        L3_3 = OFFENDED_CRITICAL_THRESHOLD
        if A1_3 > L3_3 then
          L3_3 = OFFENDED_WARN_THRESHOLD
          if A1_3 <= L3_3 then
            L3_3 = A0_3.happinessBar
            L4_3 = L3_3
            L3_3 = L3_3.setFillColor
            L5_3 = 200
            L6_3 = 200
            L7_3 = 0
            L8_3 = 255
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            L3_3 = A0_3.faceHappyImg
            L3_3.isVisible = false
            L3_3 = A0_3.faceWarnImg
            L3_3.isVisible = true
            L3_3 = A0_3.faceCriticalImg
            L3_3.isVisible = false
            L3_3 = A0_3.faceOffendedImg
            L3_3.isVisible = false
        end
        else
          L3_3 = A0_3.happinessBar
          L4_3 = L3_3
          L3_3 = L3_3.setFillColor
          L5_3 = 0
          L6_3 = 200
          L7_3 = 0
          L8_3 = 255
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          L3_3 = A0_3.faceHappyImg
          L3_3.isVisible = true
          L3_3 = A0_3.faceWarnImg
          L3_3.isVisible = false
          L3_3 = A0_3.faceCriticalImg
          L3_3.isVisible = false
          L3_3 = A0_3.faceOffendedImg
          L3_3.isVisible = false
        end
      end
    end
    L3_3 = A0_3.group
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = 1
    L6_3 = A0_3.happinessBar
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = A0_3.group
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = 2
    L6_3 = A0_3.whiteFrame
    L3_3(L4_3, L5_3, L6_3)
  end
  
  L0_2.update = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.faceHappyImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = A0_3.faceWarnImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = A0_3.faceCriticalImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = A0_3.faceOffendedImg
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = A0_3.happinessBar
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = A0_3.whiteFrame
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    L1_3 = A0_3.group
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    A0_3.faceHappyImg = nil
    A0_3.faceWarnImg = nil
    A0_3.faceCriticalImg = nil
    A0_3.faceOffendedImg = nil
    A0_3.happinessBar = nil
    A0_3.whiteFrame = nil
    A0_3.group = nil
  end
  
  L0_2.destroy = L2_2
  return L0_2
end

newHappinessBar = L5_1
