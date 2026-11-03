local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "anim"
L0_1(L1_1)
L0_1 = require
L1_1 = "animdata"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.readAnimDataFile
L2_1 = 10
TAP_BG_OBJECT_ADD_BORDER = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.specialTimeline = nil
  if A0_2 then
    L1_2.configuration = A0_2
  else
    L2_2 = newConfiguration
    L2_2 = L2_2()
    L1_2.configuration = L2_2
    L2_2 = L1_2.configuration
    L3_2 = L2_2
    L2_2 = L2_2.loadConfiguration
    L2_2(L3_2)
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[background] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = A0_3
    L2_3 = ".data"
    L1_3 = L1_3 .. L2_3
    L2_3 = system
    L2_3 = L2_3.pathForFile
    L3_3 = ANIM_DATA_DIR
    L4_3 = L1_3
    L3_3 = L3_3 .. L4_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L3_3 = L1_1
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L5_3 = L3_3
        L4_3 = L3_3.setConfiguration
        L6_3 = L1_2
        L6_3 = L6_3.configuration
        L4_3(L5_3, L6_3)
        L4_3 = L3_3.width
        L4_3 = -L4_3
        L4_3 = L4_3 / 2
        L5_3 = display
        L5_3 = L5_3.contentWidth
        L5_3 = L5_3 / 2
        L4_3 = L4_3 + L5_3
        L5_3 = L3_3.height
        L5_3 = -L5_3
        L5_3 = L5_3 / 2
        L6_3 = display
        L6_3 = L6_3.contentHeight
        L6_3 = L6_3 / 2
        L5_3 = L5_3 + L6_3
        L6_3 = display
        L6_3 = L6_3.contentHeight
        L7_3 = WORLD_HEIGHT
        L6_3 = L6_3 - L7_3
        L6_3 = L6_3 / 2
        L5_3 = L5_3 - L6_3
        L7_3 = L3_3
        L6_3 = L3_3.moveTo
        L8_3 = L4_3
        L9_3 = L5_3
        L6_3(L7_3, L8_3, L9_3)
        L6_3 = SCREEN_BACKGROUND
        L7_3 = L6_3
        L6_3 = L6_3.insert
        L8_3 = L3_3.group
        L6_3(L7_3, L8_3)
        return L3_3
      else
        L4_3 = L2_2
        L5_3 = "ERROR: something went wrong when reading anim data file: "
        L6_3 = L1_3
        L5_3 = L5_3 .. L6_3
        L4_3(L5_3)
        L4_3 = nil
        return L4_3
      end
    else
      L3_3 = L2_2
      L4_3 = "ERROR: could not find background data file: "
      L5_3 = L1_3
      L4_3 = L4_3 .. L5_3
      L3_3(L4_3)
      L3_3 = L1_2
      L3_3 = L3_3.configuration
      L3_3 = L3_3.background
      L4_3 = DEFAULT_BACKGROUND
      if L3_3 ~= L4_3 then
        L3_3 = L2_2
        L4_3 = "try to load default background"
        L3_3(L4_3)
        L3_3 = L1_2
        L3_3 = L3_3.configuration
        L4_3 = DEFAULT_BACKGROUND
        L3_3.background = L4_3
        L3_3 = L3_2
        L4_3 = L1_2
        L4_3 = L4_3.configuration
        L4_3 = L4_3.background
        return L3_3(L4_3)
      else
        L3_3 = nil
        return L3_3
      end
    end
  end
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_2
    L1_3 = L3_2
    L2_3 = L1_2
    L2_3 = L2_3.configuration
    L2_3 = L2_3.background
    L1_3 = L1_3(L2_3)
    L0_3.mainTimeline = L1_3
    L0_3 = L1_2
    L1_3 = L3_2
    L2_3 = L1_2
    L2_3 = L2_3.configuration
    L2_3 = L2_3.background
    L3_3 = "_1"
    L2_3 = L2_3 .. L3_3
    L1_3 = L1_3(L2_3)
    L0_3.skyTimeline = L1_3
    L0_3 = L1_2
    L1_3 = L3_2
    L2_3 = L1_2
    L2_3 = L2_3.configuration
    L2_3 = L2_3.background
    L3_3 = "_2"
    L2_3 = L2_3 .. L3_3
    L1_3 = L1_3(L2_3)
    L0_3.groundTimeline = L1_3
  end
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_2
    L2_3 = "show sky"
    L1_3(L2_3)
    L1_3 = A0_3.mainTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = A0_3.mainTimeline
    L2_3 = L1_3
    L1_3 = L1_3.hide
    L1_3(L2_3)
    L1_3 = A0_3.skyTimeline
    L2_3 = L1_3
    L1_3 = L1_3.show
    L1_3(L2_3)
    L1_3 = SCREEN_BACKGROUND
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = A0_3.skyTimeline
    L3_3 = L3_3.group
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.skyTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L1_3(L2_3, L3_3)
  end
  
  L1_2.stopAndPlaySky = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L2_2
    L2_3 = "stop show sky"
    L1_3(L2_3)
    
    function L1_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L1_4 = "stopped show sky"
      L0_4(L1_4)
      L0_4 = A0_3
      L0_4 = L0_4.skyTimeline
      L1_4 = L0_4
      L0_4 = L0_4.hide
      L0_4(L1_4)
      L0_4 = A0_3
      L1_4 = L0_4
      L0_4 = L0_4.play
      L0_4(L1_4)
    end
    
    L2_3 = A0_3.skyTimeline
    L3_3 = L2_3
    L2_3 = L2_3.stop
    L2_3(L3_3)
    L2_3 = A0_3.skyTimeline
    L3_3 = L2_3
    L2_3 = L2_3.show
    L2_3(L3_3)
    L2_3 = SCREEN_BACKGROUND
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = A0_3.skyTimeline
    L4_3 = L4_3.group
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.skyTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L1_3
    L6_3 = nil
    L7_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  
  L1_2.stopAndPlayRevertSky = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_2
    L2_3 = "show ground"
    L1_3(L2_3)
    L1_3 = A0_3.mainTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = A0_3.mainTimeline
    L2_3 = L1_3
    L1_3 = L1_3.hide
    L1_3(L2_3)
    L1_3 = A0_3.groundTimeline
    L2_3 = L1_3
    L1_3 = L1_3.show
    L1_3(L2_3)
    L1_3 = SCREEN_BACKGROUND
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = A0_3.groundTimeline
    L3_3 = L3_3.group
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.groundTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L1_3(L2_3, L3_3)
  end
  
  L1_2.stopAndPlayGround = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L2_2
    L2_3 = "stop show ground"
    L1_3(L2_3)
    
    function L1_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L1_4 = "stopped show ground"
      L0_4(L1_4)
      L0_4 = A0_3
      L0_4 = L0_4.groundTimeline
      L1_4 = L0_4
      L0_4 = L0_4.hide
      L0_4(L1_4)
      L0_4 = A0_3
      L1_4 = L0_4
      L0_4 = L0_4.play
      L0_4(L1_4)
    end
    
    L2_3 = A0_3.groundTimeline
    L3_3 = L2_3
    L2_3 = L2_3.stop
    L2_3(L3_3)
    L2_3 = A0_3.groundTimeline
    L3_3 = L2_3
    L2_3 = L2_3.show
    L2_3(L3_3)
    L2_3 = SCREEN_BACKGROUND
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = A0_3.groundTimeline
    L4_3 = L4_3.group
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.groundTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L1_3
    L6_3 = nil
    L7_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  
  L1_2.stopAndPlayRevertGround = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.mainTimeline
    if L1_3 then
      L1_3 = A0_3.mainTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
    end
    L1_3 = A0_3.skyTimeline
    if L1_3 then
      L1_3 = A0_3.skyTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
    end
    L1_3 = A0_3.groundTimeline
    if L1_3 then
      L1_3 = A0_3.groundTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
    end
  end
  
  L1_2.stop = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_2
    L2_3 = "play main timeline"
    L1_3(L2_3)
    L1_3 = A0_3.mainTimeline
    L2_3 = L1_3
    L1_3 = L1_3.show
    L1_3(L2_3)
    L1_3 = SCREEN_BACKGROUND
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = A0_3.mainTimeline
    L3_3 = L3_3.group
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.mainTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 0
    L1_3(L2_3, L3_3)
  end
  
  L1_2.play = L5_2
  
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3.mainTimeline
    L4_3 = L3_3
    L3_3 = L3_3.translate
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  
  L1_2.translate = L5_2
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.mainTimeline
    if L2_3 then
      L2_3 = A0_3.mainTimeline
      L3_3 = L2_3
      L2_3 = L2_3.rotateAt
      L4_3 = A1_3
      L5_3 = CENTER
      L5_3 = L5_3.x
      L6_3 = CENTER
      L6_3 = L6_3.y
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L2_3 = A0_3.skyTimeline
    if L2_3 then
      L2_3 = A0_3.skyTimeline
      L3_3 = L2_3
      L2_3 = L2_3.rotateAt
      L4_3 = A1_3
      L5_3 = CENTER
      L5_3 = L5_3.x
      L6_3 = CENTER
      L6_3 = L6_3.y
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L2_3 = A0_3.groundTimeline
    if L2_3 then
      L2_3 = A0_3.groundTimeline
      L3_3 = L2_3
      L2_3 = L2_3.rotateAt
      L4_3 = A1_3
      L5_3 = CENTER
      L5_3 = L5_3.x
      L6_3 = CENTER
      L6_3 = L6_3.y
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L2_3 = A0_3.specialTimeline
    if L2_3 then
      L2_3 = A0_3.specialTimeline
      L3_3 = L2_3
      L2_3 = L2_3.rotateAt
      L4_3 = A1_3
      L5_3 = CENTER
      L5_3 = L5_3.x
      L6_3 = CENTER
      L6_3 = L6_3.y
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
  end
  
  L1_2.rotate = L5_2
  
  function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L5_3 = A0_3.mainTimeline
    L6_3 = L5_3
    L5_3 = L5_3.containsPointAt
    L7_3 = A1_3
    L8_3 = A2_3
    L9_3 = A3_3
    L10_3 = A4_3
    return L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  
  L1_2.containsPointAt = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3.match
    L3_3 = ".*_special$"
    return L1_3(L2_3, L3_3)
  end
  
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A0_3.mainTimeline
    L4_3 = L3_3
    L3_3 = L3_3.layerWithPointAtUsingComparator
    L5_3 = A1_3
    L6_3 = A2_3
    L7_3 = L5_2
    L8_3 = TAP_BG_OBJECT_ADD_BORDER
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L4_3 = L3_3 ~= nil
    return L4_3
  end
  
  L1_2.hasSpecialLayerAt = L6_2
  
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L3_3 = A0_3.specialTimeline
    if L3_3 then
      return
    end
    
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = A0_3
      L1_4 = L1_4.mainTimeline
      L2_4 = L1_4
      L1_4 = L1_4.getLayer
      L3_4 = "layer_static_background_2"
      L1_4 = L1_4(L2_4, L3_4)
      L2_4 = SCREEN_BACKGROUND
      L3_4 = L2_4
      L2_4 = L2_4.insert
      L4_4 = L1_4.subContainer
      L4_4 = L4_4.currentImage
      L2_4(L3_4, L4_4)
    end
    
    L4_3 = A0_3.mainTimeline
    L5_3 = L4_3
    L4_3 = L4_3.layerWithPointAtUsingComparator
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = L5_2
    L9_3 = TAP_BG_OBJECT_ADD_BORDER
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    if L4_3 then
      L5_3 = string
      L5_3 = L5_3.format
      L6_3 = "anim_%s_%s_impl.data"
      L7_3 = A0_3.mainTimeline
      L7_3 = L7_3.animationName
      L8_3 = L4_3.name
      L9_3 = L8_3
      L8_3 = L8_3.sub
      L10_3 = string
      L10_3 = L10_3.len
      L11_3 = "layer_"
      L10_3 = L10_3(L11_3)
      L10_3 = L10_3 + 1
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3, L10_3)
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L6_3 = L2_2
      L7_3 = "play special animation: "
      L8_3 = L5_3
      L7_3 = L7_3 .. L8_3
      L6_3(L7_3)
      L6_3 = system
      L6_3 = L6_3.pathForFile
      L7_3 = ANIM_DATA_DIR
      L8_3 = L5_3
      L7_3 = L7_3 .. L8_3
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L7_3 = L1_1
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        A0_3.specialTimeline = L7_3
        L7_3 = A0_3.specialTimeline
        if L7_3 then
          function L7_3()
            local L0_4, L1_4
            
            L0_4 = A0_3
            L0_4 = L0_4.specialTimeline
            L1_4 = L0_4
            L0_4 = L0_4.hide
            L0_4(L1_4)
            L0_4 = A0_3
            L0_4 = L0_4.specialTimeline
            L1_4 = L0_4
            L0_4 = L0_4.destroy
            L0_4(L1_4)
            L0_4 = L4_3
            L1_4 = L0_4
            L0_4 = L0_4.show
            L0_4(L1_4)
            L0_4 = A0_3
            L0_4 = L0_4.mainTimeline
            L1_4 = L0_4
            L0_4 = L0_4.resume
            L0_4(L1_4)
            L0_4 = A0_3
            L0_4.specialTimeline = nil
          end
          
          L8_3 = A0_3.mainTimeline
          L8_3 = L8_3.animationName
          if L8_3 == "background_03" then
            L8_3 = L4_3.name
            if L8_3 == "layer_wolf_special" then
              L8_3 = A0_3.mainTimeline
              L8_3 = L8_3.currentFrame
              if L8_3 < 2 or 44 < L8_3 then
                L9_3 = A0_3.specialTimeline
                if L9_3 then
                  L9_3 = A0_3.specialTimeline
                  L10_3 = L9_3
                  L9_3 = L9_3.destroy
                  L9_3(L10_3)
                  A0_3.specialTimeline = nil
                end
                return
              end
          end
          else
            L8_3 = A0_3.mainTimeline
            L8_3 = L8_3.animationName
            if L8_3 == "background_09" then
              L8_3 = L4_3.name
              if L8_3 == "layer_bird_special" then
                L8_3 = A0_3.mainTimeline
                L8_3 = L8_3.currentFrame
                if 7 < L8_3 and L8_3 < 11 or 21 < L8_3 and L8_3 < 25 then
                  L9_3 = A0_3.specialTimeline
                  if L9_3 then
                    L9_3 = A0_3.specialTimeline
                    L10_3 = L9_3
                    L9_3 = L9_3.destroy
                    L9_3(L10_3)
                    A0_3.specialTimeline = nil
                  end
                  return
                end
            end
            else
              L8_3 = A0_3.mainTimeline
              L8_3 = L8_3.animationName
              if L8_3 == "background_08" then
                L8_3 = L4_3.name
                if L8_3 == "layer_dog_special" then
                  L8_3 = A0_3.mainTimeline
                  L8_3 = L8_3.currentFrame
                  L8_3 = L8_3 % 12
                  if L8_3 == 0 then
                    L8_3 = 12
                  end
                  if 1 < L8_3 and L8_3 < 8 then
                    L9_3 = A0_3.specialTimeline
                    if L9_3 then
                      L9_3 = A0_3.specialTimeline
                      L10_3 = L9_3
                      L9_3 = L9_3.destroy
                      L9_3(L10_3)
                      A0_3.specialTimeline = nil
                    end
                    return
                  end
              end
              else
                L8_3 = A0_3.mainTimeline
                L8_3 = L8_3.animationName
                if L8_3 == "background_christmas_01" then
                  L8_3 = L4_3.name
                  if L8_3 == "layer_reindeer_special" then
                    L8_3 = A0_3.mainTimeline
                    L8_3 = L8_3.currentFrame
                    if L8_3 < 5 or 23 < L8_3 and L8_3 < 36 then
                      L9_3 = A0_3.specialTimeline
                      if L9_3 then
                        L9_3 = A0_3.specialTimeline
                        L10_3 = L9_3
                        L9_3 = L9_3.destroy
                        L9_3(L10_3)
                        A0_3.specialTimeline = nil
                      end
                      return
                    end
                  end
                end
              end
            end
          end
          L8_3 = A0_3.mainTimeline
          L9_3 = L8_3
          L8_3 = L8_3.pause
          L8_3(L9_3)
          L9_3 = L4_3
          L8_3 = L4_3.hide
          L8_3(L9_3)
          L8_3 = A0_3.specialTimeline
          L9_3 = L8_3
          L8_3 = L8_3.setConfiguration
          L10_3 = A0_3.configuration
          L8_3(L9_3, L10_3)
          L8_3 = SCREEN_BACKGROUND
          L9_3 = L8_3
          L8_3 = L8_3.insert
          L10_3 = A0_3.specialTimeline
          L10_3 = L10_3.group
          L8_3(L9_3, L10_3)
          L8_3 = A0_3.specialTimeline
          L9_3 = L8_3
          L8_3 = L8_3.moveTo
          L11_3 = L4_3
          L10_3 = L4_3.getPosition
          L10_3, L11_3, L12_3 = L10_3(L11_3)
          L8_3(L9_3, L10_3, L11_3, L12_3)
          L8_3 = A0_3.specialTimeline
          L9_3 = L8_3
          L8_3 = L8_3.rotateAt
          L10_3 = A0_3.mainTimeline
          L11_3 = L10_3
          L10_3 = L10_3.getRotation
          L10_3 = L10_3(L11_3)
          L11_3 = CENTER
          L11_3 = L11_3.x
          L12_3 = CENTER
          L12_3 = L12_3.y
          L8_3(L9_3, L10_3, L11_3, L12_3)
          L8_3 = A0_3.mainTimeline
          L8_3 = L8_3.animationName
          if L8_3 ~= "background_05" then
            L8_3 = A0_3.specialTimeline
            L9_3 = L8_3
            L8_3 = L8_3.play
            L10_3 = 1
            L11_3 = L7_3
            L8_3(L9_3, L10_3, L11_3)
          else
            L8_3 = A0_3.specialTimeline
            L9_3 = L8_3
            L8_3 = L8_3.play
            L10_3 = 1
            L11_3 = L7_3
            L12_3 = L3_3
            L8_3(L9_3, L10_3, L11_3, L12_3)
          end
        else
          L7_3 = L2_2
          L8_3 = "ERROR - could not load timeline: "
          L9_3 = L6_3
          L8_3 = L8_3 .. L9_3
          L7_3(L8_3)
        end
      else
        L7_3 = L2_2
        L8_3 = "ERROR - file not found: "
        L9_3 = L6_3
        L8_3 = L8_3 .. L9_3
        L7_3(L8_3)
      end
    end
  end
  
  L1_2.playSpecialLayerAt = L6_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.specialTimeline
    if L1_3 then
      L1_3 = A0_3.specialTimeline
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
      A0_3.specialTimeline = nil
    end
  end
  
  L1_2.stopSpecialLayer = L6_2
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.mainTimeline
    L1_3 = L1_3.animationName
    L2_3 = A0_3.configuration
    L2_3 = L2_3.background
    if L1_3 ~= L2_3 then
      L2_3 = A0_3
      L1_3 = A0_3.stop
      L1_3(L2_3)
      L1_3 = A0_3.mainTimeline
      L2_3 = L1_3
      L1_3 = L1_3.getRotation
      L1_3 = L1_3(L2_3)
      L2_3 = A0_3.mainTimeline
      L3_3 = A0_3.skyTimeline
      L4_3 = A0_3.groundTimeline
      L5_3 = L4_2
      L5_3()
      L6_3 = A0_3
      L5_3 = A0_3.rotate
      L7_3 = L1_3
      L5_3(L6_3, L7_3)
      L6_3 = A0_3
      L5_3 = A0_3.play
      L5_3(L6_3)
      if L2_3 then
        L6_3 = L2_3
        L5_3 = L2_3.destroy
        L5_3(L6_3)
        L2_3 = nil
      end
      if L3_3 then
        L6_3 = L3_3
        L5_3 = L3_3.destroy
        L5_3(L6_3)
        L3_3 = nil
      end
      if L4_3 then
        L6_3 = L4_3
        L5_3 = L4_3.destroy
        L5_3(L6_3)
        L4_3 = nil
      end
      L6_3 = A0_3
      L5_3 = A0_3.stopSpecialLayer
      L5_3(L6_3)
    end
  end
  
  L1_2.reload = L6_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    A0_3.configuration = nil
    L1_3 = A0_3.mainTimeline
    if L1_3 then
      L1_3 = A0_3.mainTimeline
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
      A0_3.mainTimeline = nil
    end
    L1_3 = A0_3.skyTimeline
    if L1_3 then
      L1_3 = A0_3.skyTimeline
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
      A0_3.skyTimeline = nil
    end
    L1_3 = A0_3.groundTimeline
    if L1_3 then
      L1_3 = A0_3.groundTimeline
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
      A0_3.groundTimeline = nil
    end
    L1_3 = A0_3.specialTimeline
    if L1_3 then
      L1_3 = A0_3.specialTimeline
      L2_3 = L1_3
      L1_3 = L1_3.destroy
      L1_3(L2_3)
      A0_3.specialTimeline = nil
    end
  end
  
  L1_2.destroy = L6_2
  L6_2 = L4_2
  L6_2()
  return L1_2
end

newBackground = L2_1
