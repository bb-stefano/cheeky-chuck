local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "vectmath"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.VectorMT
L2_1 = L0_1.vectCross
L3_1 = L0_1.vectAngle
L4_1 = L0_1.vectLen
L5_1 = L0_1.vectNorm
L6_1 = math
L6_1 = L6_1.rad
L7_1 = math
L7_1 = L7_1.deg
L8_1 = math
L8_1 = L8_1.abs
L9_1 = 800
L10_1 = 600
L11_1 = 1200
L12_1 = -1.1
L13_1 = -0.97
L14_1 = L6_1
L15_1 = 30
L14_1 = L14_1(L15_1)
L15_1 = L6_1
L16_1 = 15
L15_1 = L15_1(L16_1)
L16_1 = 0.15
L17_1 = 0.02
L18_1 = L6_1
L19_1 = 20
L18_1 = L18_1(L19_1)
L19_1 = L6_1
L20_1 = 75
L19_1 = L19_1(L20_1)
L20_1 = 4
L21_1 = 200
L22_1 = 3000
L23_1 = -0.5
L24_1 = 0.1
L25_1 = 0.3
L26_1 = 0.35
L27_1 = 0.75
L28_1 = 0.05
L29_1 = 5
L30_1 = 2200
L31_1 = 0.95
L32_1 = 0.4
L33_1 = 0.7
L34_1 = 15

