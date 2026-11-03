local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "vectmath"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.vectRot
L2_1 = L0_1.vectRotAt
L3_1 = require
L4_1 = "animdata"
L3_1 = L3_1(L4_1)
L4_1 = L3_1.readAnimDataFile
L5_1 = require
L6_1 = "animdatapatch"
L5_1 = L5_1(L6_1)
L6_1 = L5_1.animDataPatch
L7_1 = require
L8_1 = "animsounddef"
L7_1 = L7_1(L8_1)
L8_1 = L7_1.ANIM_SOUNDS
L9_1 = math
L9_1 = L9_1.random

function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.isTimeline = true
  L2_2 = {}
  L1_2.layers = L2_2
  L1_2.x = 0
  L1_2.y = 0
  L1_2.width = 0
  L1_2.height = 0
  L1_2.lastFrame = 0
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L1_2.group = L2_2
  L1_2.frameRate = 24
  L2_2 = L1_2.frameRate
  L2_2 = 1000 / L2_2
  L1_2.frameRefreshRate = L2_2
  L1_2.animationName = A0_2
  L1_2.isPlaying = false
  L1_2.isPlayReverse = false
  L1_2.turnXRef = 0
  L1_2.turnYRef = 0
  L1_2.audioController = nil
  L1_2.lastFrame = 0
  L1_2.currentFrame = 1
  L1_2.normRotation = 0
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = math
    L2_3 = L2_3.max
    L3_3 = A0_3.lastFrame
    L4_3 = A1_3.lastIndex
    L2_3 = L2_3(L3_3, L4_3)
    A0_3.lastFrame = L2_3
    L2_3 = A0_3.group
    A1_3.group = L2_3
    L2_3 = A0_3.conf
    A1_3.conf = L2_3
    L3_3 = A1_3
    L2_3 = A1_3.setAnimationName
    L4_3 = A0_3.animationName
    L2_3(L3_3, L4_3)
    L3_3 = A1_3
    L2_3 = A1_3.setAudioController
    L4_3 = A0_3.audioController
    L2_3(L3_3, L4_3)
    L2_3 = table
    L2_3 = L2_3.insert
    L3_3 = A0_3.layers
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  
  L1_2.addLayer = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    A0_3.audioController = A1_3
    L2_3 = ipairs
    L3_3 = A0_3.layers
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L8_3 = L6_3
      L7_3 = L6_3.setAudioController
      L9_3 = A0_3.audioController
      L7_3(L8_3, L9_3)
    end
  end
  
  L1_2.setAudioController = L2_2
  
  function L2_2(A0_3, A1_3)
    A0_3.width = A1_3
  end
  
  L1_2.setWidth = L2_2
  
  function L2_2(A0_3, A1_3)
    A0_3.height = A1_3
  end
  
  L1_2.setHeight = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    A0_3.frameRate = A1_3
    L2_3 = FRAME_REFRESH_RATE_FACTOR
    L3_3 = A0_3.frameRate
    L3_3 = 1000 / L3_3
    L2_3 = L2_3 * L3_3
    A0_3.frameRefreshRate = L2_3
  end
  
  L1_2.setFrameRate = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.group
    L2_3.xReference = A1_3
  end
  
  L1_2.setTransformationX = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.group
    L2_3.yReference = A1_3
  end
  
  L1_2.setTransformationY = L2_2
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3.x
    L3_3 = L3_3 + A1_3
    A0_3.x = L3_3
    L3_3 = A0_3.y
    L3_3 = L3_3 + A2_3
    A0_3.y = L3_3
    L3_3 = A0_3.group
    L4_3 = L3_3
    L3_3 = L3_3.translate
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  
  L1_2.translate = L2_2
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A0_3.x
    L3_3 = A1_3 - L3_3
    L4_3 = A0_3.y
    L4_3 = A2_3 - L4_3
    L6_3 = A0_3
    L5_3 = A0_3.translate
    L7_3 = L3_3
    L8_3 = L4_3
    L5_3(L6_3, L7_3, L8_3)
  end
  
  L1_2.moveTo = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L4_3 = {}
    L5_3 = A0_3.x
    L4_3.x = L5_3
    L5_3 = A0_3.y
    L4_3.y = L5_3
    L5_3 = {}
    L5_3.x = A2_3
    L5_3.y = A3_3
    L6_3 = L2_1
    L7_3 = L4_3
    L8_3 = L5_3
    L9_3 = A1_3
    L6_3(L7_3, L8_3, L9_3)
    L6_3 = L4_3.x
    A0_3.x = L6_3
    L6_3 = L4_3.y
    A0_3.y = L6_3
    L6_3 = A0_3.normRotation
    L6_3 = L6_3 + A1_3
    A0_3.normRotation = L6_3
    L6_3 = A0_3.group
    L7_3 = L6_3
    L6_3 = L6_3.rotate
    L8_3 = A1_3
    L6_3(L7_3, L8_3)
    L6_3 = A0_3.animationName
    L7_3 = L6_3
    L6_3 = L6_3.sub
    L8_3 = 1
    L9_3 = 10
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    if L6_3 == "hang_down_" then
      return
    else
      L6_3 = A0_3.animationName
      if L6_3 == "throw_out_moving_front" then
        return
      end
    end
    L6_3 = A0_3.group
    L7_3 = A0_3.x
    L6_3.x = L7_3
    L6_3 = A0_3.group
    L7_3 = A0_3.y
    L6_3.y = L7_3
    L6_3 = A0_3.normRotation
    L6_3 = L6_3 % 360
    if L6_3 == 0 then
      L7_3 = A0_3.group
      L8_3 = L7_3
      L7_3 = L7_3.translate
      L9_3 = A0_3.group
      L9_3 = L9_3.xReference
      L10_3 = A0_3.group
      L10_3 = L10_3.yReference
      L7_3(L8_3, L9_3, L10_3)
    elseif L6_3 == 180 then
      L7_3 = A0_3.group
      L8_3 = L7_3
      L7_3 = L7_3.translate
      L9_3 = A0_3.group
      L9_3 = L9_3.xReference
      L9_3 = -L9_3
      L10_3 = A0_3.group
      L10_3 = L10_3.yReference
      L10_3 = -L10_3
      L7_3(L8_3, L9_3, L10_3)
    elseif L6_3 == 270 then
      L7_3 = A0_3.group
      L8_3 = L7_3
      L7_3 = L7_3.translate
      L9_3 = A0_3.group
      L9_3 = L9_3.yReference
      L10_3 = A0_3.group
      L10_3 = L10_3.xReference
      L10_3 = -L10_3
      L7_3(L8_3, L9_3, L10_3)
    elseif L6_3 == 90 then
      L7_3 = A0_3.group
      L8_3 = L7_3
      L7_3 = L7_3.translate
      L9_3 = A0_3.group
      L9_3 = L9_3.yReference
      L9_3 = -L9_3
      L10_3 = A0_3.group
      L10_3 = L10_3.xReference
      L7_3(L8_3, L9_3, L10_3)
    else
      L7_3 = print
      L8_3 = string
      L8_3 = L8_3.format
      L9_3 = "invalid rotation, angle=%f"
      L10_3 = L6_3
      L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3)
      L7_3(L8_3, L9_3, L10_3)
    end
  end
  
  L1_2.rotateAt = L2_2
  
  function L2_2(A0_3)
    local L1_3
    L1_3 = A0_3.normRotation
    L1_3 = L1_3 % 360
    return L1_3
  end
  
  L1_2.getRotation = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = ipairs
    L3_3 = A0_3.layers
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L6_3
      end
    end
    L2_3 = nil
    return L2_3
  end
  
  L1_2.getLayer = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    A0_3.conf = A1_3
    L2_3 = ipairs
    L3_3 = A0_3.layers
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = A0_3.conf
      L6_3.conf = L7_3
    end
  end
  
  L1_2.setConfiguration = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = ipairs
    L2_3 = A0_3.layers
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L7_3 = L5_3
      L6_3 = L5_3.loadResources
      L6_3(L7_3)
    end
  end
  
  L1_2.loadResources = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = topLeftPoint
    if L1_3 then
      L1_3 = topLeftPoint
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      topLeftPoint = L1_3
    end
    L1_3 = display
    L1_3 = L1_3.newRect
    L2_3 = A0_3.x
    L2_3 = L2_3 - 3
    L3_3 = A0_3.y
    L3_3 = L3_3 - 3
    L4_3 = 7
    L5_3 = 7
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    topLeftPoint = L1_3
    L1_3 = topLeftPoint
    L2_3 = L1_3
    L1_3 = L1_3.setFillColor
    L3_3 = 255
    L4_3 = 0
    L5_3 = 0
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = groupTopLeftPoint
    if L1_3 then
      L1_3 = groupTopLeftPoint
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      groupTopLeftPoint = L1_3
    end
    L1_3 = display
    L1_3 = L1_3.newRect
    L2_3 = A0_3.group
    L2_3 = L2_3.x
    L2_3 = L2_3 - 2
    L3_3 = A0_3.group
    L3_3 = L3_3.y
    L3_3 = L3_3 - 2
    L4_3 = 5
    L5_3 = 5
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    groupTopLeftPoint = L1_3
    L1_3 = groupTopLeftPoint
    L2_3 = L1_3
    L1_3 = L1_3.setFillColor
    L3_3 = 0
    L4_3 = 0
    L5_3 = 255
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = animeggArea
    if L1_3 then
      L1_3 = animeggArea
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      animeggArea = L1_3
    end
    L1_3 = {}
    L2_3 = A0_3.width
    L1_3.x = L2_3
    L1_3.y = 0
    L2_3 = {}
    L2_3.x = 0
    L3_3 = A0_3.height
    L2_3.y = L3_3
    L3_3 = L1_1
    L4_3 = L1_3
    L5_3 = A0_3.normRotation
    L3_3(L4_3, L5_3)
    L3_3 = L1_1
    L4_3 = L2_3
    L5_3 = A0_3.normRotation
    L3_3(L4_3, L5_3)
    L3_3 = {}
    L4_3 = A0_3.x
    L5_3 = L1_3.x
    L4_3 = L4_3 + L5_3
    L3_3.x = L4_3
    L4_3 = A0_3.y
    L5_3 = L1_3.y
    L4_3 = L4_3 + L5_3
    L3_3.y = L4_3
    L4_3 = {}
    L5_3 = L3_3.x
    L6_3 = L2_3.x
    L5_3 = L5_3 + L6_3
    L4_3.x = L5_3
    L5_3 = L3_3.y
    L6_3 = L2_3.y
    L5_3 = L5_3 + L6_3
    L4_3.y = L5_3
    L5_3 = {}
    L6_3 = A0_3.x
    L7_3 = L2_3.x
    L6_3 = L6_3 + L7_3
    L5_3.x = L6_3
    L6_3 = A0_3.y
    L7_3 = L2_3.y
    L6_3 = L6_3 + L7_3
    L5_3.y = L6_3
    L6_3 = display
    L6_3 = L6_3.newLine
    L7_3 = A0_3.x
    L8_3 = A0_3.y
    L9_3 = L3_3.x
    L10_3 = L3_3.y
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
    animeggArea = L6_3
    L6_3 = animeggArea
    L7_3 = L6_3
    L6_3 = L6_3.append
    L8_3 = L4_3.x
    L9_3 = L4_3.y
    L10_3 = L5_3.x
    L11_3 = L5_3.y
    L12_3 = A0_3.x
    L13_3 = A0_3.y
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L6_3 = animeggArea
    L7_3 = L6_3
    L6_3 = L6_3.setColor
    L8_3 = 255
    L9_3 = 0
    L10_3 = 0
    L11_3 = 150
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L6_3 = animeggArea
    L6_3.width = 3
  end
  
  L1_2.showDebugData = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if A1_3 then
      L2_3 = A1_3.time
      L3_3 = A0_3.anim
      L3_3 = L3_3.prevTime
      L2_3 = L2_3 - L3_3
      L3_3 = A0_3.frameRefreshRate
      if L2_3 < L3_3 then
        return
      else
        L3_3 = A0_3.anim
        L4_3 = A1_3.time
        L3_3.prevTime = L4_3
      end
    end
    L2_3 = A0_3.isPlaying
    if L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.nextFrame
      L4_3 = A0_3.isPlayReverse
      L2_3(L3_3, L4_3)
      L2_3 = A0_3.anim
      L2_3 = L2_3.frameEvent
      if L2_3 then
        L2_3 = A0_3.anim
        L2_3 = L2_3.frameEvent
        L3_3 = A0_3
        L2_3(L3_3)
      end
      L2_3 = A0_3.anim
      L2_3 = L2_3.loop
      if 0 < L2_3 then
        L2_3 = A0_3.anim
        L2_3 = L2_3.frameCount
        L3_3 = A0_3.anim
        L3_3 = L3_3.loop
        L4_3 = A0_3.lastFrame
        L3_3 = L3_3 * L4_3
        if L2_3 == L3_3 then
          A0_3.isPlaying = false
        end
      end
      L2_3 = L8_1
      L3_3 = A0_3.animationName
      L2_3 = L2_3[L3_3]
      if L2_3 then
        L2_3 = L8_1
        L3_3 = A0_3.animationName
        L2_3 = L2_3[L3_3]
        L3_3 = A0_3.currentFrame
        L2_3 = L2_3[L3_3]
        if L2_3 then
          L3_3 = type
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 == "string" then
            if L2_3 == "VIBRATE" then
              L3_3 = system
              L3_3 = L3_3.vibrate
              L3_3()
            else
              L3_3 = A0_3.audioController
              L4_3 = L3_3
              L3_3 = L3_3.play
              L5_3 = L2_3
              L6_3 = A0_3.animationName
              L3_3(L4_3, L5_3, L6_3)
            end
          else
            L3_3 = type
            L4_3 = L2_3
            L3_3 = L3_3(L4_3)
            if L3_3 == "table" then
              L3_3 = L2_3.index
              if not L3_3 then
                L2_3.index = 1
              else
                L3_3 = L2_3.index
                L4_3 = #L2_3
                if L3_3 < L4_3 then
                  L3_3 = L2_3.index
                  L3_3 = L3_3 + 1
                  L2_3.index = L3_3
                else
                  L2_3.index = 1
                end
              end
              L3_3 = A0_3.audioController
              L4_3 = L3_3
              L3_3 = L3_3.play
              L5_3 = L2_3.index
              L5_3 = L2_3[L5_3]
              L6_3 = A0_3.animationName
              L3_3(L4_3, L5_3, L6_3)
            else
              L4_3 = A0_3
              L3_3 = A0_3.log
              L5_3 = string
              L5_3 = L5_3.format
              L6_3 = "ERROR: unknown sound entry, animationName=%s, frame=%d"
              L7_3 = A0_3.animationName
              L8_3 = A0_3.currentFrame
              L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3, L7_3, L8_3)
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            end
          end
        end
      end
    else
      L2_3 = Runtime
      L3_3 = L2_3
      L2_3 = L2_3.removeEventListener
      L4_3 = "enterFrame"
      L5_3 = A0_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = L1_2
      L3_3 = L2_3
      L2_3 = L2_3.freeResources
      L2_3(L3_3)
      L2_3 = A0_3.anim
      L2_3 = L2_3.finishEvent
      if L2_3 then
        L2_3 = A0_3.anim
        L2_3 = L2_3.finishEvent
        L3_3 = A0_3
        L2_3(L3_3)
      end
    end
    L2_3 = A0_3.anim
    L3_3 = A0_3.anim
    L3_3 = L3_3.frameCount
    L3_3 = L3_3 + 1
    L2_3.frameCount = L3_3
    L2_3 = A0_3.isPlayReverse
    if not L2_3 then
      L2_3 = A0_3.currentFrame
      L2_3 = L2_3 + 1
      A0_3.currentFrame = L2_3
      L2_3 = A0_3.currentFrame
      L3_3 = A0_3.lastFrame
      if L2_3 > L3_3 then
        A0_3.currentFrame = 1
      end
    else
      L2_3 = A0_3.currentFrame
      L2_3 = L2_3 - 1
      A0_3.currentFrame = L2_3
      L2_3 = A0_3.currentFrame
      if L2_3 < 1 then
        L2_3 = A0_3.lastFrame
        A0_3.currentFrame = L2_3
      end
    end
  end
  
  L1_2.enterFrame = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3
    L5_3 = A0_3.isPlaying
    if L5_3 then
      L6_3 = A0_3
      L5_3 = A0_3.log
      L7_3 = "play called while already playing"
      L5_3(L6_3, L7_3)
      return
    end
    L5_3 = {}
    A0_3.anim = L5_3
    L5_3 = A0_3.anim
    L5_3.loop = A1_3
    L5_3 = A0_3.anim
    L5_3.frameCount = 1
    L5_3 = A0_3.anim
    L6_3 = system
    L6_3 = L6_3.getTimer
    L6_3 = L6_3()
    L5_3.prevTime = L6_3
    L5_3 = A0_3.anim
    L5_3.finishEvent = A2_3
    L5_3 = A0_3.anim
    L5_3.frameEvent = A3_3
    A0_3.isPlaying = true
    L5_3 = A4_3 or L5_3
    if not A4_3 then
      L5_3 = false
    end
    A0_3.isPlayReverse = L5_3
    L6_3 = A0_3
    L5_3 = A0_3.resetStartFrame
    L5_3(L6_3)
    L6_3 = A0_3
    L5_3 = A0_3.enterFrame
    L7_3 = nil
    L5_3(L6_3, L7_3)
    L5_3 = Runtime
    L6_3 = L5_3
    L5_3 = L5_3.addEventListener
    L7_3 = "enterFrame"
    L8_3 = A0_3
    L5_3(L6_3, L7_3, L8_3)
  end
  
  L1_2.play = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    A0_3.isPlaying = false
    L1_3 = A0_3.anim
    if L1_3 then
      L1_3 = A0_3.anim
      L1_3.finishEvent = nil
    end
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "enterFrame"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L1_2
    L2_3 = L1_3
    L1_3 = L1_3.freeResources
    L1_3(L2_3)
  end
  
  L1_2.stop = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "enterFrame"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L1_2.pause = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.addEventListener
    L3_3 = "enterFrame"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L1_2.resume = L2_2
  
  function L2_2(A0_3)
    local L1_3
    L1_3 = A0_3.group
    L1_3.isVisible = false
  end
  
  L1_2.hide = L2_2
  
  function L2_2(A0_3)
    local L1_3
    L1_3 = A0_3.group
    L1_3.isVisible = true
  end
  
  L1_2.show = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = ipairs
    L2_3 = A0_3.layers
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L7_3 = L5_3
      L6_3 = L5_3.freeResources
      L6_3(L7_3)
    end
  end
  
  L1_2.freeResources = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3
    L1_3 = A0_3.stop
    L1_3(L2_3)
    L1_3 = A0_3.layers
    L1_3 = #L1_3
    L2_3 = 1
    L3_3 = -1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3.layers
      L5_3 = L5_3[L4_3]
      L6_3 = L5_3
      L5_3 = L5_3.destroy
      L5_3(L6_3)
      L5_3 = A0_3.layers
      L5_3[L4_3] = nil
    end
    A0_3.layers = nil
    L1_3 = A0_3.group
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    A0_3.group = nil
  end
  
  L1_2.destroy = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.layers
    if L1_3 then
      L1_3 = A0_3.layers
      L1_3 = #L1_3
      L2_3 = 1
      L3_3 = -1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_3.layers
        L5_3 = L5_3[L4_3]
        L6_3 = L5_3
        L5_3 = L5_3.resetStartFrame
        L7_3 = A0_3.isPlayReverse
        L5_3(L6_3, L7_3)
      end
    end
    L1_3 = A0_3.isPlayReverse
    if not L1_3 then
      A0_3.currentFrame = 1
    else
      L1_3 = A0_3.lastFrame
      A0_3.currentFrame = L1_3
    end
  end
  
  L1_2.resetStartFrame = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.layers
    if L1_3 then
      L1_3 = A0_3.layers
      L1_3 = #L1_3
      L2_3 = 1
      L3_3 = -1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_3.layers
        L5_3 = L5_3[L4_3]
        L6_3 = L5_3
        L5_3 = L5_3.nextFrame
        L7_3 = A0_3.isPlayReverse
        L5_3(L6_3, L7_3)
      end
    end
  end
  
  L1_2.nextFrame = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3
    L7_3 = true
    if not (A1_3 < A3_3) then
      L8_3 = A3_3 + A5_3
      if not (A1_3 > L8_3) then
        goto lbl_8
      end
    end
    L7_3 = false
    ::lbl_8::
    if not (A2_3 < A4_3) then
      L8_3 = A4_3 + A6_3
      if not (A2_3 > L8_3) then
        goto lbl_14
      end
    end
    L7_3 = false
    ::lbl_14::
    return L7_3
  end
  
  L1_2.objectContainsPoint = L2_2
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L4_3 = A0_3
    L3_3 = A0_3.getRotation
    L3_3 = L3_3(L4_3)
    L4_3 = A0_3.x
    L5_3 = A0_3.y
    L6_3 = A0_3.width
    L7_3 = A0_3.height
    if L3_3 == 90 then
      L4_3 = L4_3 - L7_3
      L6_3 = A0_3.height
      L7_3 = A0_3.width
    elseif L3_3 == 180 then
      L4_3 = L4_3 - L6_3
      L5_3 = L5_3 - L7_3
    elseif L3_3 == 270 then
      L5_3 = L5_3 - L6_3
      L6_3 = A0_3.height
      L7_3 = A0_3.width
    end
    L9_3 = A0_3
    L8_3 = A0_3.objectContainsPoint
    L10_3 = A1_3
    L11_3 = A2_3
    L12_3 = L4_3
    L13_3 = L5_3
    L14_3 = L6_3
    L15_3 = L7_3
    return L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
  end
  
  L1_2.containsPoint = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    if not A4_3 then
      A4_3 = 0
    end
    L5_3 = nil
    L6_3 = type
    L7_3 = A3_3
    L6_3 = L6_3(L7_3)
    if L6_3 == "string" then
      L7_3 = A0_3
      L6_3 = A0_3.getLayer
      L8_3 = A3_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3 = L6_3
      if not L5_3 then
        L7_3 = A0_3
        L6_3 = A0_3.log
        L8_3 = string
        L8_3 = L8_3.format
        L9_3 = "ERROR, layer %s is not defined"
        L10_3 = A3_3
        L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L8_3(L9_3, L10_3)
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L6_3 = false
        return L6_3
      end
    else
      L6_3 = type
      L7_3 = A3_3
      L6_3 = L6_3(L7_3)
      if L6_3 == "table" then
        L5_3 = A3_3
      else
        L6_3 = print
        L7_3 = "ERROR - wrong type for layerOrName in timeline:containsPointAt"
        L6_3(L7_3)
        L6_3 = false
        return L6_3
      end
    end
    L7_3 = L5_3
    L6_3 = L5_3.getPosition
    L6_3, L7_3 = L6_3(L7_3)
    L9_3 = L5_3
    L8_3 = L5_3.getDimension
    L8_3, L9_3 = L8_3(L9_3)
    L11_3 = A0_3
    L10_3 = A0_3.getRotation
    L10_3 = L10_3(L11_3)
    if L10_3 == 0 then
      L11_3 = A0_3.x
      L11_3 = L6_3 + L11_3
      L6_3 = L11_3 - A4_3
      L11_3 = A0_3.y
      L11_3 = L7_3 + L11_3
      L7_3 = L11_3 - A4_3
      L11_3 = 2 * A4_3
      L8_3 = L8_3 + L11_3
      L11_3 = 2 * A4_3
      L9_3 = L9_3 + L11_3
    elseif L10_3 == 90 then
      L11_3 = L6_3
      L12_3 = L8_3
      L13_3 = A0_3.x
      L13_3 = L13_3 - L7_3
      L13_3 = L13_3 - L9_3
      L6_3 = L13_3 - A4_3
      L13_3 = A0_3.y
      L13_3 = L13_3 + L11_3
      L7_3 = L13_3 - A4_3
      L13_3 = 2 * A4_3
      L8_3 = L9_3 + L13_3
      L13_3 = 2 * A4_3
      L9_3 = L12_3 + L13_3
    elseif L10_3 == 180 then
      L11_3 = A0_3.x
      L11_3 = L11_3 - L6_3
      L11_3 = L11_3 - L8_3
      L6_3 = L11_3 - A4_3
      L11_3 = A0_3.y
      L11_3 = L11_3 - L7_3
      L11_3 = L11_3 - L9_3
      L7_3 = L11_3 - A4_3
      L11_3 = 2 * A4_3
      L8_3 = L8_3 + L11_3
      L11_3 = 2 * A4_3
      L9_3 = L9_3 + L11_3
    elseif L10_3 == 270 then
      L11_3 = L6_3
      L12_3 = L8_3
      L13_3 = A0_3.x
      L13_3 = L13_3 + L7_3
      L6_3 = L13_3 - A4_3
      L13_3 = A0_3.y
      L13_3 = L13_3 - L11_3
      L13_3 = L13_3 - L8_3
      L7_3 = L13_3 - A4_3
      L13_3 = 2 * A4_3
      L8_3 = L9_3 + L13_3
      L13_3 = 2 * A4_3
      L9_3 = L12_3 + L13_3
    end
    L12_3 = A0_3
    L11_3 = A0_3.objectContainsPoint
    L13_3 = A1_3
    L14_3 = A2_3
    L15_3 = L6_3
    L16_3 = L7_3
    L17_3 = L8_3
    L18_3 = L9_3
    return L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
  end
  
  L1_2.containsPointAt = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L5_3 = assert
    L6_3 = type
    L7_3 = A3_3
    L6_3 = L6_3(L7_3)
    L6_3 = L6_3 == "function"
    L7_3 = "comparator is not a function"
    L5_3(L6_3, L7_3)
    if not A4_3 then
      A4_3 = 0
    end
    L5_3 = ipairs
    L6_3 = A0_3.layers
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = A3_3
      L11_3 = L9_3.name
      L10_3 = L10_3(L11_3)
      if L10_3 then
        L11_3 = A0_3
        L10_3 = A0_3.containsPointAt
        L12_3 = A1_3
        L13_3 = A2_3
        L14_3 = L9_3
        L15_3 = A4_3
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
        if L10_3 then
          return L9_3
        end
      end
    end
    L5_3 = nil
    return L5_3
  end
  
  L1_2.layerWithPointAtUsingComparator = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = print
    L3_3 = "[timeline="
    L4_3 = A0_3.animationName
    L5_3 = "] "
    L6_3 = A1_3
    L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
    L2_3(L3_3)
  end
  
  L1_2.log = L2_2
  return L1_2
