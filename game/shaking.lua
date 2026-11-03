local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "vectmath"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.vectLen
L2_1 = 1.3
L3_1 = 0.2
L4_1 = 1500
L5_1 = 3700
L6_1 = 700

function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.animegg = A0_2
  L1_2.startShakeTime = 0
  L1_2.lastShakeTime = 0
  L1_2.enabled = true

  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = A0_3.enabled
    if not L2_3 then
      L2_3 = A0_3.animegg
      L2_3 = L2_3.isShaking
      if not L2_3 then
        A0_3.startShakeTime = 0
        return
      end
    end
    L2_3 = A0_3.animegg
    L2_3 = L2_3.isPlayReactionAnim
    local __lbl_34 = false
    if L2_3 then
      L2_3 = A0_3.animegg
      L2_3 = L2_3.isShaking
      if not L2_3 then
        L2_3 = A0_3.animegg
        L2_3 = L2_3.isEating
        if not L2_3 then
          L2_3 = A0_3.animegg
          L2_3 = L2_3.isSleeping
          if not L2_3 then
            __lbl_34 = true
          end
        end
      end
    end
    local __lbl_37 = false
    if not __lbl_34 then
      L2_3 = A0_3.animegg
      L2_3 = L2_3.isFallOnScreen
      if not L2_3 then
        L2_3 = A0_3.animegg
        L2_3 = L2_3.isHangFromScreen
        if not L2_3 then
          __lbl_37 = true
        end
      end
    end
    if not __lbl_37 then
      A0_3.startShakeTime = 0
      A0_3.lastShakeTime = 0
      do return end
    end
    L2_3 = system
    L2_3 = L2_3.getTimer
    L2_3 = L2_3()
    L3_3 = {}
    L4_3 = A1_3.xInstant
    L3_3.x = L4_3
    L4_3 = A1_3.yInstant
    L3_3.y = L4_3
    L4_3 = A1_3.zInstant
    L3_3.z = L4_3
    L4_3 = {}
    L5_3 = A1_3.xGravity
    L4_3.x = L5_3
    L5_3 = A1_3.yGravity
    L4_3.y = L5_3
    L5_3 = A1_3.zGravity
    L4_3.z = L5_3
    L5_3 = L1_1
    L6_3 = L3_3
    L5_3 = L5_3(L6_3)
    L6_3 = L1_1
    L7_3 = L4_3
    L6_3 = L6_3(L7_3)
    L7_3 = L2_1
    if L5_3 > L7_3 then
      A0_3.lastShakeTime = L2_3
      L7_3 = A0_3.startShakeTime
      if L7_3 == 0 then
        A0_3.startShakeTime = L2_3
        L8_3 = A0_3
        L7_3 = A0_3.log
        L9_3 = string
        L9_3 = L9_3.format
        L10_3 = "start shake detection, a=%1.2f"
        L11_3 = L5_3
        L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3, L11_3)
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      else
        L7_3 = A0_3.startShakeTime
        L7_3 = L2_3 - L7_3
        L8_3 = L4_1
        if L7_3 > L8_3 then
          L7_3 = A0_3.animegg
          L7_3 = L7_3.isShaking
          if not L7_3 then
            L8_3 = A0_3
            L7_3 = A0_3.log
            L9_3 = "start shaking"
            L7_3(L8_3, L9_3)
            L7_3 = A0_3.animegg
            L8_3 = L7_3
            L7_3 = L7_3.stopAndPlayShaking
            L7_3(L8_3)
          end
        end
      end
    else
      L7_3 = A0_3.startShakeTime
      if L7_3 == 0 then
      else
        L7_3 = L3_1
        if L5_3 < L7_3 then
          L7_3 = A0_3.lastShakeTime
          L7_3 = L2_3 - L7_3
          L8_3 = L6_1
          if L7_3 < L8_3 then
            return
          end
          L7_3 = A0_3.startShakeTime
          L7_3 = L2_3 - L7_3
          L8_3 = A0_3.animegg
          L8_3 = L8_3.isShaking
          local __and_33 = false
          if L8_3 then
            L8_3 = L4_1
            if L7_3 > L8_3 then
              __and_33 = true
              L8_3 = L5_1
              if L7_3 < L8_3 then
                L9_3 = A0_3
                L8_3 = A0_3.log
                L10_3 = string
                L10_3 = L10_3.format
                L11_3 = "short shake detected, t=%dms"
                L12_3 = L7_3
                L10_3, L11_3, L12_3 = L10_3(L11_3, L12_3)
                L8_3(L9_3, L10_3, L11_3, L12_3)
                A0_3.startShakeTime = 0
                L8_3 = A0_3.animegg
                L9_3 = L8_3
                L8_3 = L8_3.stopAndPlayNausea
                L8_3(L9_3)
              end
            end
          end
          if not __and_33 then
            L8_3 = A0_3.animegg
            L8_3 = L8_3.isShaking
            local __and_34 = false
            if L8_3 then
              L8_3 = L5_1
              if L7_3 >= L8_3 then
                __and_34 = true
                L9_3 = A0_3
                L8_3 = A0_3.log
                L10_3 = string
                L10_3 = L10_3.format
                L11_3 = "long shake detected, t=%dms"
                L12_3 = L7_3
                L10_3, L11_3, L12_3 = L10_3(L11_3, L12_3)
                L8_3(L9_3, L10_3, L11_3, L12_3)
                A0_3.startShakeTime = 0
                L8_3 = A0_3.animegg
                L9_3 = L8_3
                L8_3 = L8_3.stopAndPlayDizzy
                L8_3(L9_3)
              end
            end
            if not __and_34 then
              L9_3 = A0_3
              L8_3 = A0_3.log
              L10_3 = string
              L10_3 = L10_3.format
              L11_3 = "shake time too short, t=%dms"
              L12_3 = L7_3
              L10_3, L11_3, L12_3 = L10_3(L11_3, L12_3)
              L8_3(L9_3, L10_3, L11_3, L12_3)
              A0_3.startShakeTime = 0
            end
          end
        end
      end
    end
  end

  L1_2.accelerometer = L2_2

  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = print
    L3_3 = "[shake detector] "
    L4_3 = A1_3
    L3_3 = L3_3 .. L4_3
    L2_3(L3_3)
  end

  L1_2.log = L2_2
  return L1_2
end

newShakeDetector = L7_1
