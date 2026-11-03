local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "vectmath"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.VectorMT
L2_1 = L0_1.vectAngle
L3_1 = L0_1.vectAngle2
L4_1 = L0_1.vectNorm
L5_1 = L0_1.vectLen
L6_1 = L0_1.vectCross
L7_1 = require
L8_1 = "debugging"
L7_1 = L7_1(L8_1)
L8_1 = math
L8_1 = L8_1.abs
L9_1 = math
L9_1 = L9_1.rad
L10_1 = math
L10_1 = L10_1.deg
L11_1 = math
L11_1 = L11_1.pi
L12_1 = 1000
TOUCH_MAX_INACTIVE_TIME_DELTA = L12_1
L12_1 = 175
HIGHLIGHT_TOUCH_FADE_OUT_TIME_DELTA = L12_1
L12_1 = 362
TOUCH_AREA_MAX_Y = L12_1
L12_1 = 300
FINGER_MAX_POINTS = L12_1
L12_1 = 1200
STROKE_MIN_TIME_DELTA = L12_1
L12_1 = 200
STROKE_MIN_DISTANCE = L12_1
L12_1 = 35
STROKE_ADD_BORDER = L12_1
L12_1 = 180
TAP_MAX_TIME_DELTA = L12_1
L12_1 = 20
TAP_MAX_DISTANCE = L12_1
L12_1 = 500
DOUBLE_TAP_MAX_TIME_DELTA = L12_1
L12_1 = 160
CIRCLE_MIN_DISTANCE = L12_1
L12_1 = 0.55
CIRCLE_RADIUS_TOLERANCE = L12_1
L12_1 = 40
CIRCLE_MIN_RADIUS = L12_1
L12_1 = L9_1
L13_1 = 330
L12_1 = L12_1(L13_1)
CIRCLE_MIN_ANGLE = L12_1
L12_1 = 1.2
PRESS_FLAT_START_RATIO = L12_1
L12_1 = 1.8
PRESS_FLAT_LOOP_RATIO = L12_1
L12_1 = 0.85
STRETCH_START_RATIO = L12_1
L12_1 = 0.42
STRETCH_LOOP_RATIO = L12_1
L12_1 = 1.5
MAKE_THIN_RATIO = L12_1
L12_1 = 0.66
MAKE_FAT_RATIO = L12_1
L12_1 = 5
MAKE_THIN_FAT_MIN_POINTS = L12_1
L12_1 = 20
MAKE_THIN_FAT_MAX_POINTS = L12_1
L12_1 = 0.35
MIN_RATIO_POINTS_ON_BELLY_FOR_STROKE = L12_1
L12_1 = -45
DRAG_FROM_HAIR_LEFT_OFFSET = L12_1
L12_1 = 0
DRAG_FROM_HAIR_TOP_OFFSET = L12_1
L12_1 = -90
DRAG_FROM_SHIRT_LEFT_OFFSET_LEFT_SHOULDER = L12_1
L12_1 = -20
DRAG_FROM_SHIRT_TOP_OFFSET_LEFT_SHOULDER = L12_1
L12_1 = 0
DRAG_FROM_SHIRT_LEFT_OFFSET_RIGHT_SHOULDER = L12_1
L12_1 = DRAG_FROM_SHIRT_TOP_OFFSET_LEFT_SHOULDER
DRAG_FROM_SHIRT_TOP_OFFSET_RIGHT_SHOULDER = L12_1
L12_1 = -48
DRAG_MAKE_FAT_LEFT_OFFSET = L12_1
L12_1 = -92
DRAG_MAKE_FAT_TOP_OFFSET = L12_1
L12_1 = 100
DRAG_MIN_DISTANCE = L12_1
L12_1 = 70
DRAG_DIR_ANGLE_MAX_DELTA = L12_1
L12_1 = 5
DRAG_DIR_MIN_POINTS = L12_1
L12_1 = FINGER_MAX_POINTS
DRAG_DIR_MAX_POINTS = L12_1
L12_1 = 30
DRAG_DIR_MIN_DISTANCE = L12_1
L12_1 = 5
DRAG_SPEED_MAX_POINTS = L12_1
L12_1 = 2000
DRAG_THROW_MIN_SPEED = L12_1
L12_1 = 90
DRAG_THROW_MIN_VECT_LEN = L12_1
L12_1 = 120
DRAG_THROW_MAX_VECT_LEN = L12_1
L12_1 = 120
RAIN_MIN_DISTANCE = L12_1
L12_1 = 30
RAIN_MAX_ANGLE = L12_1
L12_1 = 80
MOON_DANCE_MIN_DISTANCE = L12_1
L12_1 = MOON_DANCE_MIN_DISTANCE
FORCE_WALK_MIN_DISTANCE = L12_1
L12_1 = DRAG_DIR_ANGLE_MAX_DELTA
L12_1 = 90 - L12_1
FORCE_WALK_MAX_ANGLE_DELTA = L12_1
L12_1 = 80
KISS_MAX_DISTANCE = L12_1
L12_1 = 20
TOUCH_LEGS_ADD_BORDER = L12_1
L12_1 = 5
KICK_FOOT_ADD_BORDER = L12_1
L12_1 = 8
HANDSTAND_MIN_POINTS = L12_1
L12_1 = 0.4
HANDSTAND_RADIUS_TOLERANCE = L12_1
L12_1 = L9_1
L13_1 = 90
L12_1 = L12_1(L13_1)
HANDSTAND_MIN_ANGLE = L12_1
L12_1 = 150
QUICK_DANCE_MIN_TAP_TIME_DELTA = L12_1
L12_1 = 550
QUICK_DANCE_MAX_TAP_TIME_DELTA = L12_1
L12_1 = QUICK_DANCE_MAX_TAP_TIME_DELTA
L12_1 = L12_1 + 1
SLOW_DANCE_MIN_TAP_TIME_DELTA = L12_1
L12_1 = 1500
SLOW_DANCE_MAX_TAP_TIME_DELTA = L12_1
L12_1 = 400
DANCE_MAX_TAP_TIME_DELTA_DIFF = L12_1
L12_1 = 4
DANCE_START_TAP_COUNT = L12_1
L12_1 = 1000
LEAVE_FINGERPRINT_ON_BACKGROUND_MIN_TIME_DELTA = L12_1
L12_1 = 1700
LEAVE_FINGERPRINT_ON_ANIMEGG_MIN_TIME_DELTA = L12_1
L12_1 = 20
FINGERPRINT_MAX_DISTANCE = L12_1
L12_1 = 10
TAP_BG_LIGHT_BORDER = L12_1
L12_1 = 800
STOP_STROKE_BELLY_DELAY = L12_1
L12_1 = 1200
TRIGGER_FART_TIME_DELTA = L12_1
L12_1 = 20
TRIGGER_FART_MAX_DISTANCE = L12_1
L12_1 = 15
TRIGGER_FART_ADD_BORDER = L12_1
L12_1 = 100
L13_1 = 110
L14_1 = 120
L15_1 = 150
L16_1 = 200
L17_1 = 300
L18_1 = 305
L19_1 = 310
L20_1 = 315
L21_1 = 325
L22_1 = 335
L23_1 = 336
L24_1 = 400
L25_1 = 410
L26_1 = 500
L27_1 = 510
L28_1 = 515
L29_1 = 520
L30_1 = 530
L31_1 = 531
L32_1 = 600