end

newTimeline = L10_1

function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.isLayer = true
  L1_2.name = A0_2
  L2_2 = {}
  L1_2.frames = L2_2
  L1_2.currentIndex = 1
  L1_2.lastIndex = 1
  L1_2.currentImage = nil
  L1_2.x = 0
  L1_2.y = 0
  L1_2.subContainer = nil
  L1_2.group = nil
  L1_2.conf = nil
  L1_2.resourcesLoaded = false
  
  function L2_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L4_3 = A1_3
    L5_3 = A1_3 + A2_3
    L5_3 = L5_3 - 1
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = A0_3.frames
      L8_3[L7_3] = A3_3
      L8_3 = L6_1
      L9_3 = A0_3.name
      L8_3 = L8_3[L9_3]
      if L8_3 then
        L8_3 = A0_3.frames
        L8_3 = L8_3[L7_3]
        L9_3 = L6_1
        L10_3 = A0_3.name
        L9_3 = L9_3[L10_3]
        L9_3 = L9_3.x
        L8_3.x = L9_3
        L8_3 = A0_3.frames
        L8_3 = L8_3[L7_3]
        L9_3 = L6_1
        L10_3 = A0_3.name
        L9_3 = L9_3[L10_3]
        L9_3 = L9_3.y
        L8_3.y = L9_3
      end
      L8_3 = A0_3.lastIndex
      if L7_3 > L8_3 then
        A0_3.lastIndex = L7_3
      end
    end
  end
  
  L1_2.insertFrame = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.subContainer
    if L1_3 then
      L1_3 = A0_3.subContainer
      L2_3 = L1_3
      L1_3 = L1_3.getPosition
      return L1_3(L2_3)
    else
      L1_3 = A0_3.frames
      L2_3 = A0_3.currentIndex
      L1_3 = L1_3[L2_3]
      L2_3 = A0_3.x
      L3_3 = L1_3.x
      L2_3 = L2_3 + L3_3
      L3_3 = A0_3.y
      L4_3 = L1_3.y
      L3_3 = L3_3 + L4_3
      return L2_3, L3_3
    end
  end
  
  L1_2.getPosition = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.subContainer
    if L1_3 then
      L1_3 = A0_3.subContainer
      L2_3 = L1_3
      L1_3 = L1_3.getDimension
      return L1_3(L2_3)
    else
      L1_3 = A0_3.currentImage
      L2_3 = L1_3.width
      L3_3 = L1_3.height
      return L2_3, L3_3
    end
  end
  
  L1_2.getDimension = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = assert
    L3_3 = A0_3.group
    L4_3 = "group in layer '"
    L5_3 = A0_3.name
    L6_3 = "' not defined"
    L4_3 = L4_3 .. L5_3 .. L6_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.frames
    L3_3 = A0_3.currentIndex
    L2_3 = L2_3[L3_3]
    L3_3 = A0_3.currentImage
    if L3_3 then
      L3_3 = A0_3.currentImage
      L3_3.isVisible = false
    end
    if L2_3 then
      L3_3 = assert
      L4_3 = L2_3.o
      L5_3 = "["
      L6_3 = A0_3.name
      L7_3 = "] no object in frame #"
      L8_3 = A0_3.currentIndex
      L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
      L3_3(L4_3, L5_3)
      L3_3 = L2_3.img
      if L3_3 then
        L3_3 = L2_3.img
        A0_3.currentImage = L3_3
        L3_3 = A0_3.currentImage
        L4_3 = A0_3.x
        L5_3 = L2_3.x
        L4_3 = L4_3 + L5_3
        L3_3.x = L4_3
        L3_3 = A0_3.currentImage
        L4_3 = A0_3.y
        L5_3 = L2_3.y
        L4_3 = L4_3 + L5_3
        L3_3.y = L4_3
        L3_3 = A0_3.currentImage
        L3_3.isVisible = true
        L3_3 = A0_3.group
        L4_3 = L3_3
        L3_3 = L3_3.insert
        L5_3 = A0_3.currentImage
        L3_3(L4_3, L5_3)
      else
        L3_3 = A0_3.subContainer
        if L3_3 then
          L3_3 = A0_3.subContainer
          L4_3 = A0_3.group
          L3_3.group = L4_3
          L3_3 = A0_3.subContainer
          L4_3 = L2_3.x
          L3_3.x = L4_3
          L3_3 = A0_3.subContainer
          L4_3 = L2_3.y
          L3_3.y = L4_3
          L3_3 = A0_3.subContainer
          L4_3 = L3_3
          L3_3 = L3_3.nextFrame
          L5_3 = A1_3
          L3_3(L4_3, L5_3)
        else
          L3_3 = string
          L3_3 = L3_3.find
          L4_3 = L2_3.o
          L5_3 = ".png$"
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = display
            L3_3 = L3_3.newImage
            L4_3 = A0_3.group
            L5_3 = ANIM_PIC_DIR
            L6_3 = L2_3.o
            L5_3 = L5_3 .. L6_3
            L6_3 = 0
            L7_3 = 0
            L8_3 = true
            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            L2_3.img = L3_3
            L3_3 = L2_3.img
            if L3_3 then
              L3_3 = L2_3.img
              L4_3 = L3_3
              L3_3 = L3_3.setReferencePoint
              L5_3 = display
              L5_3 = L5_3.TopLeftReferencePoint
              L3_3(L4_3, L5_3)
              L3_3 = L2_3.img
              L3_3.isVisible = false
              L3_3 = L2_3.img
              A0_3.currentImage = L3_3
              L3_3 = A0_3.currentImage
              L4_3 = A0_3.x
              L5_3 = L2_3.x
              L4_3 = L4_3 + L5_3
              L3_3.x = L4_3
              L3_3 = A0_3.currentImage
              L4_3 = A0_3.y
              L5_3 = L2_3.y
              L4_3 = L4_3 + L5_3
              L3_3.y = L4_3
              L3_3 = A0_3.currentImage
              L3_3.isVisible = true
            end
          else
            L4_3 = A0_3
            L3_3 = A0_3.loadSubContainer
            L5_3 = L2_3.o
            L3_3(L4_3, L5_3)
            L3_3 = A0_3.subContainer
            if L3_3 then
              L3_3 = A0_3.subContainer
              L4_3 = L2_3.x
              L3_3.x = L4_3
              L3_3 = A0_3.subContainer
              L4_3 = L2_3.y
              L3_3.y = L4_3
              L3_3 = A0_3.subContainer
              L4_3 = L3_3
              L3_3 = L3_3.nextFrame
              L5_3 = A1_3
              L3_3(L4_3, L5_3)
            else
              L3_3 = print
              L4_3 = "["
              L5_3 = A0_3.name
              L6_3 = "] no image or subContainer in frame #"
              L7_3 = A0_3.currentIndex
              L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
              L3_3(L4_3)
            end
          end
        end
      end
    end
    if not A1_3 then
      L3_3 = A0_3.currentIndex
      L3_3 = L3_3 + 1
      A0_3.currentIndex = L3_3
      L3_3 = A0_3.currentIndex
      L4_3 = A0_3.lastIndex
      if L3_3 > L4_3 then
        A0_3.currentIndex = 1
      end
    else
      L3_3 = A0_3.currentIndex
      L3_3 = L3_3 - 1
      A0_3.currentIndex = L3_3
      L3_3 = A0_3.currentIndex
      if L3_3 < 1 then
        L3_3 = A0_3.lastIndex
        A0_3.currentIndex = L3_3
      end
    end
  end
  
  L1_2.nextFrame = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.subContainer
    if L1_3 then
      L1_3 = A0_3.subContainer
      L2_3 = L1_3
      L1_3 = L1_3.hide
      L1_3(L2_3)
    else
      L1_3 = A0_3.currentImage
      if L1_3 then
        L1_3 = A0_3.currentImage
        L1_3.isVisible = false
      end
    end
  end
  
  L1_2.hide = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.subContainer
    if L1_3 then
      L1_3 = A0_3.subContainer
      L2_3 = L1_3
      L1_3 = L1_3.show
      L1_3(L2_3)
    else
      L1_3 = A0_3.currentImage
      if L1_3 then
        L1_3 = A0_3.currentImage
        L1_3.isVisible = true
      end
    end
  end
  
  L1_2.show = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    A0_3.audioController = A1_3
    L2_3 = A0_3.subContainer
    if L2_3 then
      L2_3 = A0_3.subContainer
      L3_3 = L2_3
      L2_3 = L2_3.setAudioController
      L4_3 = A0_3.audioController
      L2_3(L3_3, L4_3)
    end
  end
  
  L1_2.setAudioController = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    A0_3.animationName = A1_3
    L2_3 = A0_3.subContainer
    if L2_3 then
      L2_3 = A0_3.subContainer
      L3_3 = L2_3
      L2_3 = L2_3.setAnimationName
      L4_3 = A0_3.animationName
      L2_3(L3_3, L4_3)
    end
  end
  
  L1_2.setAnimationName = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3.resourcesLoaded
    if L1_3 then
      return
    end
    L1_3 = ipairs
    L2_3 = A0_3.frames
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = L5_3.o
      if not L6_3 then
        L7_3 = A0_3
        L6_3 = A0_3.log
        L8_3 = "no object in frame #"
        L9_3 = L4_3
        L8_3 = L8_3 .. L9_3
        L6_3(L7_3, L8_3)
      else
        L6_3 = string
        L6_3 = L6_3.find
        L7_3 = L5_3.o
        L8_3 = ".png$"
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = display
          L6_3 = L6_3.newImage
          L7_3 = A0_3.group
          L8_3 = ANIM_PIC_DIR
          L9_3 = L5_3.o
          L8_3 = L8_3 .. L9_3
          L9_3 = 0
          L10_3 = 0
          L11_3 = true
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          L5_3.img = L6_3
          L6_3 = L5_3.img
          if L6_3 then
            L6_3 = L5_3.img
            L7_3 = L6_3
            L6_3 = L6_3.setReferencePoint
            L8_3 = display
            L8_3 = L8_3.TopLeftReferencePoint
            L6_3(L7_3, L8_3)
            L6_3 = L5_3.img
            L6_3.isVisible = false
          end
        else
          L6_3 = A0_3.subContainer
          if not L6_3 then
            L7_3 = A0_3
            L6_3 = A0_3.loadSubContainer
            L8_3 = L5_3.o
            L6_3(L7_3, L8_3)
            L6_3 = A0_3.subContainer
            L7_3 = L6_3
            L6_3 = L6_3.loadResources
            L6_3(L7_3)
          end
        end
      end
    end
    A0_3.resourcesLoaded = true
  end
  
  L1_2.loadResources = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.conf
    L3_3 = L2_3
    L2_3 = L2_3.getConfiguration
    L4_3 = A0_3.animationName
    L5_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L4_3 = A0_3
    L3_3 = A0_3.log
    L5_3 = "load subcontainer: "
    L6_3 = L2_3
    L5_3 = L5_3 .. L6_3
    L3_3(L4_3, L5_3)
    L3_3 = system
    L3_3 = L3_3.pathForFile
    L4_3 = ANIM_DATA_DIR
    L5_3 = L2_3
    L4_3 = L4_3 .. L5_3
    L3_3 = L3_3(L4_3)
    if L3_3 then
      L4_3 = L4_1
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      A0_3.subContainer = L4_3
      L4_3 = A0_3.subContainer
      if not L4_3 then
        L4_3 = newLayer
        L5_3 = "empty"
        L4_3 = L4_3(L5_3)
        A0_3.subContainer = L4_3
      end
    else
      L4_3 = newLayer
      L5_3 = "empty"
      L4_3 = L4_3(L5_3)
      A0_3.subContainer = L4_3
    end
    L4_3 = A0_3.subContainer
    L5_3 = A0_3.group
    L4_3.group = L5_3
    L4_3 = A0_3.subContainer
    L5_3 = A0_3.conf
    L4_3.conf = L5_3
    L4_3 = A0_3.subContainer
    L5_3 = L4_3
    L4_3 = L4_3.setAudioController
    L6_3 = A0_3.audioController
    L4_3(L5_3, L6_3)
    L4_3 = A0_3.subContainer
    L5_3 = L4_3
    L4_3 = L4_3.setAnimationName
    L6_3 = A0_3.animationName
    L4_3(L5_3, L6_3)
  end
  
  L1_2.loadSubContainer = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if not A1_3 then
      A0_3.currentIndex = 1
      L2_3 = A0_3.subContainer
      if L2_3 then
        L2_3 = A0_3.subContainer
        L3_3 = L2_3
        L2_3 = L2_3.resetStartFrame
        L2_3(L3_3)
      end
    else
      L2_3 = A0_3.lastIndex
      A0_3.currentIndex = L2_3
      L2_3 = A0_3.subContainer
      if L2_3 then
        L2_3 = A0_3.subContainer
        L3_3 = L2_3
        L2_3 = L2_3.resetStartFrame
        L4_3 = A1_3
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  L1_2.resetStartFrame = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.subContainer
    if L1_3 then
      L1_3 = A0_3.subContainer
      L2_3 = L1_3
      L1_3 = L1_3.freeResources
      L1_3(L2_3)
    else
      L1_3 = ipairs
      L2_3 = A0_3.frames
      L1_3, L2_3, L3_3 = L1_3(L2_3)
      for L4_3, L5_3 in L1_3, L2_3, L3_3 do
        L6_3 = L5_3.img
        if L6_3 then
          L6_3 = L5_3.img
          L6_3 = L6_3.isVisible
          if not L6_3 then
            L6_3 = L5_3.img
            L7_3 = L6_3
            L6_3 = L6_3.removeSelf
            L6_3(L7_3)
            L5_3.img = nil
          end
        end
      end
    end
  end
  
  L1_2.freeResources = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3
    L1_3 = A0_3.log
    L3_3 = "destroy"
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.subContainer
    if L1_3 then
      L1_3 = A0_3.subContainer
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
    else
      L1_3 = A0_3.frames
      L1_3 = #L1_3
      L2_3 = 1
      L3_3 = -1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_3.frames
        L5_3 = L5_3[L4_3]
        L6_3 = L5_3.img
        if L6_3 then
          L6_3 = L5_3.img
          L6_3.isVisible = false
          L6_3 = L5_3.img
          L7_3 = L6_3
          L6_3 = L6_3.removeSelf
          L6_3(L7_3)
          L5_3.img = nil
        end
        L5_3 = nil
        L6_3 = A0_3.frames
        L6_3[L4_3] = nil
      end
      L1_3 = A0_3.currentImage
      if L1_3 then
        L1_3 = A0_3.currentImage
        L1_3 = L1_3.img
        if L1_3 then
          L1_3 = A0_3.currentImage
          L1_3 = L1_3.img
          L1_3.isVisible = false
          L1_3 = A0_3.currentImage
          L1_3 = L1_3.img
          L2_3 = L1_3
          L1_3 = L1_3.removeSelf
          L1_3(L2_3)
          L1_3 = A0_3.currentImage
          L1_3.img = nil
        end
      end
    end
    A0_3.group = nil
    A0_3.frames = nil
    A0_3.subContainer = nil
    A0_3.conf = nil
    A0_3.currentImage = nil
  end
  
  L1_2.destroy = L2_2
  
  function L2_2(A0_3, A1_3)
  end
  
  L1_2.log = L2_2
  return L1_2
end

newLayer = L10_1