function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = {}
  L3_2.animegg = A0_2
  L3_2.background = A1_2
  L3_2.orientationChangedListener = A2_2
  L4_2 = {}
  L4_2.x = 0
  L4_2.y = -1
  L4_2.z = 0
  L4_2.o = "portrait"
  L4_2.t = "portrait"
  L3_2.portrait = L4_2
  L4_2 = {}
  L4_2.x = 0
  L4_2.y = 1
  L4_2.z = 0
  L4_2.o = "portraitUpsideDown"
  L4_2.t = "portrait"
  L3_2.portraitUpsideDown = L4_2
  L4_2 = {}
  L4_2.x = -1
  L4_2.y = 0
  L4_2.z = 0
  L4_2.o = "landscapeLeft"
  L4_2.t = "landscape"
  L3_2.landscapeLeft = L4_2
  L4_2 = {}
  L4_2.x = 1
  L4_2.y = 0
  L4_2.z = 0
  L4_2.o = "landscapeRight"
  L4_2.t = "landscape"
  L3_2.landscapeRight = L4_2
  L4_2 = {}
  L4_2.x = 0
  L4_2.y = 0
  L4_2.z = -1
  L4_2.o = "faceUp"
  L4_2.t = "face"
  L3_2.faceUp = L4_2
  L4_2 = {}
  L4_2.x = 0
  L4_2.y = 0
  L4_2.z = 1
  L4_2.o = "faceDown"
  L4_2.t = "face"
  L3_2.faceDown = L4_2
  L4_2 = L3_2.portrait
  L5_2 = {}
  L5_2.hAxis = "x"
  L5_2.left = 0
  L6_2 = WORLD_WIDTH
  L5_2.right = L6_2
  L5_2.vAxis = "y"
  L5_2.top = 0
  L6_2 = WORLD_HEIGHT
  L5_2.bottom = L6_2
  L4_2.bounds = L5_2
  L4_2 = L3_2.portraitUpsideDown
  L5_2 = {}
  L5_2.hAxis = "x"
  L6_2 = WORLD_WIDTH
  L5_2.left = L6_2
  L5_2.right = 0
  L5_2.vAxis = "y"
  L6_2 = WORLD_HEIGHT
  L5_2.top = L6_2
  L5_2.bottom = 0
  L4_2.bounds = L5_2
  L4_2 = L3_2.landscapeLeft
  L5_2 = {}
  L5_2.hAxis = "y"
  L5_2.left = 0
  L6_2 = WORLD_HEIGHT
  L5_2.right = L6_2
  L5_2.vAxis = "x"
  L6_2 = WORLD_WIDTH
  L5_2.top = L6_2
  L5_2.bottom = 0
  L4_2.bounds = L5_2
  L4_2 = L3_2.landscapeRight
  L5_2 = {}
  L5_2.hAxis = "y"
  L6_2 = WORLD_HEIGHT
  L5_2.left = L6_2
  L5_2.right = 0
  L5_2.vAxis = "x"
  L5_2.top = 0
  L6_2 = WORLD_WIDTH
  L5_2.bottom = L6_2
  L4_2.bounds = L5_2
  L4_2 = L3_2.portrait
  L4_2.rot = 0
  L4_2 = L3_2.portraitUpsideDown
  L4_2.rot = 180
  L4_2 = L3_2.landscapeLeft
  L4_2.rot = 90
  L4_2 = L3_2.landscapeRight
  L4_2.rot = -90
  L4_2 = setmetatable
  L5_2 = L3_2.portrait
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
  L4_2 = setmetatable
  L5_2 = L3_2.portraitUpsideDown
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
  L4_2 = setmetatable
  L5_2 = L3_2.landscapeLeft
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
  L4_2 = setmetatable
  L5_2 = L3_2.landscapeRight
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
  L4_2 = setmetatable
  L5_2 = L3_2.faceUp
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
  L4_2 = setmetatable
  L5_2 = L3_2.faceDown
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.portrait
  L5_2 = L3_2.landscapeLeft
  L4_2.left = L5_2
  L4_2 = L3_2.portrait
  L5_2 = L3_2.landscapeRight
  L4_2.right = L5_2
  L4_2 = L3_2.portrait
  L5_2 = L3_2.portraitUpsideDown
  L4_2.opposite = L5_2
  L4_2 = L3_2.portraitUpsideDown
  L5_2 = L3_2.landscapeRight
  L4_2.left = L5_2
  L4_2 = L3_2.portraitUpsideDown
  L5_2 = L3_2.landscapeLeft
  L4_2.right = L5_2
  L4_2 = L3_2.portraitUpsideDown
  L5_2 = L3_2.portrait
  L4_2.opposite = L5_2
  L4_2 = L3_2.landscapeLeft
  L5_2 = L3_2.portraitUpsideDown
  L4_2.left = L5_2
  L4_2 = L3_2.landscapeLeft
  L5_2 = L3_2.portrait
  L4_2.right = L5_2
  L4_2 = L3_2.landscapeLeft
  L5_2 = L3_2.landscapeRight
  L4_2.opposite = L5_2
  L4_2 = L3_2.landscapeRight
  L5_2 = L3_2.portrait
  L4_2.left = L5_2
  L4_2 = L3_2.landscapeRight
  L5_2 = L3_2.portraitUpsideDown
  L4_2.right = L5_2
  L4_2 = L3_2.landscapeRight
  L5_2 = L3_2.landscapeLeft
  L4_2.opposite = L5_2
  L4_2 = {}
  L5_2 = L3_2.portrait
  L5_2 = L5_2.o
  L6_2 = L3_2.portrait
  L4_2[L5_2] = L6_2
  L5_2 = L3_2.portraitUpsideDown
  L5_2 = L5_2.o
  L6_2 = L3_2.portraitUpsideDown
  L4_2[L5_2] = L6_2
  L5_2 = L3_2.landscapeLeft
  L5_2 = L5_2.o
  L6_2 = L3_2.landscapeLeft
  L4_2[L5_2] = L6_2
  L5_2 = L3_2.landscapeRight
  L5_2 = L5_2.o
  L6_2 = L3_2.landscapeRight
  L4_2[L5_2] = L6_2
  L5_2 = L3_2.faceUp
  L5_2 = L5_2.o
  L6_2 = L3_2.faceUp
  L4_2[L5_2] = L6_2
  L5_2 = L3_2.faceDown
  L5_2 = L5_2.o
  L6_2 = L3_2.faceDown
  L4_2[L5_2] = L6_2
  L5_2 = L3_2.portrait
  L3_2.current = L5_2
  L3_2.lastChangeTime = 0
  L3_2.detectChangeTime = 0
  L3_2.angleToGravity = 0
  L3_2.gravityInitialized = false
  L5_2 = {}
  L5_2.x = nil
  L5_2.y = nil
  L5_2.z = nil
  L3_2.gravityVect = L5_2
  L5_2 = setmetatable
  L6_2 = L3_2.gravityVect
  L7_2 = L1_1
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L3_2.tarzan = L5_2
  L5_2 = L3_2.tarzan
  L5_2.rotCount = 0
  L5_2 = L3_2.tarzan
  L5_2.lastRotTime = 0
  L5_2 = L3_2.tarzan
  L5_2.lastRotAngle = 0
  L5_2 = {}
  L3_2.kendama = L5_2
  L5_2 = L3_2.kendama
  L5_2.rotCount = 0
  L5_2 = L3_2.kendama
  L5_2.lastRotTime = 0
  L5_2 = L3_2.kendama
  L5_2.lastXAxis = 0
  L3_2.orientationLocked = false

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = table
    L2_3 = L2_3.insert
    L3_3 = A0_3.orientationChangedListener
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.orientationChangedListener
    L2_3 = #L2_3
    return L2_3
  end

  L3_2.addOrientationChangedListener = L5_2

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = table
    L2_3 = L2_3.remove
    L3_3 = A0_3.orientationChangedListener
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end

  L3_2.removeOrientationChangedListener = L5_2

  function L5_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L4_3 = pairs
    L5_3 = L4_2
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L9_3 = L8_1
      L10_3 = L8_3.x
      L10_3 = A1_3 - L10_3
      L9_3 = L9_3(L10_3)
      L10_3 = L8_1
      L11_3 = L8_3.y
      L11_3 = A2_3 - L11_3
      L10_3 = L10_3(L11_3)
      L11_3 = L8_1
      L12_3 = L8_3.z
      L12_3 = A3_3 - L12_3
      L11_3 = L11_3(L12_3)
      L12_3 = L32_1
      if L9_3 < L12_3 then
        L12_3 = L32_1
        if L10_3 < L12_3 then
          L12_3 = L33_1
          if L11_3 < L12_3 then
            return L8_3
          end
        end
      end
    end
    L4_3 = nil
    return L4_3
  end

  L3_2.calcOrientation = L5_2

  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3
    L3_3 = L7_1
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    A1_3 = L3_3
    L3_3 = L8_1
    L4_3 = 90 - A1_3
    L3_3 = L3_3(L4_3)
    L4_3 = L34_1
    if L3_3 < L4_3 then
      L3_3 = A0_3.current
      L3_3 = L3_3.left
      return L3_3
    else
      L3_3 = L8_1
      L4_3 = -90 - A1_3
      L3_3 = L3_3(L4_3)
      L4_3 = L34_1
      if L3_3 < L4_3 then
        L3_3 = A0_3.current
        L3_3 = L3_3.right
        return L3_3
      else
        L3_3 = L8_1
        L4_3 = 180 - A1_3
        L3_3 = L3_3(L4_3)
        L4_3 = L34_1
        if L3_3 < L4_3 then
          L3_3 = A0_3.current
          L3_3 = L3_3.opposite
          return L3_3
        else
          L3_3 = L8_1
          L4_3 = A2_3.z
          L3_3 = L3_3(L4_3)
          L4_3 = L31_1
          L3_3 = L3_3 - L4_3
          L4_3 = L31_1
          L4_3 = 1 - L4_3
          if L3_3 <= L4_3 then
            L3_3 = L8_1
            L4_3 = A2_3.x
            L3_3 = L3_3(L4_3)
            L4_3 = L32_1
            if L3_3 < L4_3 then
              L3_3 = L8_1
              L4_3 = A2_3.y
              L3_3 = L3_3(L4_3)
              L4_3 = L32_1
              if L3_3 < L4_3 then
                L3_3 = A2_3.z
                if 0 < L3_3 then
                  L3_3 = A0_3.faceDown
                  return L3_3
                else
                  L3_3 = A0_3.faceUp
                  return L3_3
                end
              end
            end
          end
        end
      end
    end
    L3_3 = nil
    return L3_3
  end

  L3_2.calcOrientation2 = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.current
    L2_3 = A0_3.portrait
    L1_3 = L1_3 == L2_3
    return L1_3
  end

  L3_2.isPortrait = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.current
    L2_3 = A0_3.portraitUpsideDown
    L1_3 = L1_3 == L2_3
    return L1_3
  end

  L3_2.isPortraitUpsideDown = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.current
    L2_3 = A0_3.landscapeLeft
    L1_3 = L1_3 == L2_3
    return L1_3
  end

  L3_2.isLandscapeLeft = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.current
    L2_3 = A0_3.landscapeRight
    L1_3 = L1_3 == L2_3
    return L1_3
  end

  L3_2.isLandscapeRight = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.current
    L2_3 = A0_3.portrait
    if L1_3 == L2_3 then
      L1_3 = A0_3.landscapeLeft
      return L1_3
    else
      L1_3 = A0_3.current
      L2_3 = A0_3.landscapeLeft
      if L1_3 == L2_3 then
        L1_3 = A0_3.portrait
        return L1_3
      else
        L1_3 = A0_3.current
        L2_3 = A0_3.portraitUpsideDown
        if L1_3 == L2_3 then
          L1_3 = A0_3.landscapeRight
          return L1_3
        else
          L1_3 = A0_3.portraitUpsideDown
          return L1_3
        end
      end
    end
  end

  L3_2.getMoveLeftDirection = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3
    L1_3 = A0_3.getMoveLeftDirection
    L1_3 = L1_3(L2_3)
    L2_3 = {}
    L3_3 = L1_3.x
    L3_3 = -L3_3
    L2_3.x = L3_3
    L3_3 = L1_3.y
    L3_3 = -L3_3
    L2_3.y = L3_3
    L3_3 = L1_3.z
    L3_3 = -L3_3
    L2_3.z = L3_3
    L3_3 = setmetatable
    L4_3 = L2_3
    L5_3 = L1_1
    L3_3(L4_3, L5_3)
    return L2_3
  end

  L3_2.getMoveRightDirection = L5_2

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A1_3.t
    if L2_3 == "face" then
      L2_3 = 0
      return L2_3
    end
    L2_3 = L7_1
    L3_3 = L3_1
    L4_3 = A1_3
    L5_3 = A0_3.current
    L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = L2_1
    L4_3 = A1_3
    L5_3 = A0_3.current
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L3_3.z
    if L4_3 ~= 0 then
      L4_3 = L3_3.z
      L2_3 = L2_3 * L4_3
    end
    return L2_3
  end

  L3_2.getOrientationDeltaAngle = L5_2

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = A1_3.t
    if L2_3 == "face" then
      return
    end
    L3_3 = A0_3
    L2_3 = A0_3.getOrientationDeltaAngle
    L4_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 ~= 0 then
      L3_3 = system
      L3_3 = L3_3.getTimer
      L3_3 = L3_3()
      A0_3.lastChangeTime = L3_3
      L3_3 = A0_3.animegg
      L4_3 = L3_3
      L3_3 = L3_3.rotate
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = A0_3.background
      L4_3 = L3_3
      L3_3 = L3_3.rotate
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = ipairs
      L4_3 = A0_3.orientationChangedListener
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L9_3 = L7_3
        L8_3 = L7_3.rotate
        L10_3 = L2_3
        L8_3(L9_3, L10_3)
      end
      A0_3.current = A1_3
    end
  end

  L3_2.rotateToOrientation = L5_2

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = A0_3.orientationLocked
    if L2_3 then
      return
    end
    L2_3 = {}
    L3_3 = A1_3.xInstant
    L2_3.x = L3_3
    L3_3 = A1_3.yInstant
    L2_3.y = L3_3
    L3_3 = A1_3.zInstant
    L2_3.z = L3_3
    L3_3 = L4_1
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = A0_3.gravityInitialized
    local __and_24 = false
    if L4_3 then
      L4_3 = L8_1
      L5_3 = 1 - L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = L17_1
      if L4_3 < L5_3 then
        __and_24 = true
        L4_3 = A0_3.gravityVect
        L5_3 = LOW_PASS_CUT_OFF_FREQ
        L6_3 = A1_3.xInstant
        L5_3 = L5_3 * L6_3
        L6_3 = LOW_PASS_CUT_OFF_FREQ
        L6_3 = 1 - L6_3
        L7_3 = A0_3.gravityVect
        L7_3 = L7_3.x
        L6_3 = L6_3 * L7_3
        L5_3 = L5_3 + L6_3
        L4_3.x = L5_3
        L4_3 = A0_3.gravityVect
        L5_3 = LOW_PASS_CUT_OFF_FREQ
        L6_3 = A1_3.yInstant
        L5_3 = L5_3 * L6_3
        L6_3 = LOW_PASS_CUT_OFF_FREQ
        L6_3 = 1 - L6_3
        L7_3 = A0_3.gravityVect
        L7_3 = L7_3.y
        L6_3 = L6_3 * L7_3
        L5_3 = L5_3 + L6_3
        L4_3.y = L5_3
        L4_3 = A0_3.gravityVect
        L5_3 = LOW_PASS_CUT_OFF_FREQ
        L6_3 = A1_3.zInstant
        L5_3 = L5_3 * L6_3
        L6_3 = LOW_PASS_CUT_OFF_FREQ
        L6_3 = 1 - L6_3
        L7_3 = A0_3.gravityVect
        L7_3 = L7_3.z
        L6_3 = L6_3 * L7_3
        L5_3 = L5_3 + L6_3
        L4_3.z = L5_3
      end
    end
    if not __and_24 then
      L4_3 = A0_3.gravityVect
      L5_3 = A1_3.xGravity
      L4_3.x = L5_3
      L4_3 = A0_3.gravityVect
      L5_3 = A1_3.yGravity
      L4_3.y = L5_3
      L4_3 = A0_3.gravityVect
      L5_3 = A1_3.zGravity
      L4_3.z = L5_3
    end
    L4_3 = {}
    L5_3 = A0_3.gravityVect
    L5_3 = L5_3.x
    L4_3.x = L5_3
    L5_3 = A0_3.gravityVect
    L5_3 = L5_3.y
    L4_3.y = L5_3
    L4_3.z = 0
    L5_3 = setmetatable
    L6_3 = L4_3
    L7_3 = L1_1
    L5_3(L6_3, L7_3)
    L5_3 = L5_1
    L6_3 = L4_3
    L5_3(L6_3)
    L5_3 = L8_1
    L6_3 = A0_3.gravityVect
    L6_3 = L6_3.z
    L5_3 = L5_3(L6_3)
    L6_3 = L31_1
    if L5_3 < L6_3 then
      L5_3 = L3_1
      L6_3 = L4_3
      L7_3 = A0_3.current
      L5_3 = L5_3(L6_3, L7_3)
      A0_3.angleToGravity = L5_3
      L5_3 = L2_1
      L6_3 = L4_3
      L7_3 = A0_3.current
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = L5_3.z
      if L6_3 < 0 then
        L6_3 = A0_3.angleToGravity
        L6_3 = -L6_3
        A0_3.angleToGravity = L6_3
      end
    else
      A0_3.angleToGravity = 0
    end
    L6_3 = A0_3
    L5_3 = A0_3.calcOrientation
    L7_3 = A1_3.xGravity
    L8_3 = A1_3.yGravity
    L9_3 = A1_3.zGravity
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
    L6_3 = system
    L6_3 = L6_3.getTimer
    L6_3 = L6_3()
    L7_3 = A0_3.lastChangeTime
    L7_3 = L6_3 - L7_3
    L8_3 = A0_3.animegg
    L8_3 = L8_3.isFallOnScreen
    if L8_3 then
      local __lbl_146 = false
      local __lbl_146_s1 = false
      if not __lbl_146 and (L5_3) then
        L8_3 = A0_3.faceUp
        if L5_3 ~= L8_3 then
          L8_3 = A0_3.current
          if L8_3 ~= L5_3 then
            L8_3 = A0_3.current
            L8_3 = L8_3.t
            if L8_3 ~= "landscape" then
              __lbl_146 = true
            end
            if not __lbl_146 then
              L8_3 = A0_3.faceDown
              if L5_3 == L8_3 then
                __lbl_146 = true
              end
            end
          end
        end
        if not __lbl_146 then
          if not __lbl_146 then
            L8_3 = L9_1
            if L7_3 < L8_3 then
              return
            end
            A0_3.detectChangeTime = L6_3
            L9_3 = A0_3
            L8_3 = A0_3.rotateToOrientation
            L10_3 = L5_3
            L8_3(L9_3, L10_3)
            L9_3 = A0_3
            L8_3 = A0_3.revertAnimeggFallOnScreen
            L8_3(L9_3)
          end
        end
      else
        __lbl_146_s1 = true
      end
      if __lbl_146 or __lbl_146_s1 then
        L9_3 = A0_3
        L8_3 = A0_3.moveAnimeggFallOnScreen
        L8_3(L9_3)
      end
    else
      L8_3 = A0_3.animegg
      L8_3 = L8_3.isHangFromScreen
      if L8_3 then
        local __and_25 = false
        if L5_3 then
          L8_3 = A0_3.faceUp
          if L5_3 ~= L8_3 then
            __and_25 = true
            L8_3 = L9_1
            if L7_3 < L8_3 then
              return
            end
            A0_3.detectChangeTime = L6_3
            L9_3 = A0_3
            L8_3 = A0_3.rotateToOrientation
            L10_3 = L5_3
            L8_3(L9_3, L10_3)
            L9_3 = A0_3
            L8_3 = A0_3.revertAnimeggHangFromScreen
            L8_3(L9_3)
          end
        end
        if not __and_25 then
          L9_3 = A0_3
          L8_3 = A0_3.moveAnimeggHangFromScreen
          L8_3(L9_3)
        end
      else
        local __and_26 = false
        if L5_3 then
          L8_3 = L5_3.t
          if L8_3 ~= "face" then
            __and_26 = true
            A0_3.detectChangeTime = L6_3
            L8_3 = A0_3.current
            if L5_3 ~= L8_3 then
              L8_3 = L9_1
              if L7_3 < L8_3 then
                return
              end
              L9_3 = A0_3
              L8_3 = A0_3.getOrientationDeltaAngle
              L10_3 = L5_3
              L8_3 = L8_3(L9_3, L10_3)
              L10_3 = A0_3
              L9_3 = A0_3.rotateToOrientation
              L11_3 = L5_3
              L9_3(L10_3, L11_3)
              L10_3 = A0_3
              L9_3 = A0_3.log
              L11_3 = "change orientation from "
              L12_3 = A0_3.current
              L12_3 = L12_3.o
              L13_3 = " to "
              L14_3 = L5_3.o
              L11_3 = L11_3 .. L12_3 .. L13_3 .. L14_3
              L9_3(L10_3, L11_3)
              L10_3 = A0_3
              L9_3 = A0_3.log
              L11_3 = "world rotation "
              L12_3 = tostring
              L13_3 = L8_3
              L12_3 = L12_3(L13_3)
              L13_3 = " degrees"
              L11_3 = L11_3 .. L12_3 .. L13_3
              L9_3(L10_3, L11_3)
              A0_3.current = L5_3
              A0_3.lastChangeTime = L6_3
              L9_3 = A0_3.tarzan
              L9_3.rotCount = 0
              L9_3 = A0_3.tarzan
              L9_3.lastRotTime = 0
              L9_3 = A0_3.tarzan
              L9_3.lastRotAngle = 0
              L9_3 = A0_3.kendama
              L9_3.rotCount = 0
              L9_3 = A0_3.kendama
              L9_3.lastRotTime = 0
              L9_3 = A0_3.kendama
              L9_3.lastXAxis = 0
              L9_3 = A0_3.animegg
              L9_3 = L9_3.isPlayReactionAnim
              if not L9_3 then
                L9_3 = L8_1
                L10_3 = L8_3
                L9_3 = L9_3(L10_3)
                if L9_3 == 180 then
                  L9_3 = A0_3.animegg
                  L10_3 = L9_3
                  L9_3 = L9_3.stopAndPlayFallDown
                  L9_3(L10_3)
                else
                  L9_3 = L8_1
                  L10_3 = L8_3
                  L9_3 = L9_3(L10_3)
                  if L9_3 == 90 then
                    L9_3 = A0_3.animegg
                    L10_3 = L9_3
                    L9_3 = L9_3.stopAndPlayTumble
                    L11_3 = L8_3 < 0
                    L9_3(L10_3, L11_3)
                  end
                end
              end
            end
          end
        end
        if not __and_26 then
          local __and_28 = false
          if L5_3 then
            L8_3 = A0_3.faceDown
            if L5_3 == L8_3 then
              __and_28 = true
              L8_3 = L9_1
              if L7_3 < L8_3 then
                return
              end
              L8_3 = A0_3.detectChangeTime
              L8_3 = L6_3 - L8_3
              L9_3 = L10_1
              if L8_3 < L9_3 then
                return
              end
              L9_3 = A0_3.animegg
              L9_3 = L9_3.isFallOnScreen
              local __and_27 = false
              if not L9_3 then
                L9_3 = A0_3.animegg
                L9_3 = L9_3.isPlayReactionAnim
                if not L9_3 then
                  __and_27 = true
                  L9_3 = A0_3.animegg
                  L9_3 = L9_3.isAboutToOffended
                  if not L9_3 then
                    L9_3 = A0_3.animegg
                    L9_3 = L9_3.isOffended
                    if not L9_3 then
                      A0_3.lastChangeTime = L6_3
                      L9_3 = A0_3.animegg
                      L10_3 = L9_3
                      L9_3 = L9_3.stopAndPlayFallOnScreen
                      L9_3(L10_3)
                      L9_3 = A0_3.background
                      L10_3 = L9_3
                      L9_3 = L9_3.stopAndPlaySky
                      L9_3(L10_3)
                      L9_3 = A0_3.animegg
                      L9_3.isFallOnScreen = true
                      L9_3 = A0_3.animegg
                      L9_3.isHangFromScreen = false
                    end
                  end
                end
              end
              if not __and_27 then
                L10_3 = A0_3
                L9_3 = A0_3.moveAnimeggFallOnScreen
                L9_3(L10_3)
              end
            end
          end
          if not __and_28 then
            local __and_30 = false
            if L5_3 then
              L8_3 = A0_3.faceUp
              if L5_3 == L8_3 then
                __and_30 = true
                L8_3 = A0_3.animegg
                L8_3 = L8_3.isPlayRactionAnim
                if not L8_3 then
                  L8_3 = A0_3.animegg
                  L8_3 = L8_3.isAboutToOffended
                  if not L8_3 then
                    L8_3 = A0_3.animegg
                    L8_3 = L8_3.isOffended
                    if not L8_3 then
                      L8_3 = L9_1
                      if L7_3 < L8_3 then
                        return
                      end
                      L8_3 = A0_3.detectChangeTime
                      L8_3 = L6_3 - L8_3
                      L9_3 = L11_1
                      if L8_3 < L9_3 then
                        return
                      end
                      L9_3 = A0_3.gravityVect
                      L9_3 = L9_3.z
                      L10_3 = L12_1
                      if L9_3 > L10_3 then
                        L9_3 = A0_3.gravityVect
                        L9_3 = L9_3.z
                        L10_3 = L13_1
                        if L9_3 < L10_3 then
                          L9_3 = A0_3.animegg
                          L9_3 = L9_3.isHangFromScreen
                          local __and_29 = false
                          if not L9_3 then
                            L9_3 = A0_3.animegg
                            L9_3 = L9_3.isPlayReactionAnim
                            if not L9_3 then
                              __and_29 = true
                              A0_3.lastChangeTime = L6_3
                              L9_3 = A0_3.animegg
                              L10_3 = L9_3
                              L9_3 = L9_3.stopAndPlayHangFromScreen
                              L9_3(L10_3)
                              L9_3 = A0_3.background
                              L10_3 = L9_3
                              L9_3 = L9_3.stopAndPlayGround
                              L9_3(L10_3)
                              L9_3 = A0_3.animegg
                              L9_3.isHangFromScreen = true
                              L9_3 = A0_3.animegg
                              L9_3.isFallOnScreen = false
                            end
                          end
                          if not __and_29 then
                            L10_3 = A0_3
                            L9_3 = A0_3.moveAnimeggHangFromScreen
                            L9_3(L10_3)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            if not __and_30 then
              L8_3 = L8_1
              L9_3 = A0_3.angleToGravity
              L8_3 = L8_3(L9_3)
              L9_3 = L18_1
              local __and_31 = false
              if L8_3 > L9_3 then
                L8_3 = L8_1
                L9_3 = A0_3.angleToGravity
                L8_3 = L8_3(L9_3)
                L9_3 = L19_1
                if L8_3 < L9_3 then
                  __and_31 = true
                  L8_3 = A0_3.gravityVect
                  L8_3 = L8_3.z
                  L9_3 = L23_1
                  if L8_3 > L9_3 then
                    L8_3 = A0_3.gravityVect
                    L8_3 = L8_3.z
                    L9_3 = L24_1
                    if L8_3 < L9_3 then
                      A0_3.detectChangeTime = L6_3
                      L8_3 = A0_3.animegg
                      L8_3 = L8_3.isPlayReactionAnim
                      local __lbl_395 = false
                      if not L8_3 then
                        L8_3 = A0_3.animegg
                        L8_3 = L8_3.isFallOnScreen
                        if not L8_3 then
                          L8_3 = A0_3.animegg
                          L8_3 = L8_3.isHangFromScreen
                          if not L8_3 then
                            __lbl_395 = true
                          end
                        end
                      end
                      if not __lbl_395 then
                        L8_3 = A0_3.tarzan
                        L8_3.lastRotTime = 0
                        L8_3 = A0_3.tarzan
                        L8_3.rotCount = 0
                        L8_3 = A0_3.tarzan
                        L8_3.lastRotAngle = 0
                        do return end
                      end
                      L8_3 = A0_3.tarzan
                      L8_3 = L8_3.lastRotTime
                      if L8_3 == 0 then
                        L8_3 = A0_3.tarzan
                        L8_3.lastRotTime = L6_3
                        L8_3 = A0_3.tarzan
                        L8_3.rotCount = 1
                        L8_3 = A0_3.tarzan
                        L9_3 = A0_3.angleToGravity
                        L8_3.lastRotAngle = L9_3
                      else
                        L8_3 = A0_3.tarzan
                        L8_3 = L8_3.lastRotTime
                        L8_3 = L6_3 - L8_3
                        L9_3 = L22_1
                        if L8_3 < L9_3 then
                          L9_3 = A0_3.angleToGravity
                          L10_3 = A0_3.tarzan
                          L10_3 = L10_3.lastRotAngle
                          L9_3 = L9_3 * L10_3
                          if L9_3 < 0 then
                            L9_3 = L21_1
                            if L8_3 > L9_3 then
                              L9_3 = A0_3.tarzan
                              L10_3 = A0_3.tarzan
                              L10_3 = L10_3.rotCount
                              L10_3 = L10_3 + 1
                              L9_3.rotCount = L10_3
                              L9_3 = A0_3.tarzan
                              L10_3 = A0_3.angleToGravity
                              L9_3.lastRotAngle = L10_3
                              L9_3 = A0_3.tarzan
                              L9_3.lastRotTime = L6_3
                              L9_3 = A0_3.tarzan
                              L9_3 = L9_3.rotCount
                              L10_3 = L20_1
                              if L9_3 >= L10_3 then
                                A0_3.lastChangeTime = L6_3
                                L9_3 = A0_3.animegg
                                L10_3 = L9_3
                                L9_3 = L9_3.stopAndPlayTarzan
                                L9_3(L10_3)
                              end
                            else
                              L9_3 = A0_3.tarzan
                              L9_3.lastRotTime = 0
                              L9_3 = A0_3.tarzan
                              L9_3.rotCount = 0
                              L9_3 = A0_3.tarzan
                              L9_3.lastRotAngle = 0
                            end
                          end
                        else
                          L9_3 = A0_3.tarzan
                          L9_3.lastRotTime = 0
                          L9_3 = A0_3.tarzan
                          L9_3.rotCount = 0
                          L9_3 = A0_3.tarzan
                          L9_3.lastRotAngle = 0
                        end
                      end
                    end
                  end
                end
              end
              if not __and_31 then
                L8_3 = A0_3.current
                L8_3 = L8_3.t
                local __and_32 = false
                if L8_3 == "landscape" then
                  L8_3 = L8_1
                  L9_3 = A1_3.xInstant
                  L8_3 = L8_3(L9_3)
                  L9_3 = L26_1
                  if L8_3 > L9_3 then
                    __and_32 = true
                    L8_3 = L8_1
                    L9_3 = A1_3.xInstant
                    L8_3 = L8_3(L9_3)
                    L9_3 = L27_1
                    if L8_3 < L9_3 then
                      L8_3 = L8_1
                      L9_3 = A1_3.yInstant
                      L8_3 = L8_3(L9_3)
                      L9_3 = L25_1
                      if L8_3 < L9_3 then
                        L8_3 = L8_1
                        L9_3 = A1_3.zInstant
                        L8_3 = L8_3(L9_3)
                        L9_3 = L28_1
                        if L8_3 > L9_3 then
                          A0_3.detectChangeTime = L6_3
                          L8_3 = A0_3.animegg
                          L8_3 = L8_3.isPlayReactionAnim
                          local __lbl_498 = false
                          if not L8_3 then
                            L8_3 = A0_3.animegg
                            L8_3 = L8_3.isFallOnScreen
                            if not L8_3 then
                              L8_3 = A0_3.animegg
                              L8_3 = L8_3.isHangFromScreen
                              if not L8_3 then
                                __lbl_498 = true
                              end
                            end
                          end
                          if not __lbl_498 then
                            do return end
                          end
                          L8_3 = A0_3.kendama
                          L8_3 = L8_3.rotCount
                          if L8_3 == 0 then
                            L8_3 = A0_3.animegg
                            L8_3.isPlayingKendama = false
                            L8_3 = A0_3.kendama
                            L8_3.lastRotTime = L6_3
                            L8_3 = A0_3.kendama
                            L8_3.rotCount = 1
                            L8_3 = A0_3.kendama
                            L9_3 = A1_3.xInstant
                            L8_3.lastXAxis = L9_3
                          else
                            L8_3 = A0_3.kendama
                            L8_3 = L8_3.lastRotTime
                            L8_3 = L6_3 - L8_3
                            L9_3 = L30_1
                            if L8_3 > L9_3 then
                              L8_3 = A0_3.kendama
                              L8_3.rotCount = 0
                              L8_3 = A0_3.animegg
                              L8_3.isPlayingKendama = false
                            else
                              L8_3 = A0_3.kendama
                              L8_3 = L8_3.rotCount
                              if 0 < L8_3 then
                                L8_3 = A0_3.kendama
                                L8_3 = L8_3.lastXAxis
                                L9_3 = A1_3.xInstant
                                L8_3 = L8_3 * L9_3
                                if L8_3 < 0 then
                                  L8_3 = A0_3.kendama
                                  L9_3 = A0_3.kendama
                                  L9_3 = L9_3.rotCount
                                  L9_3 = L9_3 + 1
                                  L8_3.rotCount = L9_3
                                  L8_3 = A0_3.kendama
                                  L9_3 = A1_3.xInstant
                                  L8_3.lastXAxis = L9_3
                                  L8_3 = A0_3.kendama
                                  L8_3.lastRotTime = L6_3
                                  L8_3 = A0_3.kendama
                                  L8_3 = L8_3.rotCount
                                  L9_3 = L29_1
                                  if L8_3 >= L9_3 then
                                    L8_3 = A0_3.animegg
                                    L8_3 = L8_3.isPlayingKendama
                                    if not L8_3 then
                                      A0_3.lastChangeTime = L6_3
                                      L8_3 = A0_3.kendama
                                      L8_3.rotCount = 0
                                      L8_3 = A0_3.animegg
                                      L9_3 = L8_3
                                      L8_3 = L8_3.stopAndPlayKendama
                                      L8_3(L9_3)
                                    else
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                if not __and_32 then
                  A0_3.detectChangeTime = L6_3
                end
              end
            end
          end
        end
      end
    end
  end

  L3_2.accelerometer = L5_2

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = {}
    L3_3 = A0_3.gravityVect
    L3_3 = L3_3.x
    L2_3.x = L3_3
    L3_3 = A0_3.gravityVect
    L3_3 = L3_3.y
    L2_3.y = L3_3
    L3_3 = A0_3.gravityVect
    L3_3 = L3_3.z
    L2_3.z = L3_3
    L3_3 = A0_3.current
    L3_3 = L3_3.t
    if L3_3 == "portrait" then
      L2_3.y = 0
    else
      L2_3.x = 0
    end
    L3_3 = L5_1
    L4_3 = L2_3
    L3_3(L4_3)
    L3_3 = L3_1
    L4_3 = A1_3
    L5_3 = L2_3
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L2_1
    L5_3 = A1_3
    L6_3 = L2_3
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = 0
    L6_3 = A0_3.current
    L6_3 = L6_3.t
    if L6_3 == "portrait" then
      L5_3 = L4_3.y
    else
      L5_3 = L4_3.x
    end
    L6_3 = A0_3.current
    L7_3 = A0_3.landscapeRight
    local __lbl_46 = false
    if L6_3 ~= L7_3 then
      L6_3 = A0_3.current
      L7_3 = A0_3.portraitUpsideDown
      if L6_3 ~= L7_3 then
        __lbl_46 = true
      end
    end
    if not __lbl_46 then
      L5_3 = -L5_3
    end
    L6_3 = A0_3.faceDown
    if A1_3 == L6_3 then
      L5_3 = -L5_3
    end
    L6_3 = L3_3
    L7_3 = L5_3
    return L6_3, L7_3
  end

  L3_2.getFaceUpDownHorizTiltAngle = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.animegg
    L1_3 = L1_3.isFallOnScreenMoving
    if L1_3 then
      return
    end
    L2_3 = A0_3
    L1_3 = A0_3.getFaceUpDownHorizTiltAngle
    L3_3 = A0_3.faceDown
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    L3_3 = L15_1
    if L1_3 > L3_3 then
      if L2_3 < 0 then
        L3_3 = A0_3.animegg
        L4_3 = L3_3
        L3_3 = L3_3.stopAndPlayFallOnScreenMoveRight
        L3_3(L4_3)
      else
        L3_3 = A0_3.animegg
        L4_3 = L3_3
        L3_3 = L3_3.stopAndPlayFallOnScreenMoveLeft
        L3_3(L4_3)
      end
    end
  end

  L3_2.moveAnimeggFallOnScreen = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L2_3 = A0_3
    L1_3 = A0_3.getFaceUpDownHorizTiltAngle
    L3_3 = A0_3.faceUp
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    L3_3 = L14_1
    if L1_3 > L3_3 then
      if L2_3 < 0 then
        L3_3 = A0_3.animegg
        L4_3 = L3_3
        L3_3 = L3_3.stopAndPlayHangFromScreenMoveRight
        L3_3(L4_3)
      else
        L3_3 = A0_3.animegg
        L4_3 = L3_3
        L3_3 = L3_3.stopAndPlayHangFromScreenMoveLeft
        L3_3(L4_3)
      end
    end
  end

  L3_2.moveAnimeggHangFromScreen = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3.log
    L3_3 = "revert fall on screen"
    L1_3(L2_3, L3_3)
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    A0_3.lastChangeTime = L1_3
    L1_3 = A0_3.animegg
    L2_3 = L1_3
    L1_3 = L1_3.stopAndPlayLeaveAfterFallOnScreen
    L1_3(L2_3)
    L1_3 = A0_3.background
    L2_3 = L1_3
    L1_3 = L1_3.stopAndPlayRevertSky
    L1_3(L2_3)
    L1_3 = A0_3.animegg
    L1_3.isFallOnScreen = false
  end

  L3_2.revertAnimeggFallOnScreen = L5_2

  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3.log
    L3_3 = "revert hang from screen"
    L1_3(L2_3, L3_3)
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    A0_3.lastChangeTime = L1_3
    L1_3 = A0_3.animegg
    L2_3 = L1_3
    L1_3 = L1_3.stopAndPlayLeaveAfterHangFromScreen
    L1_3(L2_3)
    L1_3 = A0_3.background
    L2_3 = L1_3
    L1_3 = L1_3.stopAndPlayRevertGround
    L1_3(L2_3)
    L1_3 = A0_3.animegg
    L1_3.isHangFromScreen = false
  end

  L3_2.revertAnimeggHangFromScreen = L5_2

  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = system
    L2_3 = L2_3.getTimer
    L2_3 = L2_3()
    L3_3 = L9_1
    L3_3 = 2 * L3_3
    L2_3 = L2_3 - L3_3
    A0_3.lastChangeTime = L2_3
    L2_3 = A0_3.gravityVect
    L3_3 = A1_3.x
    L2_3.x = L3_3
    L2_3 = A0_3.gravityVect
    L3_3 = A1_3.y
    L2_3.y = L3_3
    L2_3 = A0_3.gravityVect
    L3_3 = A1_3.z
    L2_3.z = L3_3
    L2_3 = {}
    L3_3 = A1_3.x
    L2_3.xGravity = L3_3
    L3_3 = A1_3.y
    L2_3.yGravity = L3_3
    L3_3 = A1_3.z
    L2_3.zGravity = L3_3
    L3_3 = A1_3.x
    L2_3.xInstant = L3_3
    L3_3 = A1_3.y
    L2_3.yInstant = L3_3
    L3_3 = A1_3.z
    L2_3.zInstant = L3_3
    L4_3 = A0_3
    L3_3 = A0_3.accelerometer
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
  end

  L3_2.simulate = L5_2

  function L5_2(A0_3)
    local L1_3
    A0_3.animegg = nil
    A0_3.background = nil
    A0_3.orientationChangedListener = nil
  end

  L3_2.destroy = L5_2

  function L5_2(A0_3, A1_3)
  end

  L3_2.log = L5_2
  return L3_2
end

newOrientationController = L35_1
