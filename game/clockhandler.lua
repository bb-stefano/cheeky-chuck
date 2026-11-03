local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = 5000
L1_1 = 60000
L2_1 = 55
L3_1 = 59
L4_1 = 0
L5_1 = 12
L6_1 = 11
L7_1 = 0
L8_1 = 23
L9_1 = 6
L10_1 = 100
L11_1 = 400
L12_1 = 150

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L2_2.group = L3_2
  L3_2 = SCREEN_CLOCK
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L2_2.group
  L3_2(L4_2, L5_2)
  L2_2.animegg = A0_2
  L2_2.configuration = A1_2
  L3_2 = {}
  L2_2.clockImages = L3_2
  L2_2.currentClockImg = nil
  L2_2.currentTween = nil
  L3_2 = L11_1
  L2_2.flashOutDelay = L3_2
  L3_2 = L12_1
  L2_2.flashInOutTime = L3_2
  L2_2.tapStartTime = 0
  L2_2.tapStartX = 0
  L2_2.tapStartY = 0
  compat.setProp(L2_2, "rotation", 0)
  L2_2.checkClockTimer = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil

  function L6_2(A0_3)
    local L1_3
  end

  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L2_2
    L0_3 = L0_3.clockImages
    L0_3 = #L0_3
    if 0 < L0_3 then
      return
    end
    L0_3 = L6_2
    L1_3 = "load images"
    L0_3(L1_3)
    L0_3 = 1
    L1_3 = L9_1
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L2_2
      L4_3 = L4_3.clockImages
      L5_3 = display
      L5_3 = L5_3.newImage
      L6_3 = L2_2
      L6_3 = L6_3.group
      L7_3 = UI_PIC_DIR
      L8_3 = string
      L8_3 = L8_3.format
      L9_3 = "clock%d.png"
      L10_3 = L3_3
      L8_3 = L8_3(L9_3, L10_3)
      L7_3 = L7_3 .. L8_3
      L5_3 = L5_3(L6_3, L7_3)
      L4_3[L3_3] = L5_3
      L4_3 = L2_2
      L4_3 = L4_3.clockImages
      L4_3 = L4_3[L3_3]
      L4_3.isVisible = false
    end
    L0_3 = L2_2
    L0_3 = L0_3.group
    L0_3.y = 30
    L0_3 = L2_2
    L0_3 = L0_3.group
    L0_3.x = 10
    L0_3 = L2_2
    L0_3 = L0_3.group
    L1_3 = WORLD_WIDTH
    L1_3 = L1_3 / 2
    L2_3 = L2_2
    L2_3 = L2_3.group
    L2_3 = L2_3.x
    L1_3 = L1_3 - L2_3
    compat.setXRef(L0_3, L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.group
    L1_3 = WORLD_HEIGHT
    L1_3 = L1_3 / 2
    L2_3 = L2_2
    L2_3 = L2_3.group
    L2_3 = L2_3.y
    L1_3 = L1_3 - L2_3
    compat.setYRef(L0_3, L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.rotation
    if L0_3 ~= 0 then
      L0_3 = L6_2
      L1_3 = "pre-rotate clock images"
      L0_3(L1_3)
      L0_3 = L2_2
      L0_3 = L0_3.group
      L1_3 = L0_3
      L0_3 = L0_3.rotate
      L2_3 = L2_2
      L2_3 = L2_3.rotation
      L0_3(L1_3, L2_3)
      L0_3 = L2_2
      compat.setProp(L0_3, "rotation", 0)
    end
  end

  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = os
    L0_3 = L0_3.date
    L1_3 = "*t"
    L0_3 = L0_3(L1_3)
    L1_3 = L6_2
    L2_3 = string
    L2_3 = L2_3.format
    L3_3 = "check time %02d:%02d:%02d"
    L4_3 = L0_3.hour
    L5_3 = L0_3.min
    L6_3 = L0_3.sec
    L2_3, L3_3, L4_3, L5_3, L6_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = L0_3.hour
    L2_3 = L6_1
    local __lbl_35 = false
    if L1_3 ~= L2_3 then
      L1_3 = L0_3.hour
      L2_3 = L8_1
      if L1_3 ~= L2_3 then
        __lbl_35 = true
      end
    end
    if not __lbl_35 then
      L1_3 = L0_3.min
      L2_3 = L2_1
      L2_3 = L2_3 - 1
    end
    if not __lbl_35 and (L1_3 >= L2_3) then
      L1_3 = L7_2
      L1_3()
      L1_3 = Runtime
      L2_3 = L1_3
      L1_3 = L1_3.addEventListener
      L3_3 = "enterFrame"
      L4_3 = L2_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L0_3.hour
      L2_3 = L5_1
      local __lbl_55 = false
      if L1_3 ~= L2_3 then
        L1_3 = L0_3.hour
        L2_3 = L7_1
        if L1_3 ~= L2_3 then
          __lbl_55 = true
        end
      end
      if not __lbl_55 then
        L1_3 = L0_3.min
        L2_3 = L4_1
      end
      if not __lbl_55 and (L1_3 == L2_3) then
        L1_3 = L7_2
        L1_3()
        L1_3 = Runtime
        L2_3 = L1_3
        L1_3 = L1_3.addEventListener
        L3_3 = "enterFrame"
        L4_3 = L2_2
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = L2_2
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = L1_1
        L4_3 = L8_2
        L5_3 = 1
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L1_3.checkClockTimer = L2_3
      end
    end
  end

  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L6_2
    L1_3 = "dispose images"
    L0_3(L1_3)
    L0_3 = L2_2
    L0_3 = L0_3.clockImages
    L0_3 = #L0_3
    L1_3 = 1
    L2_3 = -1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L2_2
      L4_3 = L4_3.clockImages
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = L2_2
        L4_3 = L4_3.clockImages
        L4_3 = L4_3[L3_3]
        L4_3.isVisible = false
        L4_3 = L2_2
        L4_3 = L4_3.clockImages
        L4_3 = L4_3[L3_3]
        L5_3 = L4_3
        L4_3 = L4_3.removeSelf
        L4_3(L5_3)
        L4_3 = L2_2
        L4_3 = L4_3.clockImages
        L4_3[L3_3] = nil
      end
    end
    L0_3 = L2_2
    L1_3 = {}
    L0_3.clockImages = L1_3
    L0_3 = L2_2
    L0_3.currentClockImg = nil
  end

  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L2_3 = A0_3.phase
    if L2_3 == "began" then
      L2_3 = L2_2
      L2_3.tapStartTime = L1_3
    else
      L2_3 = A0_3.phase
      if L2_3 == "ended" then
        L2_3 = L2_2
        L2_3 = L2_3.tapStartTime
        L2_3 = L1_3 - L2_3
        L3_3 = L10_1
        if L2_3 <= L3_3 then
          L2_3 = L3_2
          L2_3()
          L2_3 = os
          L2_3 = L2_3.date
          L3_3 = "*t"
          L2_3 = L2_3(L3_3)
          L3_3 = L2_3.hour
          L4_3 = L5_1
          if L3_3 == L4_3 then
            L3_3 = L2_2
            L3_3 = L3_3.animegg
            L4_3 = L3_3
            L3_3 = L3_3.stopAndPlayEat
            L3_3(L4_3)
            L3_3 = L2_2
            L3_3 = L3_3.animegg
            L3_3.isEating = true
          else
            L3_3 = L2_3.hour
            L4_3 = L7_1
            if L3_3 == L4_3 then
              L3_3 = L2_2
              L3_3 = L3_3.animegg
              L4_3 = L3_3
              L3_3 = L3_3.stopAndPlaySleepNight
              L3_3(L4_3)
              L3_3 = L2_2
              L3_3 = L3_3.animegg
              L3_3.isSleeping = true
            else
              L3_3 = L6_2
              L4_3 = string
              L4_3 = L4_3.format
              L5_3 = "illegal time to start clock based event, time=%02d:%02d:%02d"
              L6_3 = L2_3.hour
              L7_3 = L2_3.min
              L8_3 = L2_3.sec
              L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            end
          end
        else
          L2_3 = L2_2
          L2_3.tapStartTime = 0
        end
      end
    end
  end

  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L2_2
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L2_2
    L2_3 = L2_3.currentClockImg
    L3_3 = {}
    L4_3 = L2_2
    L4_3 = L4_3.flashInOutTime
    L3_3.time = L4_3
    L4_3 = L2_2
    L4_3 = L4_3.flashOutDelay
    L3_3.delay = L4_3
    L3_3.alpha = 0
    L4_3 = L4_2
    L3_3.onComplete = L4_3
    L1_3 = L1_3(L2_3, L3_3)
    L0_3.currentTween = L1_3
  end

  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L2_2
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L2_2
    L2_3 = L2_3.currentClockImg
    L3_3 = {}
    L4_3 = L2_2
    L4_3 = L4_3.flashInOutTime
    L3_3.time = L4_3
    L3_3.delay = 0
    L3_3.alpha = 1
    L4_3 = L5_2
    L3_3.onComplete = L4_3
    L1_3 = L1_3(L2_3, L3_3)
    L0_3.currentTween = L1_3
  end

  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "enterFrame"
    L3_3 = L2_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L0_3 = L0_3.currentTween
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L2_2
      L1_3 = L1_3.currentTween
      L0_3(L1_3)
      L0_3 = L2_2
      L0_3.currentTween = nil
    end
    L0_3 = L2_2
    L0_3 = L0_3.currentClockImg
    if L0_3 then
      L0_3 = L2_2
      L0_3 = L0_3.currentClockImg
      L0_3.isVisible = false
    end
    L0_3 = L9_2
    L0_3()
    L0_3 = L2_2
    L0_3.currentClockImg = nil
    L0_3 = L2_2
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = L1_1
    L3_3 = L8_2
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L0_3.checkClockTimer = L1_3
  end

  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = os
    L1_3 = L1_3.date
    L2_3 = "*t"
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3.hour
    L3_3 = L6_1
    local __lbl_93 = false
    if L2_3 ~= L3_3 then
      L2_3 = L1_3.hour
      L3_3 = L8_1
      if L2_3 ~= L3_3 then
        __lbl_93 = true
      end
    end
    if not __lbl_93 then
      L2_3 = L1_3.min
      L3_3 = L2_1
      local __and_13 = false
      if L2_3 >= L3_3 then
        L2_3 = L1_3.min
        L3_3 = L3_1
        if L2_3 <= L3_3 then
          __and_13 = true
          L2_3 = L1_3.min
          L3_3 = L2_1
          L2_3 = L2_3 - L3_3
          L2_3 = L2_3 + 1
          L3_3 = A0_3.clockImages
          L3_3 = L3_3[L2_3]
          A0_3.currentClockImg = L3_3
          L3_3 = A0_3.currentClockImg
          L3_3 = L3_3.isVisible
          if not L3_3 then
            L3_3 = A0_3.currentTween
            if L3_3 then
              L3_3 = transition
              L3_3 = L3_3.cancel
              L4_3 = A0_3.currentTween
              L3_3(L4_3)
              A0_3.currentTween = nil
            end
            if 1 < L2_3 then
              L3_3 = A0_3.clockImages
              L4_3 = L2_3 - 1
              L3_3 = L3_3[L4_3]
              L3_3.isVisible = false
            end
            L3_3 = A0_3.currentClockImg
            L3_3.isVisible = true
            L3_3 = L6_2
            L4_3 = string
            L4_3 = L4_3.format
            L5_3 = "show clock at index %d"
            L6_3 = L2_3
            L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3, L6_3)
            L3_3(L4_3, L5_3, L6_3, L7_3)
            L3_3 = L9_1
            L3_3 = L3_3 - L2_3
            L3_3 = L3_3 + 1
            L4_3 = L11_1
            L3_3 = L3_3 * L4_3
            A0_3.flashOutDelay = L3_3
            L3_3 = L9_1
            L3_3 = L3_3 - L2_3
            L3_3 = L3_3 + 1
            L4_3 = L12_1
            L3_3 = L3_3 * L4_3
            A0_3.flashInOutDelay = L3_3
            L3_3 = A0_3.configuration
            L3_3 = L3_3.soundfx
            if L3_3 then
              L3_3 = L1_3.sec
              if L3_3 < 50 then
                L3_3 = audio
                L3_3 = L3_3.loadSound
                L4_3 = SOUND_DIR
                L5_3 = "clock_tic_tac.wav"
                L4_3 = L4_3 .. L5_3
                local L3_3 = L3_3(L4_3)
                L4_3 = audio
                L4_3 = L4_3.play
                L5_3 = L3_3
                L6_3 = {}
                L6_3.loops = 3

                function L7_3()
                  local L0_4, L1_4
                  L0_4 = audio
                  L0_4 = L0_4.dispose
                  L1_4 = L3_3
                  L0_4(L1_4)
                end

                L6_3.onComplete = L7_3
                L4_3(L5_3, L6_3)
              end
            end
            L3_3 = L5_2
            L3_3()
          end
        end
      end
    end
    if __lbl_93 or (not __and_13) then
      L2_3 = L1_3.hour
      L3_3 = L5_1
      local __lbl_167 = false
      if L2_3 ~= L3_3 then
        L2_3 = L1_3.hour
        L3_3 = L7_1
        if L2_3 ~= L3_3 then
          __lbl_167 = true
        end
      end
      if not __lbl_167 then
        L2_3 = L1_3.min
        L3_3 = L4_1
      end
      if not __lbl_167 and (L2_3 == L3_3) then
        L2_3 = A0_3.clockImages
        L3_3 = L9_1
        L2_3 = L2_3[L3_3]
        A0_3.currentClockImg = L2_3
        L2_3 = A0_3.currentClockImg
        L2_3 = L2_3.isVisible
        if not L2_3 then
          L2_3 = A0_3.currentTween
          if L2_3 then
            L2_3 = transition
            L2_3 = L2_3.cancel
            L3_3 = A0_3.currentTween
            L2_3(L3_3)
            A0_3.currentTween = nil
          end
          L2_3 = A0_3.clockImages
          L3_3 = L9_1
          L3_3 = L3_3 - 1
          L2_3 = L2_3[L3_3]
          L2_3.isVisible = false
          L2_3 = A0_3.currentClockImg
          L2_3.isVisible = true
          L2_3 = L6_2
          L3_3 = string
          L3_3 = L3_3.format
          L4_3 = "show clock at index %d"
          L5_3 = L9_1
          L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3, L5_3)
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
          L2_3 = A0_3.currentClockImg
          L3_3 = L2_3
          L2_3 = L2_3.addEventListener
          L4_3 = "touch"
          L5_3 = L10_2
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = L11_1
          A0_3.flashOutDelay = L2_3
          L2_3 = L12_1
          A0_3.flashInOutDelay = L2_3
          L2_3 = A0_3.configuration
          L2_3 = L2_3.soundfx
          if L2_3 then
            L2_3 = audio
            L2_3 = L2_3.loadSound
            L3_3 = SOUND_DIR
            L4_3 = "clock_cuckoo.wav"
            L3_3 = L3_3 .. L4_3
            local L2_3 = L2_3(L3_3)
            L3_3 = audio
            L3_3 = L3_3.play
            L4_3 = L2_3
            L5_3 = {}
            L5_3.loops = 3

            function L6_3()
              local L0_4, L1_4
              L0_4 = audio
              L0_4 = L0_4.dispose
              L1_4 = L2_3
              L0_4(L1_4)
            end

            L5_3.onComplete = L6_3
            L3_3(L4_3, L5_3)
          end
          L2_3 = L5_2
          L2_3()
        end
      else
        L2_3 = L1_3.hour
        L3_3 = L5_1
        local __lbl_182 = false
        if L2_3 ~= L3_3 then
          L2_3 = L1_3.hour
          L3_3 = L7_1
          if L2_3 ~= L3_3 then
            __lbl_182 = true
          end
        end
        if not __lbl_182 then
          L2_3 = L1_3.min
          L3_3 = L4_1
        end
        if not __lbl_182 and (L2_3 > L3_3) then
          L2_3 = L3_2
          L2_3()
        else
          L2_3 = Runtime
          L3_3 = L2_3
          L2_3 = L2_3.removeEventListener
          L4_3 = "enterFrame"
          L5_3 = A0_3
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = timer
          L2_3 = L2_3.performWithDelay
          L3_3 = L0_1
          L4_3 = L8_2
          L5_3 = 1
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          A0_3.checkClockTimer = L2_3
        end
      end
    end
  end

  L2_2.enterFrame = L11_2

  function L11_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.clockImages
    L2_3 = #L2_3
    if L2_3 == 0 then
      L2_3 = L6_2
      L3_3 = "store rotation"
      L2_3(L3_3)
      L2_3 = A0_3.rotation
      L2_3 = L2_3 + A1_3
      compat.setProp(A0_3, "rotation", L2_3)
    else
      L2_3 = L6_2
      L3_3 = "rotate clock images"
      L2_3(L3_3)
      L2_3 = A0_3.group
      L3_3 = L2_3
      L2_3 = L2_3.rotate
      L4_3 = A1_3
      L2_3(L3_3, L4_3)
    end
  end

  L2_2.rotate = L11_2

  function L11_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTween
    if L1_3 then
      L1_3 = transition
      L1_3 = L1_3.cancel
      L2_3 = A0_3.currentTween
      L1_3(L2_3)
      A0_3.currentTween = nil
    end
    L1_3 = A0_3.checkClockTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.checkClockTimer
      L1_3(L2_3)
    end
  end

  L2_2.suspend = L11_2

  function L11_2(A0_3)
    local L1_3
    L1_3 = L8_2
    L1_3()
  end

  L2_2.resume = L11_2

  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "enterFrame"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
    L2_3 = A0_3
    L1_3 = A0_3.suspend
    L1_3(L2_3)
    L1_3 = L9_2
    L1_3()
    L1_3 = A0_3.group
    L2_3 = L1_3
    L1_3 = L1_3.removeSelf
    L1_3(L2_3)
    A0_3.clockImages = nil
    A0_3.group = nil
    A0_3.animegg = nil
    A0_3.configuration = nil
  end

  L2_2.destroy = L11_2
  L11_2 = L8_2
  L11_2()
  return L2_2
end

newClockHandler = L13_1