function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L3_2.animegg = A0_2
  L3_2.background = A1_2
  L3_2.orientationController = A2_2
  L4_2 = {}
  L3_2.fingers = L4_2
  L4_2 = {}
  L3_2.fingerIds = L4_2
  L3_2.lastTapTime = 0
  L3_2.lastTouchEventTime = 0
  L4_2 = {}
  L3_2.dance = L4_2
  L4_2 = L3_2.dance
  L4_2.lastTapTime = 0
  L4_2 = L3_2.dance
  L4_2.lastTapTimeDelta = 0
  L4_2 = L3_2.dance
  L4_2.tapCount = 0
  L4_2 = L12_1
  L3_2.state = L4_2
  L3_2.isDisablePressFlatDetection = false
  L3_2.isDisableStretchDetection = false
  L3_2.isDisableHandstandDetection = false
  L3_2.isDisableMakeThinFatDetection = false
  L3_2.fingerHead = nil
  L3_2.fingerFeet = nil
  L3_2.gestureFingerCount = 0
  L4_2 = {}
  L3_2.drag = L4_2
  L4_2 = L3_2.drag
  L5_2 = {}
  L4_2.points = L5_2
  L4_2 = L3_2.drag
  L4_2.index = 1
  L4_2 = {}
  L3_2.fingerprintTimers = L4_2
  L3_2.stopStrokeBellyDelayTimer = nil
  L3_2.enabled = true
  L3_2.triggerFartTimer = nil
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = 0
    L2_3 = 0
    L3_3 = {}
    L3_3.x = 0
    L3_3.y = 0
    L3_3.z = 0
    L4_3 = setmetatable
    L5_3 = L3_3
    L6_3 = L1_1
    L4_3(L5_3, L6_3)
    L4_3 = A0_3.drag
    L4_3 = L4_3.points
    L4_3 = #L4_3
    L5_3 = DRAG_SPEED_MAX_POINTS
    if L4_3 < L5_3 then
      L4_3 = 0
      L5_3 = L3_3
      return L4_3, L5_3
    end
    L4_3 = A0_3.drag
    L4_3 = L4_3.index
    L5_3 = DRAG_SPEED_MAX_POINTS
    L5_3 = L4_3 % L5_3
    L5_3 = L5_3 + 1
    L6_3 = 1
    L7_3 = DRAG_SPEED_MAX_POINTS
    L7_3 = L7_3 - 1
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = A0_3.drag
      L10_3 = L10_3.points
      L10_3 = L10_3[L4_3]
      L11_3 = A0_3.drag
      L11_3 = L11_3.points
      L11_3 = L11_3[L5_3]
      L13_3 = A0_3
      L12_3 = A0_3.pointDistance
      L14_3 = L10_3
      L15_3 = L11_3
      L12_3 = L12_3(L13_3, L14_3, L15_3)
      L13_3 = L11_3.timestamp
      L14_3 = L10_3.timestamp
      L13_3 = L13_3 - L14_3
      L1_3 = L1_3 + L12_3
      L2_3 = L2_3 + L13_3
      L14_3 = L11_3.x
      L15_3 = L10_3.x
      L14_3 = L14_3 - L15_3
      L3_3.x = L14_3
      L14_3 = L11_3.y
      L15_3 = L10_3.y
      L14_3 = L14_3 - L15_3
      L3_3.y = L14_3
      L3_3.z = 0
      L4_3 = L5_3
      L14_3 = DRAG_SPEED_MAX_POINTS
      L14_3 = L4_3 % L14_3
      L5_3 = L14_3 + 1
    end
    L6_3 = L2_3 / 1000
    L6_3 = L1_3 / L6_3
    L7_3 = L5_1
    L8_3 = L3_3
    L7_3 = L7_3(L8_3)
    L8_3 = DRAG_THROW_MIN_VECT_LEN
    if L7_3 < L8_3 then
      L8_3 = L4_1
      L9_3 = L3_3
      L8_3(L9_3)
      L8_3 = L3_3.x
      L9_3 = DRAG_THROW_MIN_VECT_LEN
      L8_3 = L8_3 * L9_3
      L3_3.x = L8_3
      L8_3 = L3_3.y
      L9_3 = DRAG_THROW_MIN_VECT_LEN
      L8_3 = L8_3 * L9_3
      L3_3.y = L8_3
    else
      L8_3 = DRAG_THROW_MAX_VECT_LEN
      if L7_3 > L8_3 then
        L8_3 = L4_1
        L9_3 = L3_3
        L8_3(L9_3)
        L8_3 = L3_3.x
        L9_3 = DRAG_THROW_MAX_VECT_LEN
        L8_3 = L8_3 * L9_3
        L3_3.x = L8_3
        L8_3 = L3_3.y
        L9_3 = DRAG_THROW_MAX_VECT_LEN
        L8_3 = L8_3 * L9_3
        L3_3.y = L8_3
      end
    end
    L8_3 = L6_3
    L9_3 = L3_3
    return L8_3, L9_3
  end
  
  L3_2.calcDragSpeedAndVector = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = true
    L2_3 = A0_3.state
    L3_3 = L24_1
    if L2_3 == L3_3 then
      L3_3 = A0_3
      L2_3 = A0_3.calcDragSpeedAndVector
      L2_3, L3_3 = L2_3(L3_3)
      L4_3 = DRAG_THROW_MIN_SPEED
      if L2_3 > L4_3 then
        L4_3 = A0_3.animegg
        L5_3 = L4_3
        L4_3 = L4_3.stopAndPlayThrowDragFromHair
        L6_3 = L2_3
        L7_3 = L3_3
        L4_3(L5_3, L6_3, L7_3)
      else
        L4_3 = A0_3.animegg
        L5_3 = L4_3
        L4_3 = L4_3.stopAndPlayStopDragFromHair
        L4_3(L5_3)
      end
      L4_3 = L12_1
      A0_3.state = L4_3
    else
      L2_3 = A0_3.state
      L3_3 = L25_1
      if L2_3 == L3_3 then
        L3_3 = A0_3
        L2_3 = A0_3.calcDragSpeedAndVector
        L2_3, L3_3 = L2_3(L3_3)
        L4_3 = DRAG_THROW_MIN_SPEED
        if L2_3 > L4_3 then
          L4_3 = A0_3.animegg
          L5_3 = L4_3
          L4_3 = L4_3.stopAndPlayThrowDragFromShirt
          L6_3 = L2_3
          L7_3 = L3_3
          L4_3(L5_3, L6_3, L7_3)
        else
          L4_3 = A0_3.animegg
          L5_3 = L4_3
          L4_3 = L4_3.stopAndPlayStopDragFromShirt
          L4_3(L5_3)
        end
        L4_3 = L12_1
        A0_3.state = L4_3
      else
        L2_3 = A0_3.state
        L3_3 = L17_1
        if L2_3 == L3_3 then
          L2_3 = A0_3.animegg
          L3_3 = L2_3
          L2_3 = L2_3.stopAndPlayStartPressFlat
          L4_3 = true
          L2_3(L3_3, L4_3)
          L2_3 = L12_1
          A0_3.state = L2_3
        else
          L2_3 = A0_3.state
          L3_3 = L19_1
          if L2_3 == L3_3 then
            L2_3 = A0_3.animegg
            L3_3 = L2_3
            L2_3 = L2_3.stopAndPlayStartStretch
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = L12_1
            A0_3.state = L2_3
          else
            L2_3 = A0_3.state
            L3_3 = L16_1
            if L2_3 == L3_3 then
              function L2_3()
                local L0_4, L1_4
                
                L0_4 = A0_3
                L0_4.stopStrokeBellyDelayTimer = nil
                L0_4 = A0_3
                L0_4 = L0_4.animegg
                L1_4 = L0_4
                L0_4 = L0_4.stopAndPlayBreathing
                L0_4(L1_4)
                L0_4 = A0_3
                L1_4 = L12_1
                L0_4.state = L1_4
              end
              
              L3_3 = A0_3.stopStrokeBellyDelayTimer
              if not L3_3 then
                L3_3 = timer
                L3_3 = L3_3.performWithDelay
                L4_3 = STOP_STROKE_BELLY_DELAY
                L5_3 = L2_3
                L6_3 = 1
                L3_3 = L3_3(L4_3, L5_3, L6_3)
                A0_3.stopStrokeBellyDelayTimer = L3_3
              end
            else
              L2_3 = A0_3.state
              L3_3 = L20_1
              if L2_3 == L3_3 then
                L2_3 = A0_3.animegg
                L3_3 = L2_3
                L2_3 = L2_3.stopAndPlayStretchLoop
                L2_3(L3_3)
                L2_3 = L12_1
                A0_3.state = L2_3
              else
                L2_3 = A0_3.state
                L3_3 = L32_1
                if L2_3 == L3_3 then
                  L2_3 = A0_3.animegg
                  L3_3 = L2_3
                  L2_3 = L2_3.stopAndPlayFart
                  L2_3(L3_3)
                  L2_3 = L12_1
                  A0_3.state = L2_3
                else
                  L1_3 = false
                end
              end
            end
          end
        end
      end
    end
    L3_3 = A0_3
    L2_3 = A0_3.log
    L4_3 = string
    L4_3 = L4_3.format
    L5_3 = "resetAnims result=%s"
    L6_3 = tostring
    L7_3 = L1_3
    L6_3, L7_3 = L6_3(L7_3)
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3, L6_3, L7_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    return L1_3
  end
  
  L3_2.resetAnims = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = {}
    A0_3.fingers = L1_3
    L1_3 = {}
    A0_3.fingerIds = L1_3
    A0_3.gestureFingerCount = 0
    A0_3.isDisablePressFlatDetection = false
    A0_3.isDisableStretchDetection = false
    A0_3.isDisableHandstandDetection = false
    A0_3.isDisableMakeThinFatDetection = false
    L1_3 = A0_3.animegg
    L1_3.isDisableMakeFatRaising = false
    A0_3.fingerHead = nil
    A0_3.fingerFeet = nil
    L2_3 = A0_3
    L1_3 = A0_3.resetAnims
    L1_3(L2_3)
    L1_3 = L12_1
    A0_3.state = L1_3
    L1_3 = A0_3.fingerprintTimers
    L1_3 = #L1_3
    if 0 < L1_3 then
      L2_3 = A0_3
      L1_3 = A0_3.log
      L3_3 = "reset fingerprint timers"
      L1_3(L2_3, L3_3)
      L1_3 = 1
      L2_3 = A0_3.fingerprintTimers
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = table
        L5_3 = L5_3.remove
        L6_3 = A0_3.fingerprintTimers
        L5_3 = L5_3(L6_3)
        if L5_3 then
          L6_3 = timer
          L6_3 = L6_3.cancel
          L7_3 = L5_3
          L6_3(L7_3)
        end
      end
    end
    L1_3 = A0_3.triggerFartTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.triggerFartTimer
      L1_3(L2_3)
    end
    L2_3 = A0_3
    L1_3 = A0_3.log
    L3_3 = "reset"
    L1_3(L2_3, L3_3)
  end
  
  L3_2.reset = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A0_3
      L2_4 = L1_4
      L1_4 = L1_4.calcDistance
      L3_4 = A1_3
      L1_4 = L1_4(L2_4, L3_4)
      L2_4 = TRIGGER_FART_MAX_DISTANCE
      if L1_4 <= L2_4 then
        L2_4 = A0_3
        L2_4 = L2_4.animegg
        L3_4 = L2_4
        L2_4 = L2_4.isWalking
        L2_4 = L2_4(L3_4)
        if not L2_4 then
          L2_4 = A0_3
          L2_4 = L2_4.animegg
          L2_4 = L2_4.isPlayReactionAnim
          if not L2_4 then
            L2_4 = A0_3
            L2_4 = L2_4.animegg
            L2_4 = L2_4.isOffended
            if not L2_4 then
              L2_4 = A0_3
              L2_4.triggerFartTimer = nil
              L2_4 = A0_3
              L3_4 = L32_1
              L2_4.state = L3_4
              L2_4 = A0_3
              L2_4 = L2_4.animegg
              L3_4 = L2_4
              L2_4 = L2_4.stopAndPlayStartFart
              L2_4(L3_4)
            end
          end
        end
      end
    end
    
    L3_3 = timer
    L3_3 = L3_3.performWithDelay
    L4_3 = TRIGGER_FART_TIME_DELTA
    L5_3 = L2_3
    L6_3 = 1
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    A0_3.triggerFartTimer = L3_3
  end
  
  L3_2.createFartDetectionHandler = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A1_3.points
    L3_3 = L3_3[1]
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = A0_3
      L2_4 = L1_4
      L1_4 = L1_4.calcDistance
      L3_4 = A1_3
      L1_4 = L1_4(L2_4, L3_4)
      L2_4 = A1_3
      L2_4 = L2_4.phase
      if L2_4 ~= "ended" then
        L2_4 = FINGERPRINT_MAX_DISTANCE
        if L1_4 <= L2_4 then
          L2_4 = display
          L2_4 = L2_4.newImage
          L3_4 = UI_PIC_DIR
          L4_4 = "fingerprint.png"
          L3_4 = L3_4 .. L4_4
          L2_4 = L2_4(L3_4)
          L3_4 = L3_3
          L3_4 = L3_4.x
          L2_4.x = L3_4
          L3_4 = L3_3
          L3_4 = L3_4.y
          L2_4.y = L3_4
          L4_4 = L2_4
          L3_4 = L2_4.rotate
          L5_4 = math
          L5_4 = L5_4.random
          L6_4 = 0
          L7_4 = 360
          L5_4, L6_4, L7_4 = L5_4(L6_4, L7_4)
          L3_4(L4_4, L5_4, L6_4, L7_4)
          L3_4 = SCREEN_FINGERPRINT
          L4_4 = L3_4
          L3_4 = L3_4.insert
          L5_4 = L2_4
          L3_4(L4_4, L5_4)
          L3_4 = table
          L3_4 = L3_4.insert
          L4_4 = A0_3
          L4_4 = L4_4.animegg
          L4_4 = L4_4.fingerprintImages
          L5_4 = L2_4
          L3_4(L4_4, L5_4)
          L3_4 = A0_3
          L3_4 = L3_4.animegg
          L4_4 = L3_4
          L3_4 = L3_4.fingerprintAdded
          L3_4(L4_4)
        end
      end
    end
    
    L5_3 = L3_3.y
    L6_3 = WORLD_HEIGHT
    if L5_3 < L6_3 then
      L5_3 = A0_3.animegg
      L6_3 = L5_3
      L5_3 = L5_3.containsPoint
      L7_3 = L3_3.x
      L8_3 = L3_3.y
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      if not L5_3 then
        L5_3 = timer
        L5_3 = L5_3.performWithDelay
        L6_3 = LEAVE_FINGERPRINT_ON_BACKGROUND_MIN_TIME_DELTA
        L7_3 = L4_3
        L8_3 = 1
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        L2_3 = L5_3
      else
        L5_3 = timer
        L5_3 = L5_3.performWithDelay
        L6_3 = LEAVE_FINGERPRINT_ON_ANIMEGG_MIN_TIME_DELTA
        L7_3 = L4_3
        L8_3 = 1
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        L2_3 = L5_3
      end
      L5_3 = table
      L5_3 = L5_3.insert
      L6_3 = A0_3.fingerprintTimers
      L7_3 = L2_3
      L5_3(L6_3, L7_3)
    end
  end
  
  L3_2.createFingerprintHandler = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = A0_3.enabled
    if not L2_3 then
      return
    end
    L2_3 = A0_3.fingers
    L3_3 = A1_3.id
    L2_3 = L2_3[L3_3]
    if L2_3 then
      L3_3 = A1_3.phase
      if L3_3 ~= "ended" then
        L3_3 = A1_3.phase
        if L3_3 ~= "cancelled" then
          goto lbl_107
        end
      end
      L2_3.phase = "ended"
      L3_3 = system
      L3_3 = L3_3.getTimer
      L3_3 = L3_3()
      L2_3.update = L3_3
      L3_3 = table
      L3_3 = L3_3.insert
      L4_3 = L2_3.points
      L5_3 = {}
      L6_3 = A1_3.x
      L5_3.x = L6_3
      L6_3 = A1_3.y
      L5_3.y = L6_3
      L3_3(L4_3, L5_3)
      L3_3 = ipairs
      L4_3 = A0_3.fingerIds
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L8_3 = A1_3.id
        if L8_3 == L7_3 then
          L8_3 = table
          L8_3 = L8_3.remove
          L9_3 = A0_3.fingerIds
          L10_3 = L6_3
          L8_3(L9_3, L10_3)
          L8_3 = A0_3.fingers
          L9_3 = A1_3.id
          L8_3[L9_3] = nil
        end
      end
      L3_3 = A0_3.triggerFartTimer
      if L3_3 then
        L3_3 = timer
        L3_3 = L3_3.cancel
        L4_3 = A0_3.triggerFartTimer
        L3_3(L4_3)
      end
      L4_3 = A0_3
      L3_3 = A0_3.resetAnims
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L4_3 = A0_3
        L3_3 = A0_3.detectGestures
        L5_3 = L2_3
        L3_3(L4_3, L5_3)
      end
      L3_3 = A0_3.fingerIds
      L3_3 = #L3_3
      if L3_3 == 0 then
        L3_3 = A0_3.state
        L4_3 = L22_1
        if L3_3 == L4_3 then
          L3_3 = A0_3.animegg
          L3_3.isDisableMakeFatRaising = false
        else
          L3_3 = A0_3.state
          L4_3 = L23_1
          if L3_3 == L4_3 then
            L3_3 = L22_1
            A0_3.state = L3_3
            L3_3 = A0_3.animegg
            L3_3.isDisableMakeFatRaising = false
          else
            L3_3 = A0_3.state
            L4_3 = L13_1
            if L3_3 ~= L4_3 then
              L3_3 = L12_1
              A0_3.state = L3_3
            end
          end
        end
        A0_3.gestureFingerCount = 0
        A0_3.isDisablePressFlatDetection = false
        A0_3.isDisableStretchDetection = false
        A0_3.isDisableHandstandDetection = false
        A0_3.isDisableMakeThinFatDetection = false
        A0_3.fingerHead = nil
        A0_3.fingerFeet = nil
      else
        L3_3 = A0_3.animegg
        L3_3.isDisableMakeFatRaising = false
      end
      L4_3 = A0_3
      L3_3 = A0_3.log
      L5_3 = string
      L5_3 = L5_3.format
      L6_3 = "removed finger, count=%d, gestureFingerCount=%d"
      L7_3 = A0_3.fingerIds
      L7_3 = #L7_3
      L8_3 = A0_3.gestureFingerCount
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L5_3(L6_3, L7_3, L8_3)
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      goto lbl_308
      ::lbl_107::
      L3_3 = A1_3.phase
      if L3_3 == "moved" then
        L3_3 = A1_3.phase
        L2_3.phase = L3_3
        L3_3 = system
        L3_3 = L3_3.getTimer
        L3_3 = L3_3()
        L2_3.update = L3_3
        L3_3 = L2_3.points
        L4_3 = L2_3.points
        L4_3 = #L4_3
        L3_3 = L3_3[L4_3]
        L4_3 = display
        L4_3 = L4_3.newLine
        L5_3 = L3_3.x
        L6_3 = L3_3.y
        L7_3 = A1_3.x
        L8_3 = A1_3.y
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
        L5_3 = SCREEN_ANIMEGG
        L6_3 = L5_3
        L5_3 = L5_3.insert
        L7_3 = L4_3
        L5_3(L6_3, L7_3)
        L6_3 = L4_3
        L5_3 = L4_3.setColor
        L7_3 = 255
        L8_3 = 255
        L9_3 = 255
        L5_3(L6_3, L7_3, L8_3, L9_3)
        L4_3.width = 10
        L5_3 = transition
        L5_3 = L5_3.to
        L6_3 = L4_3
        L7_3 = {}
        L8_3 = HIGHLIGHT_TOUCH_FADE_OUT_TIME_DELTA
        L7_3.time = L8_3
        L7_3.alpha = 0
        L7_3.width = 0
        
        function L8_3()
          local L0_4, L1_4
          L0_4 = L4_3
          L1_4 = L0_4
          L0_4 = L0_4.removeSelf
          L0_4(L1_4)
        end
        
        L7_3.onComplete = L8_3
        L5_3(L6_3, L7_3)
        L5_3 = L2_3.points
        L5_3 = #L5_3
        L6_3 = FINGER_MAX_POINTS
        if L5_3 <= L6_3 then
          L5_3 = table
          L5_3 = L5_3.insert
          L6_3 = L2_3.points
          L7_3 = {}
          L8_3 = A1_3.x
          L7_3.x = L8_3
          L8_3 = A1_3.y
          L7_3.y = L8_3
          L5_3(L6_3, L7_3)
        else
          L5_3 = L2_3.points
          L6_3 = L2_3.points
          L6_3 = #L6_3
          L7_3 = {}
          L8_3 = A1_3.x
          L7_3.x = L8_3
          L8_3 = A1_3.y
          L7_3.y = L8_3
          L5_3[L6_3] = L7_3
        end
        L5_3 = A1_3.y
        L6_3 = TOUCH_AREA_MAX_Y
        if L5_3 < L6_3 then
          L6_3 = A0_3
          L5_3 = A0_3.detectGestures
          L5_3(L6_3)
        else
          L6_3 = A0_3
          L5_3 = A0_3.reset
          L5_3(L6_3)
        end
      else
        L4_3 = A0_3
        L3_3 = A0_3.log
        L5_3 = "ERROR illegal event, reset everything"
        L3_3(L4_3, L5_3)
        L3_3 = {}
        A0_3.fingers = L3_3
        L3_3 = {}
        A0_3.fingerIds = L3_3
        A0_3.gestureFingerCount = 0
        A0_3.isDisablePressFlatDetection = false
        A0_3.isDisableStretchDetection = false
        A0_3.isDisableHandstandDetection = false
        A0_3.isDisableMakeThinFatDetection = false
        A0_3.fingerHead = nil
        A0_3.fingerFeet = nil
        L4_3 = A0_3
        L3_3 = A0_3.reset
        L3_3(L4_3)
        L3_3 = L12_1
        A0_3.state = L3_3
      end
    else
      L3_3 = A1_3.phase
      if L3_3 == "began" then
        L3_3 = system
        L3_3 = L3_3.getTimer
        L3_3 = L3_3()
        L4_3 = A0_3.lastTouchEventTime
        L3_3 = L3_3 - L4_3
        L4_3 = TOUCH_MAX_INACTIVE_TIME_DELTA
        if L3_3 > L4_3 then
          L3_3 = A0_3.fingerIds
          L3_3 = #L3_3
          if 0 < L3_3 then
            L4_3 = A0_3
            L3_3 = A0_3.reset
            L3_3(L4_3)
          end
        end
        L3_3 = A0_3.fingers
        L4_3 = A1_3.id
        L5_3 = {}
        L6_3 = system
        L6_3 = L6_3.getTimer
        L6_3 = L6_3()
        L5_3.start = L6_3
        L6_3 = system
        L6_3 = L6_3.getTimer
        L6_3 = L6_3()
        L5_3.update = L6_3
        L6_3 = A1_3.phase
        L5_3.phase = L6_3
        L6_3 = {}
        L7_3 = {}
        L8_3 = A1_3.x
        L7_3.x = L8_3
        L8_3 = A1_3.y
        L7_3.y = L8_3
        L6_3[1] = L7_3
        L5_3.points = L6_3
        L3_3[L4_3] = L5_3
        L3_3 = table
        L3_3 = L3_3.insert
        L4_3 = A0_3.fingerIds
        L5_3 = A1_3.id
        L3_3(L4_3, L5_3)
        L3_3 = A0_3.fingerIds
        L3_3 = #L3_3
        A0_3.gestureFingerCount = L3_3
        L4_3 = A0_3
        L3_3 = A0_3.resetAnims
        L3_3(L4_3)
        L3_3 = A0_3.triggerFartTimer
        if L3_3 then
          L3_3 = timer
          L3_3 = L3_3.cancel
          L4_3 = A0_3.triggerFartTimer
          L3_3(L4_3)
        end
        L3_3 = A0_3.animegg
        L4_3 = L3_3
        L3_3 = L3_3.containsPointAt
        L5_3 = A1_3.x
        L6_3 = A1_3.y
        L7_3 = "layer_tshirt"
        L8_3 = TRIGGER_FART_ADD_BORDER
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        if L3_3 then
          L4_3 = A0_3
          L3_3 = A0_3.createFartDetectionHandler
          L5_3 = A0_3.fingers
          L6_3 = A1_3.id
          L5_3 = L5_3[L6_3]
          L3_3(L4_3, L5_3)
        else
          L4_3 = A0_3
          L3_3 = A0_3.createFingerprintHandler
          L5_3 = A0_3.fingers
          L6_3 = A1_3.id
          L5_3 = L5_3[L6_3]
          L3_3(L4_3, L5_3)
        end
        L4_3 = A0_3
        L3_3 = A0_3.log
        L5_3 = string
        L5_3 = L5_3.format
        L6_3 = "added new finger, count=%d, gestureFingerCount=%d, state=%d"
        L7_3 = A0_3.fingerIds
        L7_3 = #L7_3
        L8_3 = A0_3.gestureFingerCount
        L9_3 = A0_3.state
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      else
        L4_3 = A0_3
        L3_3 = A0_3.log
        L5_3 = "ERROR illegal event on non-existing finger, reset everything"
        L3_3(L4_3, L5_3)
        L3_3 = {}
        A0_3.fingers = L3_3
        L3_3 = {}
        A0_3.fingerIds = L3_3
        A0_3.gestureFingerCount = 0
        A0_3.isDisablePressFlatDetection = false
        A0_3.isDisableStretchDetection = false
        A0_3.isDisableHandstandDetection = false
        A0_3.isDisableMakeThinFatDetection = false
        A0_3.fingerHead = nil
        A0_3.fingerFeet = nil
        L4_3 = A0_3
        L3_3 = A0_3.reset
        L3_3(L4_3)
        L3_3 = L12_1
        A0_3.state = L3_3
      end
    end
    ::lbl_308::
    L3_3 = system
    L3_3 = L3_3.getTimer
    L3_3 = L3_3()
    A0_3.lastTouchEventTime = L3_3
    L3_3 = true
    return L3_3
  end
  
  L3_2.touch = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A0_3.state
    L3_3 = L32_1
    if L2_3 == L3_3 then
      return
    end
    L2_3 = A0_3.gestureFingerCount
    if L2_3 == 1 then
      if A1_3 then
        L2_3 = A0_3.fingerIds
        L2_3 = #L2_3
        if L2_3 == 0 then
          goto lbl_21
        end
      end
      if A1_3 == nil then
        L2_3 = A0_3.fingerIds
        L2_3 = #L2_3
        if L2_3 == 1 then
          ::lbl_21::
          if not A1_3 then
            L2_3 = A0_3.fingers
            L3_3 = A0_3.fingerIds
            L3_3 = L3_3[1]
            A1_3 = L2_3[L3_3]
          end
          L3_3 = A0_3
          L2_3 = A0_3.detectSingleTouchGesture
          L4_3 = A1_3
          L2_3(L3_3, L4_3)
          L2_3 = A0_3.state
          L3_3 = L14_1
          if L2_3 == L3_3 then
            L2_3 = A0_3.animegg
            L2_3 = L2_3.isEating
            if L2_3 then
              L2_3 = A1_3.points
              L3_3 = A1_3.points
              L3_3 = #L3_3
              L2_3 = L2_3[L3_3]
              L3_3 = A0_3.animegg
              L4_3 = L3_3
              L3_3 = L3_3.containsPoint
              L5_3 = L2_3.x
              L6_3 = L2_3.y
              L3_3 = L3_3(L4_3, L5_3, L6_3)
              if L3_3 then
                L3_3 = A0_3.animegg
                L4_3 = L3_3
                L3_3 = L3_3.stopAndPlayEatBurp
                L3_3(L4_3)
              end
              L3_3 = L12_1
              A0_3.state = L3_3
          end
          else
            L2_3 = A0_3.state
            L3_3 = L14_1
            if L2_3 == L3_3 then
              L2_3 = A0_3.animegg
              L2_3 = L2_3.isSleeping
              if L2_3 then
                L2_3 = A1_3.points
                L3_3 = A1_3.points
                L3_3 = #L3_3
                L2_3 = L2_3[L3_3]
                L3_3 = A0_3.animegg
                L4_3 = L3_3
                L3_3 = L3_3.containsPoint
                L5_3 = L2_3.x
                L6_3 = L2_3.y
                L3_3 = L3_3(L4_3, L5_3, L6_3)
                if L3_3 then
                  L3_3 = A0_3.animegg
                  L4_3 = L3_3
                  L3_3 = L3_3.stopAndPlaySleepNightSnore
                  L3_3(L4_3)
                end
                L3_3 = L12_1
                A0_3.state = L3_3
            end
            else
              L2_3 = A0_3.state
              L3_3 = L14_1
              if L2_3 == L3_3 then
                L2_3 = A0_3.animegg
                L2_3 = L2_3.isHangFromScreen
                if L2_3 then
                  L2_3 = A1_3.points
                  L3_3 = A1_3.points
                  L3_3 = #L3_3
                  L2_3 = L2_3[L3_3]
                  L3_3 = A0_3.animegg
                  L4_3 = L3_3
                  L3_3 = L3_3.containsPointAt
                  L5_3 = L2_3.x
                  L6_3 = L2_3.y
                  L7_3 = "layer_head"
                  L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                  if L3_3 then
                    L3_3 = A0_3.animegg
                    L4_3 = L3_3
                    L3_3 = L3_3.stopAndPlayTouchHangFromScreen
                    L3_3(L4_3)
                  end
                  L3_3 = L12_1
                  A0_3.state = L3_3
              end
              else
                L2_3 = A0_3.state
                L3_3 = L14_1
                if L2_3 == L3_3 then
                  L2_3 = A0_3.animegg
                  L2_3 = L2_3.isFallOnScreen
                  if not L2_3 then
                    L2_3 = A0_3.animegg
                    L2_3 = L2_3.isHangFromScreen
                    if not L2_3 then
                      L2_3 = A0_3.animegg
                      L2_3 = L2_3.isPlayReactionAnim
                      if not L2_3 then
                        L2_3 = A1_3.points
                        L3_3 = A1_3.points
                        L3_3 = #L3_3
                        L2_3 = L2_3[L3_3]
                        L3_3 = A0_3.animegg
                        L4_3 = L3_3
                        L3_3 = L3_3.containsPointAt
                        L5_3 = L2_3.x
                        L6_3 = L2_3.y
                        L7_3 = "layer_leg_l"
                        L8_3 = KICK_FOOT_ADD_BORDER
                        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                        if L3_3 then
                          L3_3 = A0_3.animegg
                          L4_3 = L3_3
                          L3_3 = L3_3.stopAndPlayKickFoot
                          L5_3 = true
                          L3_3(L4_3, L5_3)
                        else
                          L3_3 = A0_3.animegg
                          L4_3 = L3_3
                          L3_3 = L3_3.containsPointAt
                          L5_3 = L2_3.x
                          L6_3 = L2_3.y
                          L7_3 = "layer_leg_r"
                          L8_3 = KICK_FOOT_ADD_BORDER
                          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                          if L3_3 then
                            L3_3 = A0_3.animegg
                            L4_3 = L3_3
                            L3_3 = L3_3.stopAndPlayKickFoot
                            L5_3 = false
                            L3_3(L4_3, L5_3)
                          else
                            L3_3 = A0_3.animegg
                            L4_3 = L3_3
                            L3_3 = L3_3.containsPointAt
                            L5_3 = L2_3.x
                            L6_3 = L2_3.y
                            L7_3 = "layer_tshirt"
                            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                            if L3_3 then
                              L3_3 = A0_3.animegg
                              L4_3 = L3_3
                              L3_3 = L3_3.stopAndPlayPunchStomach
                              L3_3(L4_3)
                            else
                              L3_3 = A0_3.animegg
                              L4_3 = L3_3
                              L3_3 = L3_3.containsPointAt
                              L5_3 = L2_3.x
                              L6_3 = L2_3.y
                              L7_3 = "layer_head"
                              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                              if L3_3 then
                                L3_3 = A0_3.animegg
                                L4_3 = L3_3
                                L3_3 = L3_3.stopAndPlayPunchFace
                                L3_3(L4_3)
                              else
                                L3_3 = A0_3.background
                                L4_3 = L3_3
                                L3_3 = L3_3.hasSpecialLayerAt
                                L5_3 = L2_3.x
                                L6_3 = L2_3.y
                                L3_3 = L3_3(L4_3, L5_3, L6_3)
                                if L3_3 then
                                  L3_3 = A0_3.background
                                  L4_3 = L3_3
                                  L3_3 = L3_3.playSpecialLayerAt
                                  L5_3 = L2_3.x
                                  L6_3 = L2_3.y
                                  L3_3(L4_3, L5_3, L6_3)
                                else
                                  L3_3 = A0_3.background
                                  L4_3 = L3_3
                                  L3_3 = L3_3.containsPointAt
                                  L5_3 = L2_3.x
                                  L6_3 = L2_3.y
                                  L7_3 = "layer_light"
                                  L8_3 = TAP_BG_LIGHT_BORDER
                                  L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                                  if L3_3 then
                                    L3_3 = A0_3.animegg
                                    L4_3 = L3_3
                                    L3_3 = L3_3.stopAndPlayTurnOffLight
                                    L3_3(L4_3)
                                  end
                                end
                              end
                            end
                          end
                        end
                        L3_3 = L12_1
                        A0_3.state = L3_3
                    end
                  end
                end
                else
                  L2_3 = A0_3.state
                  L3_3 = L14_1
                  if L2_3 == L3_3 then
                    L2_3 = A0_3.animegg
                    L2_3 = L2_3.isFallOnScreen
                    if not L2_3 then
                      L2_3 = A0_3.animegg
                      L2_3 = L2_3.isHangFromScreen
                      if not L2_3 then
                        L2_3 = A0_3.animegg
                        L2_3 = L2_3.turnOffLightDarkBg
                        if not L2_3 then
                          L2_3 = A1_3.points
                          L3_3 = A1_3.points
                          L3_3 = #L3_3
                          L2_3 = L2_3[L3_3]
                          L3_3 = A0_3.background
                          L4_3 = L3_3
                          L3_3 = L3_3.hasSpecialLayerAt
                          L5_3 = L2_3.x
                          L6_3 = L2_3.y
                          L3_3 = L3_3(L4_3, L5_3, L6_3)
                          if L3_3 then
                            L3_3 = A0_3.background
                            L4_3 = L3_3
                            L3_3 = L3_3.playSpecialLayerAt
                            L5_3 = L2_3.x
                            L6_3 = L2_3.y
                            L3_3(L4_3, L5_3, L6_3)
                          end
                          L3_3 = L12_1
                          A0_3.state = L3_3
                      end
                    end
                  end
                  else
                    L2_3 = A0_3.state
                    L3_3 = L13_1
                    if L2_3 == L3_3 then
                      L2_3 = A1_3.points
                      L3_3 = A1_3.points
                      L3_3 = #L3_3
                      L2_3 = L2_3[L3_3]
                      L3_3 = A0_3.animegg
                      L4_3 = L3_3
                      L3_3 = L3_3.containsPoint
                      L5_3 = L2_3.x
                      L6_3 = L2_3.y
                      L3_3 = L3_3(L4_3, L5_3, L6_3)
                      if L3_3 then
                        L3_3 = A0_3.animegg
                        L4_3 = L3_3
                        L3_3 = L3_3.isInLoopState
                        L3_3 = L3_3(L4_3)
                        if L3_3 then
                          L3_3 = A0_3.animegg
                          L4_3 = L3_3
                          L3_3 = L3_3.recoverFromLoopState
                          L3_3(L4_3)
                          L3_3 = L12_1
                          A0_3.state = L3_3
                        end
                      else
                        L3_3 = A0_3.background
                        L4_3 = L3_3
                        L3_3 = L3_3.containsPointAt
                        L5_3 = L2_3.x
                        L6_3 = L2_3.y
                        L7_3 = "layer_light"
                        L8_3 = TAP_BG_LIGHT_BORDER
                        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                        if L3_3 then
                        else
                          L3_3 = A0_3.background
                          L4_3 = L3_3
                          L3_3 = L3_3.hasSpecialLayerAt
                          L5_3 = L2_3.x
                          L6_3 = L2_3.y
                          L3_3 = L3_3(L4_3, L5_3, L6_3)
                          if L3_3 then
                          else
                            L3_3 = A0_3.animegg
                            L3_3 = L3_3.isPlayReactionAnim
                            if not L3_3 then
                              L3_3 = A0_3.animegg
                              L3_3 = L3_3.isOffended
                              if not L3_3 then
                                L4_3 = A0_3
                                L3_3 = A0_3.detectDanceTapping
                                L3_3(L4_3)
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
      end
    end
    else
      L3_3 = A0_3
      L2_3 = A0_3.detectMultiTouchGesture
      L4_3 = A1_3
      L2_3(L3_3, L4_3)
      L2_3 = A0_3.state
      L3_3 = L26_1
      if L2_3 == L3_3 then
        L2_3 = A0_3.animegg
        L3_3 = L2_3
        L2_3 = L2_3.stopAndPlayRain
        L2_3(L3_3)
        L2_3 = L12_1
        A0_3.state = L2_3
      else
        L2_3 = A0_3.state
        L3_3 = L29_1
        if L2_3 == L3_3 then
          L2_3 = A0_3.animegg
          L3_3 = L2_3
          L2_3 = L2_3.stopAndPlayKiss
          L2_3(L3_3)
          L2_3 = L12_1
          A0_3.state = L2_3
        end
      end
    end
  end
  
  L3_2.detectGestures = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3
    L4_3 = 0
    L5_3 = 0
    L6_3 = A0_3.orientationController
    L7_3 = L6_3
    L6_3 = L6_3.isPortrait
    L6_3 = L6_3(L7_3)
    if L6_3 then
      L6_3 = A1_3.x
      L4_3 = L6_3 + A2_3
      L6_3 = A1_3.y
      L5_3 = L6_3 + A3_3
    else
      L6_3 = A0_3.orientationController
      L7_3 = L6_3
      L6_3 = L6_3.isPortraitUpsideDown
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L6_3 = A1_3.x
        L4_3 = L6_3 - A2_3
        L6_3 = A1_3.y
        L5_3 = L6_3 - A3_3
      else
        L6_3 = A0_3.orientationController
        L7_3 = L6_3
        L6_3 = L6_3.isLandscapeLeft
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = A1_3.x
          L4_3 = L6_3 - A3_3
          L6_3 = A1_3.y
          L5_3 = L6_3 + A2_3
        else
          L6_3 = A0_3.orientationController
          L7_3 = L6_3
          L6_3 = L6_3.isLandscapeRight
          L6_3 = L6_3(L7_3)
          if L6_3 then
            L6_3 = A1_3.x
            L4_3 = L6_3 + A3_3
            L6_3 = A1_3.y
            L5_3 = L6_3 - A2_3
          end
        end
      end
    end
    L6_3 = L4_3
    L7_3 = L5_3
    return L6_3, L7_3
  end
  
  L3_2.calcHoldingPos = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L2_3 = system
    L2_3 = L2_3.getTimer
    L2_3 = L2_3()
    L3_3 = A1_3.points
    L3_3 = L3_3[1]
    L4_3 = A1_3.points
    L5_3 = A1_3.points
    L5_3 = #L5_3
    L4_3 = L4_3[L5_3]
    L5_3 = A1_3.start
    L5_3 = L2_3 - L5_3
    L7_3 = A0_3
    L6_3 = A0_3.calcDistance
    L8_3 = A1_3
    L6_3 = L6_3(L7_3, L8_3)
    L7_3 = A0_3.animegg
    L8_3 = L7_3
    L7_3 = L7_3.containsPointAt
    L9_3 = L3_3.x
    L10_3 = L3_3.y
    L11_3 = "layer_head"
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
    L8_3 = false
    if not L7_3 then
      L9_3 = A0_3.animegg
      L10_3 = L9_3
      L9_3 = L9_3.containsPointAt
      L11_3 = L3_3.x
      L12_3 = L3_3.y
      L13_3 = "layer_tshirt"
      L14_3 = STROKE_ADD_BORDER
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
      L8_3 = L9_3
    end
    L9_3 = A1_3.phase
    if L9_3 == "ended" then
      L9_3 = TAP_MAX_TIME_DELTA
      if L5_3 <= L9_3 then
        L9_3 = TAP_MAX_DISTANCE
        if L6_3 <= L9_3 then
          L10_3 = A0_3
          L9_3 = A0_3.log
          L11_3 = "tap detected"
          L9_3(L10_3, L11_3)
          L9_3 = A0_3.state
          L10_3 = L13_1
          if L9_3 == L10_3 then
            L9_3 = A0_3.lastTapTime
            L9_3 = L2_3 - L9_3
            L10_3 = DOUBLE_TAP_MAX_TIME_DELTA
            if L9_3 <= L10_3 then
              L9_3 = L14_1
              A0_3.state = L9_3
          end
          else
            L9_3 = L13_1
            A0_3.state = L9_3
          end
          A0_3.lastTapTime = L2_3
      end
    end
    else
      L9_3 = A0_3.state
      L10_3 = L16_1
      if L9_3 == L10_3 then
      else
        L9_3 = A0_3.state
        L10_3 = L24_1
        if L9_3 == L10_3 then
          L10_3 = A0_3
          L9_3 = A0_3.calcHoldingPos
          L11_3 = L4_3
          L12_3 = DRAG_FROM_HAIR_LEFT_OFFSET
          L13_3 = DRAG_FROM_HAIR_TOP_OFFSET
          L9_3, L10_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
          L11_3 = A0_3.animegg
          L12_3 = L11_3
          L11_3 = L11_3.moveTo
          L13_3 = L9_3
          L14_3 = L10_3
          L11_3(L12_3, L13_3, L14_3)
          L11_3 = A0_3.drag
          L11_3 = L11_3.points
          L12_3 = A0_3.drag
          L12_3 = L12_3.index
          L13_3 = {}
          L13_3.x = L9_3
          L13_3.y = L10_3
          L13_3.timestamp = L2_3
          L11_3[L12_3] = L13_3
          L11_3 = A0_3.drag
          L11_3 = L11_3.index
          L12_3 = DRAG_SPEED_MAX_POINTS
          if L11_3 == L12_3 then
            L11_3 = A0_3.drag
            L11_3.index = 1
          else
            L11_3 = A0_3.drag
            L12_3 = A0_3.drag
            L12_3 = L12_3.index
            L12_3 = L12_3 + 1
            L11_3.index = L12_3
          end
        else
          L9_3 = A0_3.state
          L10_3 = L25_1
          if L9_3 == L10_3 then
            L9_3 = 0
            L10_3 = 0
            L11_3 = A0_3.animegg
            L11_3 = L11_3.currentTimeline
            L11_3 = L11_3.group
            L11_3 = L11_3.xScale
            if L11_3 < 0 then
              L12_3 = A0_3
              L11_3 = A0_3.calcHoldingPos
              L13_3 = L4_3
              L14_3 = DRAG_FROM_SHIRT_LEFT_OFFSET_RIGHT_SHOULDER
              L15_3 = DRAG_FROM_SHIRT_TOP_OFFSET_RIGHT_SHOULDER
              L11_3, L12_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
              L10_3 = L12_3
              L9_3 = L11_3
            else
              L12_3 = A0_3
              L11_3 = A0_3.calcHoldingPos
              L13_3 = L4_3
              L14_3 = DRAG_FROM_SHIRT_LEFT_OFFSET_LEFT_SHOULDER
              L15_3 = DRAG_FROM_SHIRT_TOP_OFFSET_LEFT_SHOULDER
              L11_3, L12_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
              L10_3 = L12_3
              L9_3 = L11_3
            end
            L11_3 = A0_3.animegg
            L12_3 = L11_3
            L11_3 = L11_3.moveTo
            L13_3 = L9_3
            L14_3 = L10_3
            L11_3(L12_3, L13_3, L14_3)
            L11_3 = A0_3.drag
            L11_3 = L11_3.points
            L12_3 = A0_3.drag
            L12_3 = L12_3.index
            L13_3 = {}
            L13_3.x = L9_3
            L13_3.y = L10_3
            L13_3.timestamp = L2_3
            L11_3[L12_3] = L13_3
            L11_3 = A0_3.drag
            L11_3 = L11_3.index
            L12_3 = DRAG_SPEED_MAX_POINTS
            if L11_3 == L12_3 then
              L11_3 = A0_3.drag
              L11_3.index = 1
            else
              L11_3 = A0_3.drag
              L12_3 = A0_3.drag
              L12_3 = L12_3.index
              L12_3 = L12_3 + 1
              L11_3.index = L12_3
            end
          else
            L9_3 = A0_3.state
            L10_3 = L23_1
            if L9_3 == L10_3 then
              L10_3 = A0_3
              L9_3 = A0_3.calcHoldingPos
              L11_3 = L4_3
              L12_3 = DRAG_MAKE_FAT_LEFT_OFFSET
              L13_3 = DRAG_MAKE_FAT_TOP_OFFSET
              L9_3, L10_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
              L11_3 = WORLD_HEIGHT
              if L10_3 < L11_3 then
                L11_3 = A0_3.animegg
                L11_3.isDisableMakeFatRaising = true
                L11_3 = A0_3.animegg
                L12_3 = L11_3
                L11_3 = L11_3.moveTo
                L13_3 = L9_3
                L14_3 = L10_3
                L11_3(L12_3, L13_3, L14_3)
              else
                L11_3 = L22_1
                A0_3.state = L11_3
                L11_3 = A0_3.animegg
                L11_3.isDisableMakeFatRaising = false
                L12_3 = A0_3
                L11_3 = A0_3.reset
                L11_3(L12_3)
              end
            else
              L9_3 = A0_3.state
              L10_3 = L22_1
              if L9_3 ~= L10_3 then
                L9_3 = A0_3.state
                L10_3 = L23_1
                if L9_3 == L10_3 then
                  goto lbl_211
                end
                L9_3 = A0_3.animegg
                L9_3 = L9_3.isMakeFat
                if not L9_3 then
                  goto lbl_211
                end
              end
              L9_3 = A1_3.phase
              if L9_3 == "moved" then
                L9_3 = A0_3.animegg
                L10_3 = L9_3
                L9_3 = L9_3.containsPoint
                L11_3 = L3_3.x
                L12_3 = L3_3.y
                L9_3 = L9_3(L10_3, L11_3, L12_3)
                if L9_3 then
                  L9_3 = A0_3.animegg
                  L9_3.isDisableMakeFatRaising = true
                  L9_3 = L23_1
                  A0_3.state = L9_3
              end
              else
                ::lbl_211::
                L9_3 = A0_3.animegg
                L9_3 = L9_3.isPlayReactionAnim
                if not L9_3 then
                  L9_3 = A0_3.animegg
                  L9_3 = L9_3.isFallOnScreen
                  if not L9_3 then
                    L9_3 = A0_3.animegg
                    L9_3 = L9_3.isHangFromScreen
                    if not L9_3 then
                      goto lbl_226
                    end
                  end
                end
                L9_3 = L12_1
                A0_3.state = L9_3
                goto lbl_499
                ::lbl_226::
                L9_3 = A0_3.state
                L10_3 = L12_1
                if L9_3 ~= L10_3 then
                  L9_3 = A0_3.state
                  L10_3 = L13_1
                end
                if L9_3 == L10_3 and L8_3 then
                  L9_3 = A1_3.phase
                  if L9_3 == "moved" then
                    L9_3 = DRAG_MIN_DISTANCE
                    if L6_3 > L9_3 then
                      L9_3 = A0_3.animegg
                      L9_3 = L9_3.isOffended
                      if not L9_3 then
                        L9_3 = A0_3.animegg
                        L9_3 = L9_3.isPlayReactionAnim
                        if not L9_3 then
                          L10_3 = A0_3
                          L9_3 = A0_3.checkAngleToOrientation
                          L11_3 = A1_3
                          L12_3 = 180
                          L13_3 = DRAG_DIR_ANGLE_MAX_DELTA
                          L14_3 = DRAG_DIR_MIN_POINTS
                          L15_3 = DRAG_DIR_MAX_POINTS
                          L16_3 = DRAG_DIR_MIN_DISTANCE
                          L17_3 = nil
                          L18_3 = "drag shirt"
                          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                          if L9_3 then
                            L10_3 = A0_3
                            L9_3 = A0_3.log
                            L11_3 = "start drag from shirt"
                            L9_3(L10_3, L11_3)
                            L9_3 = {}
                            L10_3 = L4_3.x
                            L11_3 = L3_3.x
                            L10_3 = L10_3 - L11_3
                            L9_3.x = L10_3
                            L10_3 = L4_3.y
                            L11_3 = L3_3.y
                            L10_3 = L10_3 - L11_3
                            L9_3.y = L10_3
                            L9_3.z = 0
                            L10_3 = setmetatable
                            L11_3 = L9_3
                            L12_3 = L1_1
                            L10_3(L11_3, L12_3)
                            L10_3 = L4_1
                            L11_3 = L9_3
                            L10_3(L11_3)
                            L10_3 = L6_1
                            L11_3 = A0_3.orientationController
                            L11_3 = L11_3.current
                            L12_3 = L9_3
                            L10_3 = L10_3(L11_3, L12_3)
                            L11_3 = A0_3.orientationController
                            L11_3 = L11_3.current
                            L11_3 = L11_3.t
                            if L11_3 == "landscape" then
                              L11_3 = L10_3.z
                              L11_3 = -L11_3
                              L10_3.z = L11_3
                            end
                            L11_3 = A0_3.drag
                            L12_3 = {}
                            L11_3.points = L12_3
                            L11_3 = A0_3.drag
                            L11_3.index = 1
                            L11_3 = A0_3.animegg
                            L12_3 = L11_3
                            L11_3 = L11_3.stopAndPlayStartDragFromShirt
                            L13_3 = L10_3.z
                            L13_3 = 0 < L13_3
                            L11_3(L12_3, L13_3)
                            L11_3 = L25_1
                            A0_3.state = L11_3
                            L11_3 = L10_3.z
                            if 0 < L11_3 then
                              L12_3 = A0_3
                              L11_3 = A0_3.calcHoldingPos
                              L13_3 = L4_3
                              L14_3 = DRAG_FROM_SHIRT_LEFT_OFFSET_RIGHT_SHOULDER
                              L15_3 = DRAG_FROM_SHIRT_TOP_OFFSET_RIGHT_SHOULDER
                              L11_3, L12_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
                              L13_3 = A0_3.animegg
                              L14_3 = L13_3
                              L13_3 = L13_3.moveTo
                              L15_3 = L11_3
                              L16_3 = L12_3
                              L13_3(L14_3, L15_3, L16_3)
                            else
                              L12_3 = A0_3
                              L11_3 = A0_3.calcHoldingPos
                              L13_3 = L4_3
                              L14_3 = DRAG_FROM_SHIRT_LEFT_OFFSET_LEFT_SHOULDER
                              L15_3 = DRAG_FROM_SHIRT_TOP_OFFSET_LEFT_SHOULDER
                              L11_3, L12_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
                              L13_3 = A0_3.animegg
                              L14_3 = L13_3
                              L13_3 = L13_3.moveTo
                              L15_3 = L11_3
                              L16_3 = L12_3
                              L13_3(L14_3, L15_3, L16_3)
                            end
                          end
                        end
                      end
                    end
                  end
                end
                L9_3 = A0_3.state
                L10_3 = L12_1
                if L9_3 ~= L10_3 then
                  L9_3 = A0_3.state
                  L10_3 = L13_1
                end
                if L9_3 == L10_3 and L7_3 then
                  L9_3 = A1_3.phase
                  if L9_3 == "moved" then
                    L9_3 = DRAG_MIN_DISTANCE
                    if L6_3 > L9_3 then
                      L9_3 = A0_3.animegg
                      L9_3 = L9_3.isOffended
                      if not L9_3 then
                        L9_3 = A0_3.animegg
                        L9_3 = L9_3.isPlayReactionAnim
                        if not L9_3 then
                          L10_3 = A0_3
                          L9_3 = A0_3.checkAngleToOrientation
                          L11_3 = A1_3
                          L12_3 = 180
                          L13_3 = DRAG_DIR_ANGLE_MAX_DELTA
                          L14_3 = DRAG_DIR_MIN_POINTS
                          L15_3 = DRAG_DIR_MAX_POINTS
                          L16_3 = DRAG_DIR_MIN_DISTANCE
                          L17_3 = nil
                          L18_3 = "drag hair"
                          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                          if L9_3 then
                            L10_3 = A0_3
                            L9_3 = A0_3.log
                            L11_3 = "start drag from hair"
                            L9_3(L10_3, L11_3)
                            L9_3 = A0_3.drag
                            L10_3 = {}
                            L9_3.points = L10_3
                            L9_3 = A0_3.drag
                            L9_3.index = 1
                            L9_3 = A0_3.animegg
                            L10_3 = L9_3
                            L9_3 = L9_3.stopAndPlayStartDragFromHair
                            L9_3(L10_3)
                            L9_3 = L24_1
                            A0_3.state = L9_3
                            L10_3 = A0_3
                            L9_3 = A0_3.calcHoldingPos
                            L11_3 = L4_3
                            L12_3 = DRAG_FROM_HAIR_LEFT_OFFSET
                            L13_3 = DRAG_FROM_HAIR_TOP_OFFSET
                            L9_3, L10_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
                            L11_3 = A0_3.animegg
                            L12_3 = L11_3
                            L11_3 = L11_3.moveTo
                            L13_3 = L9_3
                            L14_3 = L10_3
                            L11_3(L12_3, L13_3, L14_3)
                          end
                        end
                      end
                    end
                  end
                end
                L9_3 = A0_3.animegg
                L10_3 = L9_3
                L9_3 = L9_3.isWalking
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  L9_3 = MOON_DANCE_MIN_DISTANCE
                  if L6_3 >= L9_3 then
                    L9_3 = A1_3.phase
                    if L9_3 == "ended" then
                      L10_3 = A0_3
                      L9_3 = A0_3.detectMoonDance
                      L11_3 = A1_3
                      L9_3(L10_3, L11_3)
                    end
                  end
                end
                L9_3 = A0_3.state
                L10_3 = L12_1
                if L9_3 ~= L10_3 then
                  L9_3 = A0_3.state
                  L10_3 = L13_1
                  if L9_3 ~= L10_3 then
                    goto lbl_430
                  end
                end
                L9_3 = A1_3.phase
                if L9_3 == "ended" then
                  L9_3 = CIRCLE_MIN_DISTANCE
                  if L6_3 >= L9_3 then
                    L9_3 = A0_3.animegg
                    L9_3 = L9_3.isOffended
                    if not L9_3 then
                      L10_3 = A0_3
                      L9_3 = A0_3.detectCircle
                      L11_3 = A1_3
                      L9_3 = L9_3(L10_3, L11_3)
                      if L9_3 then
                      end
                    end
                  end
                end
                ::lbl_430::
                L9_3 = A0_3.state
                L10_3 = L12_1
                if L9_3 ~= L10_3 then
                  L9_3 = A0_3.state
                  L10_3 = L13_1
                  if L9_3 ~= L10_3 then
                    goto lbl_456
                  end
                end
                L9_3 = A0_3.animegg
                L10_3 = L9_3
                L9_3 = L9_3.allowForceWalk
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  L9_3 = FORCE_WALK_MIN_DISTANCE
                  if L6_3 >= L9_3 and (L7_3 or L8_3) then
                    L9_3 = A1_3.phase
                    if L9_3 == "ended" then
                      L10_3 = A0_3
                      L9_3 = A0_3.detectForceWalk
                      L11_3 = A1_3
                      L9_3(L10_3, L11_3)
                    end
                  end
                end
                ::lbl_456::
                L9_3 = A0_3.state
                L10_3 = L12_1
                if L9_3 ~= L10_3 then
                  L9_3 = A0_3.state
                  L10_3 = L13_1
                end
                if L9_3 == L10_3 and (L8_3 or L7_3) then
                  L9_3 = A1_3.phase
                  if L9_3 == "moved" then
                    L9_3 = STROKE_MIN_TIME_DELTA
                    if L5_3 >= L9_3 then
                      L9_3 = STROKE_MIN_DISTANCE
                      if L6_3 >= L9_3 then
                        L10_3 = A0_3
                        L9_3 = A0_3.log
                        L11_3 = "try to detect stroking"
                        L9_3(L10_3, L11_3)
                        L10_3 = A0_3
                        L9_3 = A0_3.detectStrokeBelly
                        L11_3 = A1_3
                        L9_3 = L9_3(L10_3, L11_3)
                        if L9_3 then
                          L11_3 = A0_3
                          L10_3 = A0_3.log
                          L12_3 = "stroke detected"
                          L10_3(L11_3, L12_3)
                          L10_3 = A0_3.animegg
                          L11_3 = L10_3
                          L10_3 = L10_3.stopAndPlayStrokeBelly
                          L10_3(L11_3)
                          L10_3 = L16_1
                          A0_3.state = L10_3
                        end
                      end
                    end
                  end
                end
                L9_3 = A0_3.state
                L10_3 = L13_1
                if L9_3 == L10_3 then
                  L9_3 = L12_1
                  A0_3.state = L9_3
                end
              end
            end
          end
        end
      end
    end
    ::lbl_499::
  end
  
  L3_2.detectSingleTouchGesture = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    L2_3 = A0_3.animegg
    L2_3 = L2_3.isPlayReactionAnim
    L2_3 = A0_3.animegg
    L2_3 = L2_3.isFallOnScreen
    L2_3 = A0_3.animegg
    L2_3 = L2_3.isHangFromScreen
    L2_3 = not L2_3 and L2_3
    L3_3 = A0_3.gestureFingerCount
    if L3_3 == 2 then
      if A1_3 then
        L3_3 = A0_3.fingerIds
        L3_3 = #L3_3
        if L3_3 == 1 then
          goto lbl_28
        end
      end
      L3_3 = A0_3.fingerIds
      L3_3 = #L3_3
      if L3_3 == 2 then
        ::lbl_28::
        L3_3 = A0_3.fingers
        L4_3 = A0_3.fingerIds
        L4_3 = L4_3[1]
        L3_3 = L3_3[L4_3]
        L4_3 = A1_3
        if not A1_3 then
          L5_3 = A0_3.fingers
          L6_3 = A0_3.fingerIds
          L6_3 = L6_3[2]
          L4_3 = L5_3[L6_3]
        end
        L5_3 = A0_3.state
        L6_3 = L17_1
        if L5_3 == L6_3 then
          L6_3 = A0_3
          L5_3 = A0_3.detectPressFlat
          L7_3 = A0_3.fingerHead
          L8_3 = A0_3.fingerFeet
          L5_3(L6_3, L7_3, L8_3)
        else
          L5_3 = A0_3.state
          L6_3 = L19_1
          if L5_3 == L6_3 then
            L6_3 = A0_3
            L5_3 = A0_3.detectStretch
            L7_3 = A0_3.fingerHead
            L8_3 = A0_3.fingerFeet
            L5_3(L6_3, L7_3, L8_3)
          else
            L5_3 = A0_3.fingerHead
            if L5_3 then
              L5_3 = A0_3.fingerFeet
              if L5_3 then
                L6_3 = A0_3
                L5_3 = A0_3.detectPressFlat
                L7_3 = A0_3.fingerHead
                L8_3 = A0_3.fingerFeet
                L5_3(L6_3, L7_3, L8_3)
                L6_3 = A0_3
                L5_3 = A0_3.detectStretch
                L7_3 = A0_3.fingerHead
                L8_3 = A0_3.fingerFeet
                L5_3(L6_3, L7_3, L8_3)
                L6_3 = A0_3
                L5_3 = A0_3.detectHandstand
                L7_3 = A0_3.fingerHead
                L8_3 = A0_3.fingerFeet
                L5_3(L6_3, L7_3, L8_3)
            end
            else
              L5_3 = A0_3.state
              L6_3 = L12_1
              if L5_3 ~= L6_3 then
                L5_3 = A0_3.state
                L6_3 = L13_1
              end
              if L5_3 == L6_3 then
                L5_3 = L3_3.points
                L5_3 = L5_3[1]
                L6_3 = L4_3.points
                L6_3 = L6_3[1]
                L7_3 = A0_3.animegg
                L8_3 = L7_3
                L7_3 = L7_3.containsPointAt
                L9_3 = L5_3.x
                L10_3 = L5_3.y
                L11_3 = "layer_head"
                L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                L8_3 = A0_3.animegg
                L9_3 = L8_3
                L8_3 = L8_3.containsPointAt
                L10_3 = L6_3.x
                L11_3 = L6_3.y
                L12_3 = "layer_head"
                L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
                L9_3 = A0_3.animegg
                L10_3 = L9_3
                L9_3 = L9_3.containsPointAt
                L11_3 = L5_3.x
                L12_3 = L5_3.y
                L13_3 = "layer_leg_l"
                L14_3 = TOUCH_LEGS_ADD_BORDER
                L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                L10_3 = A0_3.animegg
                L11_3 = L10_3
                L10_3 = L10_3.containsPointAt
                L12_3 = L6_3.x
                L13_3 = L6_3.y
                L14_3 = "layer_leg_l"
                L15_3 = TOUCH_LEGS_ADD_BORDER
                L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
                if not L9_3 then
                  L11_3 = A0_3.animegg
                  L12_3 = L11_3
                  L11_3 = L11_3.containsPointAt
                  L13_3 = L5_3.x
                  L14_3 = L5_3.y
                  L15_3 = "layer_leg_r"
                  L16_3 = TOUCH_LEGS_ADD_BORDER
                  L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
                  L9_3 = L11_3
                end
                if not L10_3 then
                  L11_3 = A0_3.animegg
                  L12_3 = L11_3
                  L11_3 = L11_3.containsPointAt
                  L13_3 = L6_3.x
                  L14_3 = L6_3.y
                  L15_3 = "layer_leg_r"
                  L16_3 = TOUCH_LEGS_ADD_BORDER
                  L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
                  L10_3 = L11_3
                end
                if L7_3 and L10_3 then
                  A0_3.fingerHead = L3_3
                  A0_3.fingerFeet = L4_3
                  L12_3 = A0_3
                  L11_3 = A0_3.detectPressFlat
                  L13_3 = A0_3.fingerHead
                  L14_3 = A0_3.fingerFeet
                  L11_3(L12_3, L13_3, L14_3)
                  L12_3 = A0_3
                  L11_3 = A0_3.detectStretch
                  L13_3 = A0_3.fingerHead
                  L14_3 = A0_3.fingerFeet
                  L11_3(L12_3, L13_3, L14_3)
                  L12_3 = A0_3
                  L11_3 = A0_3.detectHandstand
                  L13_3 = A0_3.fingerHead
                  L14_3 = A0_3.fingerFeet
                  L11_3(L12_3, L13_3, L14_3)
                elseif L8_3 and L9_3 then
                  A0_3.fingerHead = L4_3
                  A0_3.fingerFeet = L3_3
                  L12_3 = A0_3
                  L11_3 = A0_3.detectPressFlat
                  L13_3 = A0_3.fingerHead
                  L14_3 = A0_3.fingerFeet
                  L11_3(L12_3, L13_3, L14_3)
                  L12_3 = A0_3
                  L11_3 = A0_3.detectStretch
                  L13_3 = A0_3.fingerHead
                  L14_3 = A0_3.fingerFeet
                  L11_3(L12_3, L13_3, L14_3)
                  L12_3 = A0_3
                  L11_3 = A0_3.detectHandstand
                  L13_3 = A0_3.fingerHead
                  L14_3 = A0_3.fingerFeet
                  L11_3(L12_3, L13_3, L14_3)
                else
                  A0_3.fingerHead = nil
                  A0_3.fingerFeet = nil
                  L11_3 = A0_3.orientationController
                  L11_3 = L11_3.current
                  L11_3 = L11_3.bounds
                  L11_3 = L11_3.vAxis
                  L12_3 = A0_3.orientationController
                  L12_3 = L12_3.current
                  L12_3 = L12_3.bounds
                  L12_3 = L12_3.hAxis
                  L13_3 = A0_3.orientationController
                  L14_3 = L13_3
                  L13_3 = L13_3.getMoveRightDirection
                  L13_3 = L13_3(L14_3)
                  L14_3 = L3_3.points
                  L14_3 = L14_3[1]
                  L14_3 = L14_3[L12_3]
                  L15_3 = L3_3.points
                  L15_3 = L15_3[1]
                  L15_3 = L15_3[L12_3]
                  L16_3 = {}
                  L17_3 = A0_3.animegg
                  L18_3 = L17_3
                  L17_3 = L17_3.getCurrentPosition
                  L17_3, L18_3 = L17_3(L18_3)
                  L16_3.y = L18_3
                  L16_3.x = L17_3
                  L17_3 = L16_3[L12_3]
                  L18_3 = L17_3
                  L19_3 = L16_3[L12_3]
                  L20_3 = L13_3[L12_3]
                  L20_3 = 100 * L20_3
                  L19_3 = L19_3 + L20_3
                  if L17_3 > L19_3 then
                    L17_3 = L19_3
                    L19_3 = L18_3
                  end
                  if L14_3 >= L17_3 and L14_3 <= L19_3 and L15_3 >= L17_3 and L15_3 <= L19_3 then
                    L20_3 = nil
                    L21_3 = nil
                    L22_3 = L3_3.points
                    L22_3 = L22_3[1]
                    L22_3 = L22_3[L11_3]
                    L23_3 = L4_3.points
                    L23_3 = L23_3[1]
                    L23_3 = L23_3[L11_3]
                    L24_3 = A0_3.orientationController
                    L24_3 = L24_3.current
                    L24_3 = L24_3.bounds
                    L24_3 = L24_3.top
                    if L24_3 == 0 and L22_3 < L23_3 then
                      L20_3 = L3_3
                      L21_3 = L4_3
                    else
                      L24_3 = A0_3.orientationController
                      L24_3 = L24_3.current
                      L24_3 = L24_3.bounds
                      L24_3 = L24_3.top
                      if 0 < L24_3 and L22_3 > L23_3 then
                        L20_3 = L3_3
                        L21_3 = L4_3
                      else
                        L20_3 = L4_3
                        L21_3 = L3_3
                      end
                    end
                    L25_3 = A0_3
                    L24_3 = A0_3.detectPressFlat
                    L26_3 = L20_3
                    L27_3 = L21_3
                    L24_3(L25_3, L26_3, L27_3)
                    L25_3 = A0_3
                    L24_3 = A0_3.detectStretch
                    L26_3 = L20_3
                    L27_3 = L21_3
                    L24_3(L25_3, L26_3, L27_3)
                  end
                  L21_3 = A0_3
                  L20_3 = A0_3.detectMakeThinOrFat
                  L22_3 = L3_3
                  L23_3 = L4_3
                  L20_3(L21_3, L22_3, L23_3)
                end
              end
            end
          end
        end
    end
    else
      L3_3 = A0_3.gestureFingerCount
      if L3_3 == 3 then
        if A1_3 then
          L3_3 = A0_3.fingerIds
          L3_3 = #L3_3
          if L3_3 == 2 then
            goto lbl_272
          end
        end
        L3_3 = A0_3.fingerIds
        L3_3 = #L3_3
        ::lbl_272::
        if L3_3 == 3 and L2_3 then
          L3_3 = A0_3.fingers
          L4_3 = A0_3.fingerIds
          L4_3 = L4_3[1]
          L3_3 = L3_3[L4_3]
          L4_3 = A0_3.fingers
          L5_3 = A0_3.fingerIds
          L5_3 = L5_3[2]
          L4_3 = L4_3[L5_3]
          L5_3 = A1_3
          if not A1_3 then
            L6_3 = A0_3.fingers
            L7_3 = A0_3.fingerIds
            L7_3 = L7_3[3]
            L5_3 = L6_3[L7_3]
          end
          L6_3 = 10
          L7_3 = 100
          L8_3 = L3_3.points
          L8_3 = #L8_3
          if L6_3 <= L8_3 then
            L8_3 = L4_3.points
            L8_3 = #L8_3
            if L6_3 <= L8_3 then
              L8_3 = L5_3.points
              L8_3 = #L8_3
              if L6_3 <= L8_3 then
                L9_3 = A0_3
                L8_3 = A0_3.pointDistance
                L10_3 = L3_3.points
                L10_3 = L10_3[1]
                L11_3 = L3_3.points
                L12_3 = L3_3.points
                L12_3 = #L12_3
                L11_3 = L11_3[L12_3]
                L8_3 = L8_3(L9_3, L10_3, L11_3)
                L10_3 = A0_3
                L9_3 = A0_3.pointDistance
                L11_3 = L4_3.points
                L11_3 = L11_3[1]
                L12_3 = L4_3.points
                L13_3 = L4_3.points
                L13_3 = #L13_3
                L12_3 = L12_3[L13_3]
                L9_3 = L9_3(L10_3, L11_3, L12_3)
                L11_3 = A0_3
                L10_3 = A0_3.pointDistance
                L12_3 = L5_3.points
                L12_3 = L12_3[1]
                L13_3 = L5_3.points
                L14_3 = L5_3.points
                L14_3 = #L14_3
                L13_3 = L13_3[L14_3]
                L10_3 = L10_3(L11_3, L12_3, L13_3)
                L11_3 = RAIN_MIN_DISTANCE
                if L8_3 > L11_3 then
                  L11_3 = RAIN_MIN_DISTANCE
                  if L9_3 > L11_3 then
                    L11_3 = RAIN_MIN_DISTANCE
                    if L10_3 > L11_3 then
                      L12_3 = A0_3
                      L11_3 = A0_3.checkAngleToOrientation
                      L13_3 = L3_3
                      L14_3 = 0
                      L15_3 = RAIN_MAX_ANGLE
                      L16_3 = L6_3
                      L17_3 = L7_3
                      L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                      if L11_3 then
                        L12_3 = A0_3
                        L11_3 = A0_3.checkAngleToOrientation
                        L13_3 = L4_3
                        L14_3 = 0
                        L15_3 = RAIN_MAX_ANGLE
                        L16_3 = L6_3
                        L17_3 = L7_3
                        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                        if L11_3 then
                          L12_3 = A0_3
                          L11_3 = A0_3.checkAngleToOrientation
                          L13_3 = L5_3
                          L14_3 = 0
                          L15_3 = RAIN_MAX_ANGLE
                          L16_3 = L6_3
                          L17_3 = L7_3
                          L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                          if L11_3 then
                            L11_3 = L26_1
                            A0_3.state = L11_3
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
      elseif L2_3 then
        L3_3 = A0_3.gestureFingerCount
        if L3_3 == 5 then
          if A1_3 then
            L3_3 = A0_3.fingerIds
            L3_3 = #L3_3
            if L3_3 == 4 then
              goto lbl_394
            end
          end
          L3_3 = A0_3.fingerIds
          L3_3 = #L3_3
          if L3_3 == 5 then
            goto lbl_394
          end
        end
        L3_3 = A0_3.gestureFingerCount
        if L3_3 == 4 then
          if A1_3 then
            L3_3 = A0_3.fingerIds
            L3_3 = #L3_3
            if L3_3 == 3 then
              goto lbl_394
            end
          end
          L3_3 = A0_3.fingerIds
          L3_3 = #L3_3
          ::lbl_394::
          if L3_3 == 4 then
            L3_3 = A0_3.fingers
            L4_3 = A0_3.fingerIds
            L4_3 = L4_3[1]
            L3_3 = L3_3[L4_3]
            L4_3 = A0_3.fingers
            L5_3 = A0_3.fingerIds
            L5_3 = L5_3[2]
            L4_3 = L4_3[L5_3]
            L5_3 = A0_3.fingers
            L6_3 = A0_3.fingerIds
            L6_3 = L6_3[3]
            L5_3 = L5_3[L6_3]
            L6_3 = A0_3.fingers
            L7_3 = A0_3.fingerIds
            L7_3 = L7_3[4]
            L6_3 = L6_3[L7_3]
            L7_3 = true
            if A1_3 then
              L9_3 = A0_3
              L8_3 = A0_3.calcDistance
              L10_3 = A1_3
              L8_3 = L8_3(L9_3, L10_3)
              L9_3 = TAP_MAX_DISTANCE
              if L8_3 > L9_3 then
                L7_3 = false
              else
                L8_3 = pairs
                L9_3 = A0_3.fingers
                L8_3, L9_3, L10_3 = L8_3(L9_3)
                for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                  L14_3 = A0_3
                  L13_3 = A0_3.calcDistance
                  L15_3 = L12_3
                  L13_3 = L13_3(L14_3, L15_3)
                  L14_3 = TAP_MAX_DISTANCE
                  if L13_3 > L14_3 then
                    L7_3 = false
                  else
                    L15_3 = A0_3
                    L14_3 = A0_3.pointDistance
                    L16_3 = A1_3.points
                    L16_3 = L16_3[1]
                    L17_3 = L12_3.points
                    L17_3 = L17_3[1]
                    L14_3 = L14_3(L15_3, L16_3, L17_3)
                    L15_3 = KISS_MAX_DISTANCE
                    if L14_3 > L15_3 then
                      L7_3 = false
                    end
                  end
                end
              end
            end
            if L7_3 then
              L8_3 = L29_1
              A0_3.state = L8_3
            else
            end
          end
        end
      end
    end
  end
  
  L3_2.detectMultiTouchGesture = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L3_3 = A0_3
    L2_3 = A0_3.log
    L4_3 = "try to detect moon walk dance"
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.animegg
    L3_3 = L2_3
    L2_3 = L2_3.isWalking
    L2_3, L3_3 = L2_3(L3_3)
    L4_3 = nil
    L5_3 = 0
    L6_3 = 35
    L7_3 = 5
    L8_3 = 25
    L9_3 = 40
    if L3_3 then
      L10_3 = A0_3.orientationController
      L11_3 = L10_3
      L10_3 = L10_3.getMoveRightDirection
      L10_3 = L10_3(L11_3)
      L4_3 = L10_3
    else
      L10_3 = A0_3.orientationController
      L11_3 = L10_3
      L10_3 = L10_3.getMoveLeftDirection
      L10_3 = L10_3(L11_3)
      L4_3 = L10_3
    end
    L10_3 = A0_3.orientationController
    L10_3 = L10_3.current
    L10_3 = L10_3.t
    if L10_3 == "landscape" then
      L10_3 = {}
      L11_3 = L4_3.x
      L11_3 = -L11_3
      L10_3.x = L11_3
      L11_3 = L4_3.y
      L11_3 = -L11_3
      L10_3.y = L11_3
      L11_3 = L4_3.z
      L11_3 = -L11_3
      L10_3.z = L11_3
      L4_3 = L10_3
    end
    L11_3 = A0_3
    L10_3 = A0_3.checkAngleToOrientation
    L12_3 = A1_3
    L13_3 = L5_3
    L14_3 = L6_3
    L15_3 = L7_3
    L16_3 = L8_3
    L17_3 = L9_3
    L18_3 = L4_3
    L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    if L10_3 then
      L10_3 = A0_3.animegg
      L11_3 = L10_3
      L10_3 = L10_3.stopAndPlayMoonDance
      L10_3(L11_3)
      L10_3 = L27_1
      A0_3.state = L10_3
    end
  end
  
  L3_2.detectMoonDance = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L3_3 = A0_3
    L2_3 = A0_3.log
    L4_3 = "try to detect force walk"
    L2_3(L3_3, L4_3)
    L2_3 = 0
    L3_3 = 35
    L4_3 = 5
    L5_3 = 25
    L6_3 = 40
    L7_3 = A0_3.orientationController
    L8_3 = L7_3
    L7_3 = L7_3.getMoveLeftDirection
    L7_3 = L7_3(L8_3)
    L8_3 = A0_3.orientationController
    L9_3 = L8_3
    L8_3 = L8_3.getMoveRightDirection
    L8_3 = L8_3(L9_3)
    L9_3 = A0_3.orientationController
    L9_3 = L9_3.current
    L9_3 = L9_3.t
    if L9_3 == "landscape" then
      L9_3 = A0_3.orientationController
      L10_3 = L9_3
      L9_3 = L9_3.getMoveRightDirection
      L9_3 = L9_3(L10_3)
      L7_3 = L9_3
      L9_3 = A0_3.orientationController
      L10_3 = L9_3
      L9_3 = L9_3.getMoveLeftDirection
      L9_3 = L9_3(L10_3)
      L8_3 = L9_3
    end
    L10_3 = A0_3
    L9_3 = A0_3.checkAngleToOrientation
    L11_3 = A1_3
    L12_3 = L2_3
    L13_3 = L3_3
    L14_3 = L4_3
    L15_3 = L5_3
    L16_3 = L6_3
    L17_3 = L7_3
    L18_3 = "force walk left"
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    if L9_3 then
      L9_3 = A0_3.animegg
      L10_3 = L9_3
      L9_3 = L9_3.stopAndPlayWalk
      L11_3 = true
      L9_3(L10_3, L11_3)
      L9_3 = L28_1
      A0_3.state = L9_3
    else
      L10_3 = A0_3
      L9_3 = A0_3.checkAngleToOrientation
      L11_3 = A1_3
      L12_3 = L2_3
      L13_3 = L3_3
      L14_3 = L4_3
      L15_3 = L5_3
      L16_3 = L6_3
      L17_3 = L8_3
      L18_3 = "force walk right"
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      if L9_3 then
        L9_3 = A0_3.animegg
        L10_3 = L9_3
        L9_3 = L9_3.stopAndPlayWalk
        L11_3 = false
        L9_3(L10_3, L11_3)
        L9_3 = L28_1
        A0_3.state = L9_3
      end
    end
  end
  
  L3_2.detectForceWalk = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = A0_3.state
    L4_3 = L12_1
    if L3_3 ~= L4_3 then
      L3_3 = A0_3.state
      L4_3 = L13_1
      if L3_3 ~= L4_3 then
        L3_3 = A0_3.state
        L4_3 = L17_1
        if L3_3 ~= L4_3 then
          goto lbl_16
        end
      end
    end
    L3_3 = A0_3.isDisablePressFlatDetection
    if L3_3 then
      ::lbl_16::
      return
    else
      L3_3 = A0_3.animegg
      L3_3 = L3_3.isPlayReactionAnim
      if L3_3 then
        L3_3 = A0_3.state
        L4_3 = L17_1
        if L3_3 ~= L4_3 then
          goto lbl_34
        end
      end
      L3_3 = A0_3.animegg
      L3_3 = L3_3.isFallOnScreen
      if not L3_3 then
        L3_3 = A0_3.animegg
        L3_3 = L3_3.isHangFromScreen
        if not L3_3 then
          goto lbl_35
        end
      end
      ::lbl_34::
      return
    end
    ::lbl_35::
    L4_3 = A0_3
    L3_3 = A0_3.log
    L5_3 = "try to detect press flat"
    L3_3(L4_3, L5_3)
    L3_3 = {}
    L4_3 = A0_3.state
    L5_3 = L17_1
    L4_3 = L4_3 == L5_3
    L3_3.isStart = L4_3
    L4_3 = A0_3.state
    L5_3 = L18_1
    L4_3 = L4_3 == L5_3
    L3_3.isLoop = L4_3
    L5_3 = A0_3
    L4_3 = A0_3.detectGrowShrinkGesture
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = 0
    L9_3 = L3_3
    L10_3 = PRESS_FLAT_START_RATIO
    L11_3 = PRESS_FLAT_LOOP_RATIO
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L4_3 = L3_3.isDisable
    if L4_3 then
      L5_3 = A0_3
      L4_3 = A0_3.log
      L6_3 = "disable press flat detection"
      L4_3(L5_3, L6_3)
      A0_3.isDisablePressFlatDetection = true
      return
    end
    L4_3 = A0_3.state
    L5_3 = L17_1
    if L4_3 ~= L5_3 then
      L4_3 = L3_3.isStart
      if L4_3 then
        L5_3 = A0_3
        L4_3 = A0_3.log
        L6_3 = "start press flat"
        L4_3(L5_3, L6_3)
        L4_3 = A0_3.animegg
        L5_3 = L4_3
        L4_3 = L4_3.stopAndPlayStartPressFlat
        L6_3 = false
        L4_3(L5_3, L6_3)
        L4_3 = L17_1
        A0_3.state = L4_3
    end
    else
      L4_3 = A0_3.state
      L5_3 = L18_1
      if L4_3 ~= L5_3 then
        L4_3 = L3_3.isLoop
        if L4_3 then
          L5_3 = A0_3
          L4_3 = A0_3.log
          L6_3 = "press flat"
          L4_3(L5_3, L6_3)
          L4_3 = A0_3.animegg
          L5_3 = L4_3
          L4_3 = L4_3.stopAndPlayPressFlat
          L4_3(L5_3)
          L4_3 = L18_1
          A0_3.state = L4_3
        end
      end
    end
  end
  
  L3_2.detectPressFlat = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = A0_3.state
    L4_3 = L12_1
    if L3_3 ~= L4_3 then
      L3_3 = A0_3.state
      L4_3 = L13_1
      if L3_3 ~= L4_3 then
        L3_3 = A0_3.state
        L4_3 = L19_1
        if L3_3 ~= L4_3 then
          goto lbl_16
        end
      end
    end
    L3_3 = A0_3.isDisableStretchDetection
    if L3_3 then
      ::lbl_16::
      return
    else
      L3_3 = A0_3.animegg
      L3_3 = L3_3.isPlayReactionAnim
      if L3_3 then
        L3_3 = A0_3.state
        L4_3 = L19_1
        if L3_3 ~= L4_3 then
          goto lbl_34
        end
      end
      L3_3 = A0_3.animegg
      L3_3 = L3_3.isFallOnScreen
      if not L3_3 then
        L3_3 = A0_3.animegg
        L3_3 = L3_3.isHangFromScreen
        if not L3_3 then
          goto lbl_35
        end
      end
      ::lbl_34::
      return
    end
    ::lbl_35::
    L4_3 = A0_3
    L3_3 = A0_3.log
    L5_3 = "try to detect stretch"
    L3_3(L4_3, L5_3)
    L3_3 = {}
    L4_3 = A0_3.state
    L5_3 = L19_1
    L4_3 = L4_3 == L5_3
    L3_3.isStart = L4_3
    L4_3 = A0_3.state
    L5_3 = L20_1
    L4_3 = L4_3 == L5_3
    L3_3.isLoop = L4_3
    L5_3 = A0_3
    L4_3 = A0_3.detectGrowShrinkGesture
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = 180
    L9_3 = L3_3
    L10_3 = STRETCH_START_RATIO
    L11_3 = STRETCH_LOOP_RATIO
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L4_3 = L3_3.isDisable
    if L4_3 then
      L5_3 = A0_3
      L4_3 = A0_3.log
      L6_3 = "disable stretch detection"
      L4_3(L5_3, L6_3)
      A0_3.isDisableStretchDetection = true
      return
    end
    L4_3 = A0_3.state
    L5_3 = L19_1
    if L4_3 ~= L5_3 then
      L4_3 = L3_3.isStart
      if L4_3 then
        L4_3 = A0_3.animegg
        L5_3 = L4_3
        L4_3 = L4_3.stopAndPlayStartStretch
        L6_3 = false
        L4_3(L5_3, L6_3)
        L4_3 = L19_1
        A0_3.state = L4_3
    end
    else
      L4_3 = A0_3.state
      L5_3 = L20_1
      if L4_3 ~= L5_3 then
        L4_3 = L3_3.isLoop
        if L4_3 then
          L4_3 = A0_3.animegg
          L5_3 = L4_3
          L4_3 = L4_3.stopAndPlayStretch
          L4_3(L5_3)
          L4_3 = L20_1
          A0_3.state = L4_3
        end
      end
    end
  end
  
  L3_2.detectStretch = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L8_3 = A0_3
    L7_3 = A0_3.log
    L9_3 = "try to detect grow shrink gesture"
    L7_3(L8_3, L9_3)
    L7_3 = 25
    L8_3 = 5
    L9_3 = 15
    L11_3 = A0_3
    L10_3 = A0_3.checkAngleToOrientation
    L12_3 = A1_3
    L13_3 = A3_3
    L14_3 = L7_3
    L15_3 = L8_3
    L16_3 = FINGER_MAX_POINTS
    L17_3 = L9_3
    L18_3 = nil
    L19_3 = "grow/shrink"
    L10_3, L11_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    if L10_3 then
      L12_3 = A1_3.points
      L12_3 = L12_3[1]
      L13_3 = A2_3.points
      L13_3 = L13_3[1]
      L14_3 = A1_3.points
      L15_3 = A1_3.points
      L15_3 = #L15_3
      L14_3 = L14_3[L15_3]
      L15_3 = A2_3.points
      L16_3 = A2_3.points
      L16_3 = #L16_3
      L15_3 = L15_3[L16_3]
      L17_3 = A0_3
      L16_3 = A0_3.pointDistance
      L18_3 = L12_3
      L19_3 = L13_3
      L16_3 = L16_3(L17_3, L18_3, L19_3)
      L18_3 = A0_3
      L17_3 = A0_3.pointDistance
      L19_3 = L14_3
      L20_3 = L15_3
      L17_3 = L17_3(L18_3, L19_3, L20_3)
      L18_3 = L16_3 / L17_3
      L19_3 = false
      L20_3 = false
      if A5_3 < 1 and A6_3 < 1 then
        if A5_3 > L18_3 then
          L19_3 = true
        end
        if A6_3 > L18_3 then
          L20_3 = true
        end
      elseif 1 < A5_3 and 1 < A6_3 then
        if A5_3 < L18_3 then
          L19_3 = true
        end
        if A6_3 < L18_3 then
          L20_3 = true
        end
      else
        L22_3 = A0_3
        L21_3 = A0_3.log
        L23_3 = "FATAL: detectGrowShrinkGesture - start and loop ratios must both be smaller or larger than 1"
        L21_3(L22_3, L23_3)
        L21_3 = os
        L21_3 = L21_3.exit
        L22_3 = -1
        L21_3(L22_3)
      end
      L21_3 = A4_3.isStart
      if not L21_3 then
        L21_3 = A4_3.isLoop
        if not L21_3 and L19_3 then
          A0_3.isDisableHandstandDetection = true
          A4_3.isStart = true
          A4_3.isLoop = false
          A0_3.fingerHead = A1_3
          A0_3.fingerFeet = A2_3
          L22_3 = A0_3
          L21_3 = A0_3.log
          L23_3 = "start grow/shrink"
          L21_3(L22_3, L23_3)
      end
      else
        L21_3 = A4_3.isStart
        if L21_3 and L20_3 then
          A4_3.isStart = false
          A4_3.isLoop = true
          L22_3 = A0_3
          L21_3 = A0_3.log
          L23_3 = "loop grow/shrink"
          L21_3(L22_3, L23_3)
        end
      end
    elseif L11_3 then
      A4_3.isDisable = true
    else
      A4_3.isDisable = false
    end
  end
  
  L3_2.detectGrowShrinkGesture = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
    L3_3 = A0_3.isDisableMakeThinFatDetection
    if not L3_3 then
      L3_3 = A0_3.animegg
      L3_3 = L3_3.isPlayReactionAnim
      if not L3_3 then
        L3_3 = A0_3.animegg
        L3_3 = L3_3.isFallOnScreen
        if not L3_3 then
          L3_3 = A0_3.animegg
          L3_3 = L3_3.isHangFromScreen
          if not L3_3 then
            goto lbl_18
          end
        end
      end
    end
    do return end
    goto lbl_27
    ::lbl_18::
    L3_3 = A0_3.state
    L4_3 = L12_1
    if L3_3 ~= L4_3 then
      L3_3 = A0_3.state
      L4_3 = L13_1
      if L3_3 ~= L4_3 then
        return
      end
    end
    ::lbl_27::
    L4_3 = A0_3
    L3_3 = A0_3.log
    L5_3 = "try to detect make thin or fat"
    L3_3(L4_3, L5_3)
    L3_3 = 90
    L4_3 = 35
    L5_3 = 30
    L6_3 = A1_3.points
    L6_3 = L6_3[1]
    L7_3 = A2_3.points
    L7_3 = L7_3[1]
    L8_3 = A1_3.points
    L9_3 = A1_3.points
    L9_3 = #L9_3
    L8_3 = L8_3[L9_3]
    L9_3 = A2_3.points
    L10_3 = A2_3.points
    L10_3 = #L10_3
    L9_3 = L9_3[L10_3]
    L11_3 = A0_3
    L10_3 = A0_3.pointDistance
    L12_3 = L6_3
    L13_3 = L7_3
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L12_3 = A0_3
    L11_3 = A0_3.pointDistance
    L13_3 = L8_3
    L14_3 = L9_3
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    L12_3 = L10_3 / L11_3
    L13_3 = A0_3.animegg
    L14_3 = L13_3
    L13_3 = L13_3.getCurrentPosition
    L13_3, L14_3 = L13_3(L14_3)
    L15_3 = {}
    L16_3 = L6_3.x
    L16_3 = L16_3 - L13_3
    L15_3.x = L16_3
    L16_3 = L6_3.y
    L16_3 = L16_3 - L14_3
    L16_3 = -L16_3
    L15_3.y = L16_3
    L15_3.z = 0
    L16_3 = {}
    L17_3 = L7_3.x
    L17_3 = L17_3 - L13_3
    L16_3.x = L17_3
    L17_3 = L7_3.y
    L17_3 = L17_3 - L14_3
    L17_3 = -L17_3
    L16_3.y = L17_3
    L16_3.z = 0
    L17_3 = setmetatable
    L18_3 = L15_3
    L19_3 = L1_1
    L17_3(L18_3, L19_3)
    L17_3 = setmetatable
    L18_3 = L16_3
    L19_3 = L1_1
    L17_3(L18_3, L19_3)
    L17_3 = L5_1
    L18_3 = L15_3
    L17_3 = L17_3(L18_3)
    L18_3 = L5_1
    L19_3 = L16_3
    L18_3 = L18_3(L19_3)
    L19_3 = L4_1
    L20_3 = L15_3
    L19_3(L20_3)
    L19_3 = L4_1
    L20_3 = L16_3
    L19_3(L20_3)
    L19_3 = L2_1
    L20_3 = L15_3
    L21_3 = A0_3.orientationController
    L21_3 = L21_3.current
    L19_3 = L19_3(L20_3, L21_3)
    L20_3 = L2_1
    L21_3 = L16_3
    L22_3 = A0_3.orientationController
    L22_3 = L22_3.current
    L20_3 = L20_3(L21_3, L22_3)
    L21_3 = L9_1
    L22_3 = L3_3
    L21_3 = L21_3(L22_3)
    if not (L19_3 > L21_3) then
      L21_3 = L9_1
      L22_3 = L3_3
      L21_3 = L21_3(L22_3)
      if not (L20_3 > L21_3) then
        goto lbl_120
      end
    end
    L22_3 = A0_3
    L21_3 = A0_3.log
    L23_3 = "abort make thin/fat detection, not close enough to animegg"
    L21_3(L22_3, L23_3)
    A0_3.isDisableMakeThinFatDetection = true
    do return end
    ::lbl_120::
    L21_3 = L9_1
    L22_3 = 180
    L21_3 = L21_3(L22_3)
    L22_3 = A1_3.points
    L22_3 = #L22_3
    L23_3 = MAKE_THIN_FAT_MIN_POINTS
    if L22_3 > L23_3 then
      L22_3 = A2_3.points
      L22_3 = #L22_3
      L23_3 = MAKE_THIN_FAT_MIN_POINTS
      if L22_3 > L23_3 then
        L22_3 = {}
        L23_3 = L8_3.x
        L24_3 = L6_3.x
        L23_3 = L23_3 - L24_3
        L22_3.x = L23_3
        L23_3 = L8_3.y
        L24_3 = L6_3.y
        L23_3 = L23_3 - L24_3
        L22_3.y = L23_3
        L22_3.z = 0
        L23_3 = {}
        L24_3 = L9_3.x
        L25_3 = L7_3.x
        L24_3 = L24_3 - L25_3
        L23_3.x = L24_3
        L24_3 = L9_3.y
        L25_3 = L7_3.y
        L24_3 = L24_3 - L25_3
        L23_3.y = L24_3
        L23_3.z = 0
        L24_3 = L5_1
        L25_3 = L22_3
        L24_3 = L24_3(L25_3)
        if not (L5_3 > L24_3) then
          L24_3 = L5_1
          L25_3 = L23_3
          L24_3 = L24_3(L25_3)
          if not (L5_3 > L24_3) then
            goto lbl_164
          end
        end
        do return end
        ::lbl_164::
        L24_3 = L4_1
        L25_3 = L22_3
        L24_3(L25_3)
        L24_3 = L4_1
        L25_3 = L23_3
        L24_3(L25_3)
        L24_3 = L2_1
        L25_3 = L22_3
        L26_3 = L23_3
        L24_3 = L24_3(L25_3, L26_3)
        L25_3 = L21_3 - L24_3
        L26_3 = L9_1
        L27_3 = L4_3
        L26_3 = L26_3(L27_3)
        if L25_3 < L26_3 then
          L26_3 = A0_3
          L25_3 = A0_3.checkAngleToOrientation
          L27_3 = A1_3
          L28_3 = L3_3
          L29_3 = L4_3
          L30_3 = MAKE_THIN_FAT_MIN_POINTS
          L31_3 = MAKE_THIN_FAT_MAX_POINTS
          L32_3 = L5_3
          L33_3 = nil
          L34_3 = "make thin/fat"
          L25_3, L26_3 = L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          if L25_3 then
            L27_3 = MAKE_THIN_RATIO
            if L12_3 > L27_3 then
              L27_3 = A0_3.animegg
              L28_3 = L27_3
              L27_3 = L27_3.stopAndPlayMakeThin
              L27_3(L28_3)
              L27_3 = L21_1
              A0_3.state = L27_3
            else
              L27_3 = MAKE_FAT_RATIO
              if L12_3 < L27_3 then
                L27_3 = A0_3.animegg
                L28_3 = L27_3
                L27_3 = L27_3.stopAndPlayMakeFat
                L27_3(L28_3)
                L27_3 = L22_1
                A0_3.state = L27_3
              end
            end
          elseif L26_3 then
            L28_3 = A0_3
            L27_3 = A0_3.log
            L29_3 = string
            L29_3 = L29_3.format
            L30_3 = "abort make thin/fat detection, finger has wrong angle towards orientation"
            L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L29_3(L30_3)
            L27_3(L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
            A0_3.isDisableMakeThinFatDetection = true
            return
          end
        else
          L26_3 = A0_3
          L25_3 = A0_3.log
          L27_3 = string
          L27_3 = L27_3.format
          L28_3 = "abort make thin/fat detection, wrong angle between finger 1 and 2, angle=%1.2f"
          L29_3 = L10_1
          L30_3 = L24_3
          L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L29_3(L30_3)
          L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L27_3(L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          A0_3.isDisableMakeThinFatDetection = true
          return
        end
      end
    end
  end
  
  L3_2.detectMakeThinOrFat = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    L3_3 = A0_3.state
    L4_3 = L12_1
    if L3_3 ~= L4_3 then
      L3_3 = A0_3.state
      L4_3 = L13_1
      if L3_3 ~= L4_3 then
        goto lbl_12
      end
    end
    L3_3 = A0_3.isDisableHandstandDetection
    if L3_3 then
      ::lbl_12::
      return
    else
      L3_3 = A0_3.animegg
      L3_3 = L3_3.isPlayReactionAnim
      if not L3_3 then
        L3_3 = A0_3.animegg
        L3_3 = L3_3.isFallOnScreen
        if not L3_3 then
          L3_3 = A0_3.animegg
          L3_3 = L3_3.isHangFromScreen
          if not L3_3 then
            L3_3 = A0_3.animegg
            L3_3 = L3_3.isOffended
            if not L3_3 then
              goto lbl_31
            end
          end
        end
      end
      return
    end
    ::lbl_31::
    L3_3 = A1_3.points
    L3_3 = #L3_3
    L4_3 = HANDSTAND_MIN_POINTS
    if not (L3_3 < L4_3) then
      L3_3 = A2_3.points
      L3_3 = #L3_3
      L4_3 = HANDSTAND_MIN_POINTS
      if not (L3_3 < L4_3) then
        goto lbl_43
      end
    end
    do return end
    goto lbl_51
    ::lbl_43::
    L3_3 = A0_3.state
    L4_3 = L30_1
    if L3_3 == L4_3 then
      L4_3 = A0_3
      L3_3 = A0_3.log
      L5_3 = "is already in handstand state"
      L3_3(L4_3, L5_3)
      return
    end
    ::lbl_51::
    L3_3 = true
    L4_3 = A1_3.points
    L4_3 = L4_3[1]
    L5_3 = A2_3.points
    L5_3 = L5_3[1]
    L6_3 = {}
    L7_3 = L4_3.x
    L8_3 = L5_3.x
    L9_3 = L4_3.x
    L8_3 = L8_3 - L9_3
    L8_3 = L8_3 / 2
    L7_3 = L7_3 + L8_3
    L6_3.x = L7_3
    L7_3 = L4_3.y
    L8_3 = L5_3.y
    L9_3 = L4_3.y
    L8_3 = L8_3 - L9_3
    L8_3 = L8_3 / 2
    L7_3 = L7_3 + L8_3
    L6_3.y = L7_3
    L7_3 = A1_3.points
    L8_3 = A1_3.points
    L8_3 = #L8_3
    L7_3 = L7_3[L8_3]
    L8_3 = {}
    L9_3 = L4_3.x
    L10_3 = L6_3.x
    L9_3 = L9_3 - L10_3
    L8_3.x = L9_3
    L9_3 = L4_3.y
    L10_3 = L6_3.y
    L9_3 = L9_3 - L10_3
    L8_3.y = L9_3
    L8_3.z = 0
    L9_3 = {}
    L10_3 = L7_3.x
    L11_3 = L6_3.x
    L10_3 = L10_3 - L11_3
    L9_3.x = L10_3
    L10_3 = L7_3.y
    L11_3 = L6_3.y
    L10_3 = L10_3 - L11_3
    L9_3.y = L10_3
    L9_3.z = 0
    L10_3 = L4_1
    L11_3 = L8_3
    L10_3(L11_3)
    L10_3 = L4_1
    L11_3 = L9_3
    L10_3(L11_3)
    L10_3 = L2_1
    L11_3 = L8_3
    L12_3 = L9_3
    L10_3 = L10_3(L11_3, L12_3)
    L11_3 = 0
    L12_3 = HANDSTAND_MIN_ANGLE
    if L10_3 < L12_3 then
      L13_3 = A0_3
      L12_3 = A0_3.log
      L14_3 = string
      L14_3 = L14_3.format
      L15_3 = "no handstand detected: angle too small, angle=%1.2f"
      L16_3 = L10_1
      L17_3 = L10_3
      L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L16_3(L17_3)
      L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
      L3_3 = false
    end
    L13_3 = A0_3
    L12_3 = A0_3.pointDistance
    L14_3 = L4_3
    L15_3 = L6_3
    L12_3 = L12_3(L13_3, L14_3, L15_3)
    L13_3 = HANDSTAND_RADIUS_TOLERANCE
    L13_3 = 1 - L13_3
    L13_3 = L13_3 * L12_3
    L14_3 = HANDSTAND_RADIUS_TOLERANCE
    L14_3 = 1 + L14_3
    L14_3 = L14_3 * L12_3
    if L3_3 then
      L15_3 = ipairs
      L16_3 = A1_3.points
      L15_3, L16_3, L17_3 = L15_3(L16_3)
      for L18_3, L19_3 in L15_3, L16_3, L17_3 do
        L21_3 = A0_3
        L20_3 = A0_3.pointDistance
        L22_3 = L19_3
        L23_3 = L6_3
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        if L13_3 > L20_3 or L14_3 < L20_3 then
          L22_3 = A0_3
          L21_3 = A0_3.log
          L23_3 = string
          L23_3 = L23_3.format
          L24_3 = "no handstand detected: invalid radius for head finger, radius=%1.2f"
          L25_3 = L20_3
          L23_3, L24_3, L25_3, L26_3 = L23_3(L24_3, L25_3)
          L21_3(L22_3, L23_3, L24_3, L25_3, L26_3)
          L3_3 = false
          A0_3.isDisableHandstandDetection = true
          break
        elseif L11_3 == 0 then
          L22_3 = A0_3
          L21_3 = A0_3.pointDistance
          L23_3 = L4_3
          L24_3 = L19_3
          L21_3 = L21_3(L22_3, L23_3, L24_3)
          if 30 < L21_3 then
            L22_3 = {}
            L23_3 = L4_3.x
            L24_3 = L6_3.x
            L23_3 = L23_3 - L24_3
            L22_3.x = L23_3
            L23_3 = L4_3.y
            L24_3 = L6_3.y
            L23_3 = L23_3 - L24_3
            L22_3.y = L23_3
            L22_3.z = 0
            L23_3 = {}
            L24_3 = L19_3.x
            L25_3 = L6_3.x
            L24_3 = L24_3 - L25_3
            L23_3.x = L24_3
            L24_3 = L19_3.y
            L25_3 = L6_3.y
            L24_3 = L24_3 - L25_3
            L23_3.y = L24_3
            L23_3.z = 0
            L24_3 = L4_1
            L25_3 = L22_3
            L24_3(L25_3)
            L24_3 = L4_1
            L25_3 = L23_3
            L24_3(L25_3)
            L24_3 = L2_1
            L25_3 = L22_3
            L26_3 = L23_3
            L24_3 = L24_3(L25_3, L26_3)
            L11_3 = L24_3
            L24_3 = L6_1
            L25_3 = L22_3
            L26_3 = L23_3
            L24_3 = L24_3(L25_3, L26_3)
            L25_3 = L24_3.z
            if 0 < L25_3 then
              L11_3 = -L11_3
            end
          end
        end
      end
    end
    if L3_3 then
      L15_3 = ipairs
      L16_3 = A2_3.points
      L15_3, L16_3, L17_3 = L15_3(L16_3)
      for L18_3, L19_3 in L15_3, L16_3, L17_3 do
        L21_3 = A0_3
        L20_3 = A0_3.pointDistance
        L22_3 = L19_3
        L23_3 = L6_3
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = -L13_3
        if L20_3 < L21_3 or L14_3 < L20_3 then
          L22_3 = A0_3
          L21_3 = A0_3.log
          L23_3 = string
          L23_3 = L23_3.format
          L24_3 = "no handstand detected: invalid radius for feet finger, radius=%1.2f"
          L25_3 = L20_3
          L23_3, L24_3, L25_3, L26_3 = L23_3(L24_3, L25_3)
          L21_3(L22_3, L23_3, L24_3, L25_3, L26_3)
          L3_3 = false
          A0_3.isDisableHandstandDetection = true
          break
        end
      end
    end
    if L3_3 then
      L15_3 = A0_2
      L15_3 = L15_3.isPlayReactionAnim
      if not L15_3 then
        L16_3 = A0_3
        L15_3 = A0_3.log
        L17_3 = "handstand detected"
        L15_3(L16_3, L17_3)
        L15_3 = A0_3.animegg
        L16_3 = L15_3
        L15_3 = L15_3.stopAndPlayHandstand
        L17_3 = L11_3 < 0
        L15_3(L16_3, L17_3)
        L15_3 = L30_1
        A0_3.state = L15_3
      end
    end
  end
  
  L3_2.detectHandstand = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L2_3 = A0_3.dance
    L2_3 = L2_3.lastTapTime
    if L2_3 == 0 then
      L2_3 = A0_3.dance
      L2_3.lastTapTime = L1_3
      L2_3 = A0_3.dance
      L2_3.lastTapTimeDelta = 0
      L2_3 = A0_3.dance
      L2_3.tapCount = 1
    else
      L2_3 = A0_3.dance
      L2_3 = L2_3.tapCount
      if L2_3 == 1 then
        L2_3 = A0_3.dance
        L3_3 = A0_3.dance
        L3_3 = L3_3.lastTapTime
        L3_3 = L1_3 - L3_3
        L2_3.lastTapTimeDelta = L3_3
        L2_3 = A0_3.dance
        L2_3.lastTapTime = L1_3
        L2_3 = A0_3.dance
        L2_3.tapCount = 2
      else
        L2_3 = A0_3.dance
        L2_3 = L2_3.lastTapTime
        L2_3 = L1_3 - L2_3
        L3_3 = L8_1
        L4_3 = A0_3.dance
        L4_3 = L4_3.lastTapTimeDelta
        L4_3 = L2_3 - L4_3
        L3_3 = L3_3(L4_3)
        L4_3 = DANCE_MAX_TAP_TIME_DELTA_DIFF
        if L3_3 < L4_3 then
          L3_3 = A0_3.dance
          L4_3 = A0_3.dance
          L4_3 = L4_3.tapCount
          L4_3 = L4_3 + 1
          L3_3.tapCount = L4_3
          L3_3 = A0_3.dance
          L3_3 = L3_3.tapCount
          L4_3 = DANCE_START_TAP_COUNT
          if L3_3 >= L4_3 then
            L3_3 = QUICK_DANCE_MIN_TAP_TIME_DELTA
            if L2_3 > L3_3 then
              L3_3 = QUICK_DANCE_MAX_TAP_TIME_DELTA
              if L2_3 < L3_3 then
                L3_3 = A0_3.animegg
                L4_3 = L3_3
                L3_3 = L3_3.stopAndPlayDanceFast
                L3_3(L4_3)
            end
            else
              L3_3 = SLOW_DANCE_MIN_TAP_TIME_DELTA
              if L2_3 > L3_3 then
                L3_3 = SLOW_DANCE_MAX_TAP_TIME_DELTA
                if L2_3 < L3_3 then
                  L3_3 = A0_3.animegg
                  L4_3 = L3_3
                  L3_3 = L3_3.stopAndPlayDanceSlow
                  L3_3(L4_3)
              end
              else
                L3_3 = A0_3.dance
                L3_3.lastTapTime = 0
              end
            end
          else
            L3_3 = A0_3.dance
            L3_3.lastTapTime = L1_3
            L3_3 = A0_3.dance
            L3_3.lastTapTimeDelta = L2_3
          end
        else
          L3_3 = A0_3.dance
          L3_3.lastTapTime = 0
        end
      end
    end
    L2_3 = L12_1
    A0_3.state = L2_3
  end
  
  L3_2.detectDanceTapping = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    L3_3 = A0_3
    L2_3 = A0_3.log
    L4_3 = "try to detect circle"
    L2_3(L3_3, L4_3)
    L2_3 = true
    L3_3 = A1_3.points
    L3_3 = L3_3[1]
    L4_3 = L3_3
    L5_3 = L3_3
    L6_3 = L3_3
    L7_3 = L3_3
    L8_3 = ipairs
    L9_3 = A1_3.points
    L8_3, L9_3, L10_3 = L8_3(L9_3)
    for L11_3, L12_3 in L8_3, L9_3, L10_3 do
      L13_3 = L12_3.x
      L14_3 = L4_3.x
      if L13_3 < L14_3 then
        L4_3 = L12_3
      end
      L13_3 = L12_3.x
      L14_3 = L6_3.x
      if L13_3 > L14_3 then
        L6_3 = L12_3
      end
      L13_3 = L12_3.y
      L14_3 = L5_3.y
      if L13_3 < L14_3 then
        L5_3 = L12_3
      end
      L13_3 = L12_3.y
      L14_3 = L7_3.y
      if L13_3 > L14_3 then
        L7_3 = L12_3
      end
    end
    L8_3 = {}
    L9_3 = L4_3.x
    L10_3 = L6_3.x
    L11_3 = L4_3.x
    L10_3 = L10_3 - L11_3
    L10_3 = L10_3 / 2
    L9_3 = L9_3 + L10_3
    L8_3.x = L9_3
    L9_3 = L5_3.y
    L10_3 = L7_3.y
    L11_3 = L5_3.y
    L10_3 = L10_3 - L11_3
    L10_3 = L10_3 / 2
    L9_3 = L9_3 + L10_3
    L8_3.y = L9_3
    L10_3 = A0_3
    L9_3 = A0_3.pointDistance
    L11_3 = L3_3
    L12_3 = L8_3
    L9_3 = L9_3(L10_3, L11_3, L12_3)
    L10_3 = CIRCLE_RADIUS_TOLERANCE
    L10_3 = 1 - L10_3
    L10_3 = L9_3 * L10_3
    L11_3 = CIRCLE_RADIUS_TOLERANCE
    L11_3 = 1 + L11_3
    L11_3 = L9_3 * L11_3
    L13_3 = A0_3
    L12_3 = A0_3.log
    L14_3 = "referenceRadius="
    L15_3 = tostring
    L16_3 = L9_3
    L15_3 = L15_3(L16_3)
    L14_3 = L14_3 .. L15_3
    L12_3(L13_3, L14_3)
    L12_3 = CIRCLE_MIN_RADIUS
    if L9_3 < L12_3 then
      L13_3 = A0_3
      L12_3 = A0_3.log
      L14_3 = "referenceRadius smaller than minRadius"
      L12_3(L13_3, L14_3)
      L12_3 = false
      return L12_3
    end
    L12_3 = 0
    L13_3 = 0
    L14_3 = false
    L15_3 = 0
    L16_3 = L11_1
    L16_3 = 2 * L16_3
    L17_3 = L9_1
    L18_3 = 30
    L17_3 = L17_3(L18_3)
    L18_3 = 2
    L19_3 = A1_3.points
    L19_3 = #L19_3
    L20_3 = 1
    for L21_3 = L18_3, L19_3, L20_3 do
      L22_3 = A1_3.points
      L22_3 = L22_3[L21_3]
      L24_3 = A0_3
      L23_3 = A0_3.pointDistance
      L25_3 = L22_3
      L26_3 = L8_3
      L23_3 = L23_3(L24_3, L25_3, L26_3)
      if L10_3 > L23_3 or L11_3 < L23_3 then
        L25_3 = A0_3
        L24_3 = A0_3.log
        L26_3 = "abort detect circle, bad radius="
        L27_3 = tostring
        L28_3 = L23_3
        L27_3 = L27_3(L28_3)
        L26_3 = L26_3 .. L27_3
        L24_3(L25_3, L26_3)
        L2_3 = false
        break
      end
      L24_3 = {}
      L25_3 = L3_3.x
      L26_3 = L8_3.x
      L25_3 = L25_3 - L26_3
      L24_3.x = L25_3
      L25_3 = L3_3.y
      L26_3 = L8_3.y
      L25_3 = L25_3 - L26_3
      L25_3 = -L25_3
      L24_3.y = L25_3
      L24_3.z = 0
      L25_3 = {}
      L26_3 = L22_3.x
      L27_3 = L8_3.x
      L26_3 = L26_3 - L27_3
      L25_3.x = L26_3
      L26_3 = L22_3.y
      L27_3 = L8_3.y
      L26_3 = L26_3 - L27_3
      L26_3 = -L26_3
      L25_3.y = L26_3
      L25_3.z = 0
      L26_3 = L3_1
      L27_3 = L24_3
      L28_3 = L25_3
      L26_3 = L26_3(L27_3, L28_3)
      L26_3 = -L26_3
      L27_3 = L26_3 % L16_3
      if L12_3 == 0 then
        L12_3 = L27_3
      end
      L28_3 = L27_3 - L12_3
      L12_3 = L27_3
      L15_3 = L15_3 + L28_3
      L29_3 = L8_1
      L30_3 = L15_3
      L29_3 = L29_3(L30_3)
      L30_3 = CIRCLE_MIN_ANGLE
      if L29_3 > L30_3 then
        L14_3 = true
      end
      if L13_3 == 0 then
        L29_3 = L8_1
        L30_3 = L26_3
        L29_3 = L29_3(L30_3)
        if L17_3 < L29_3 then
          L13_3 = L26_3
        end
      end
    end
    if L2_3 and not L14_3 then
      L19_3 = A0_3
      L18_3 = A0_3.log
      L20_3 = string
      L20_3 = L20_3.format
      L21_3 = "abort detect circle, angle too small=%1.2f"
      L22_3 = L10_1
      L23_3 = L15_3
      L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L22_3(L23_3)
      L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
      L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
      L2_3 = false
    end
    if L2_3 then
      L19_3 = A0_3
      L18_3 = A0_3.log
      L20_3 = "circle detected"
      L18_3(L19_3, L20_3)
      L18_3 = A0_3.animegg
      L19_3 = L18_3
      L18_3 = L18_3.stopAndPlayCircle
      L20_3 = L13_3 < 0
      L18_3(L19_3, L20_3)
      L18_3 = L15_1
      A0_3.state = L18_3
    end
    return L2_3
  end
  
  L3_2.detectCircle = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = A1_3.points
    L2_3 = L2_3[1]
    L3_3 = A0_3.animegg
    L4_3 = L3_3
    L3_3 = L3_3.containsPointAt
    L5_3 = L2_3.x
    L6_3 = L2_3.y
    L7_3 = "layer_tshirt"
    L8_3 = STROKE_ADD_BORDER
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    if not L3_3 then
      L3_3 = A0_3.animegg
      L4_3 = L3_3
      L3_3 = L3_3.containsPointAt
      L5_3 = L2_3.x
      L6_3 = L2_3.y
      L7_3 = "layer_head"
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      if not L3_3 then
        return
      end
    end
    L3_3 = 0
    L4_3 = ipairs
    L5_3 = A1_3.points
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L9_3 = A0_3.animegg
      L10_3 = L9_3
      L9_3 = L9_3.containsPointAt
      L11_3 = L8_3.x
      L12_3 = L8_3.y
      L13_3 = "layer_tshirt"
      L14_3 = STROKE_ADD_BORDER
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
      if L9_3 then
        L3_3 = L3_3 + 1
      else
        L9_3 = A0_3.animegg
        L10_3 = L9_3
        L9_3 = L9_3.containsPointAt
        L11_3 = L8_3.x
        L12_3 = L8_3.y
        L13_3 = "layer_head"
        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
        if L9_3 then
          L3_3 = L3_3 + 1
        end
      end
    end
    L4_3 = A1_3.points
    L4_3 = #L4_3
    L4_3 = L3_3 / L4_3
    L5_3 = MIN_RATIO_POINTS_ON_BELLY_FOR_STROKE
    if L4_3 >= L5_3 then
      L5_3 = true
      return L5_3
    end
    L5_3 = false
    return L5_3
  end
  
  L3_2.detectStrokeBelly = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3)
    local L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L9_3 = A1_3.points
    L9_3 = #L9_3
    if A4_3 > L9_3 then
      L9_3 = false
      L10_3 = false
      return L9_3, L10_3
    end
    L9_3 = 4
    if not A4_3 then
      A4_3 = 3
    end
    if not A5_3 then
      A5_3 = 10
    end
    if not A3_3 then
      A3_3 = 45
    end
    if not A6_3 then
      A6_3 = 20
    end
    if not A7_3 then
      L10_3 = A0_3.orientationController
      A7_3 = L10_3.current
    end
    L10_3 = L9_1
    L11_3 = A2_3
    L10_3 = L10_3(L11_3)
    A2_3 = L10_3
    L10_3 = L9_1
    L11_3 = A3_3
    L10_3 = L10_3(L11_3)
    A3_3 = L10_3
    L10_3 = true
    L11_3 = A1_3.points
    L11_3 = L11_3[1]
    L12_3 = L11_3
    L13_3 = 0
    L14_3 = false
    L15_3 = 2
    L16_3 = A1_3.points
    L16_3 = #L16_3
    L17_3 = 1
    for L18_3 = L15_3, L16_3, L17_3 do
      if L18_3 > A5_3 then
        break
      end
      L19_3 = A1_3.points
      L19_3 = L19_3[L18_3]
      if not L14_3 then
        L20_3 = {}
        L21_3 = L19_3.x
        L22_3 = L11_3.x
        L21_3 = L21_3 - L22_3
        L20_3.x = L21_3
        L21_3 = L19_3.y
        L22_3 = L11_3.y
        L21_3 = L21_3 - L22_3
        L21_3 = -L21_3
        L20_3.y = L21_3
        L20_3.z = 0
        L21_3 = setmetatable
        L22_3 = L20_3
        L23_3 = L1_1
        L21_3(L22_3, L23_3)
        L21_3 = L5_1
        L22_3 = L20_3
        L21_3 = L21_3(L22_3)
        if A6_3 <= L21_3 then
          L13_3 = L13_3 + 1
          L14_3 = true
        end
      else
        L20_3 = {}
        L21_3 = L19_3.x
        L22_3 = L12_3.x
        L21_3 = L21_3 - L22_3
        L20_3.x = L21_3
        L21_3 = L19_3.y
        L22_3 = L12_3.y
        L21_3 = L21_3 - L22_3
        L21_3 = -L21_3
        L20_3.y = L21_3
        L20_3.z = 0
        L21_3 = setmetatable
        L22_3 = L20_3
        L23_3 = L1_1
        L21_3(L22_3, L23_3)
        if L18_3 > L9_3 then
          L21_3 = A1_3.points
          L22_3 = L18_3 - L9_3
          L12_3 = L21_3[L22_3]
        end
        L13_3 = L13_3 + 1
        L21_3 = L4_1
        L22_3 = L20_3
        L21_3(L22_3)
        L21_3 = L2_1
        L22_3 = L20_3
        L23_3 = A7_3
        L21_3 = L21_3(L22_3, L23_3)
        L22_3 = L8_1
        L23_3 = L21_3 - A2_3
        L22_3 = L22_3(L23_3)
        if A3_3 < L22_3 then
          L10_3 = false
          break
        end
      end
    end
    if L10_3 and A4_3 > L13_3 then
      L15_3 = false
      L16_3 = false
      return L15_3, L16_3
    end
    L15_3 = L10_3
    L16_3 = true
    return L15_3, L16_3
  end
  
  L3_2.checkAngleToOrientation = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = 0
    L3_3 = A1_3.points
    L3_3 = L3_3[1]
    L4_3 = ipairs
    L5_3 = A1_3.points
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L10_3 = A0_3
      L9_3 = A0_3.pointDistance
      L11_3 = L3_3
      L12_3 = L8_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L2_3 = L2_3 + L9_3
      L3_3 = L8_3
    end
    return L2_3
  end
  
  L3_2.calcDistance = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = math
    L3_3 = L3_3.abs
    L4_3 = A1_3.x
    L5_3 = A2_3.x
    L4_3 = L4_3 - L5_3
    L3_3 = L3_3(L4_3)
    L4_3 = math
    L4_3 = L4_3.abs
    L5_3 = A1_3.y
    L6_3 = A2_3.y
    L5_3 = L5_3 - L6_3
    L4_3 = L4_3(L5_3)
    L5_3 = math
    L5_3 = L5_3.sqrt
    L6_3 = L3_3 * L3_3
    L7_3 = L4_3 * L4_3
    L6_3 = L6_3 + L7_3
    return L5_3(L6_3)
  end
  
  L3_2.pointDistance = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.triggerFartTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.triggerFartTimer
      L1_3(L2_3)
      A0_3.triggerFartTimer = nil
    end
    L1_3 = A0_3.stopStrokeBellyDelayTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.stopStrokeBellyDelayTimer
      L1_3(L2_3)
      A0_3.stopStrokeBellyDelayTimer = nil
    end
    A0_3.animegg = nil
    A0_3.background = nil
    A0_3.orientationController = nil
  end
  
  L3_2.destroy = L4_2
  
  function L4_2(A0_3, A1_3)
  end
  
  L3_2.log = L4_2
  return L3_2
end

newTouchGestureDetector = L33_1
