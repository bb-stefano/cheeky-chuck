local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.head = "head_1"
  L0_2.tshirt = "tshirt_1"
  L0_2.trousers = "trousers_1"
  L0_2.arm_l = "arm_l_1"
  L0_2.arm_r = "arm_r_1"
  L0_2.leg_l = "leg_l_1"
  L0_2.leg_r = "leg_r_1"
  L0_2.sleeves = "sleeves_1"
  L0_2.sleeve_l = "sleeve_l_1"
  L0_2.sleeve_r = "sleeve_r_1"
  L1_2 = DEFAULT_BACKGROUND
  L0_2.background = L1_2
  L0_2.soundfx = true
  L0_2.soundbg = true
  L0_2.soundbgvol = 0.4
  L0_2.highlight_screenshot_button = true
  L0_2.background_2_unlocked = false
  L0_2.background_3_unlocked = false
  L0_2.intro_shown = false
  L0_2.christmas_season_special_shown = false
  L0_2.cny_season_special_shown = false
  L0_2.valentine_season_special_shown = false
  L0_2.punch_banner_ad_last_show_date = 0
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = "palmatar.conf"
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.confFilePath = L1_2
  
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3[A2_3]
    if L3_3 then
      L3_3 = A1_3
      L4_3 = "_"
      L5_3 = A0_3[A2_3]
      L6_3 = ".data"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      return L3_3
    else
      L3_3 = A1_3
      L4_3 = "_"
      L5_3 = A2_3
      L6_3 = ".data"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      return L3_3
    end
  end
  
  L0_2.getConfiguration = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = io
    L1_3 = L1_3.open
    L2_3 = A0_3.confFilePath
    L3_3 = "r"
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L3_3 = L1_3
      L2_3 = L1_3.read
      L4_3 = "*line"
      L2_3 = L2_3(L3_3, L4_3)
      while L2_3 do
        L3_3 = string
        L3_3 = L3_3.find
        L4_3 = L2_3
        L5_3 = "([a-z0-9_]+)=([a-z0-9_.]+)"
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3)
        if L5_3 and L6_3 then
          if L5_3 ~= "soundfx" and L5_3 ~= "soundbg" and L5_3 ~= "highlight_screenshot_button" then
            L8_3 = L5_3
            L7_3 = L5_3.match
            L9_3 = "background_%d_unlocked"
            L7_3 = L7_3(L8_3, L9_3)
            if not L7_3 and L5_3 ~= "intro_shown" then
              L8_3 = L5_3
              L7_3 = L5_3.match
              L9_3 = "%a%a*_season_special_shown"
              L7_3 = L7_3(L8_3, L9_3)
              if not L7_3 then
                goto lbl_46
              end
            end
          end
          L7_3 = L6_3 == "true"
          A0_3[L5_3] = L7_3
          goto lbl_64
          ::lbl_46::
          if L5_3 == "soundbgvol" or L5_3 == "punch_banner_ad_last_show_date" then
            L7_3 = tonumber
            L8_3 = L6_3
            L7_3 = L7_3(L8_3)
            A0_3[L5_3] = L7_3
          else
            A0_3[L5_3] = L6_3
          end
        else
          L7_3 = print
          L8_3 = "error in configuration file: "
          L9_3 = L2_3
          L8_3 = L8_3 .. L9_3
          L7_3(L8_3)
          L7_3 = false
          return L7_3
        end
        ::lbl_64::
        L8_3 = L1_3
        L7_3 = L1_3.read
        L9_3 = "*line"
        L7_3 = L7_3(L8_3, L9_3)
        L2_3 = L7_3
      end
      L4_3 = L1_3
      L3_3 = L1_3.close
      L3_3(L4_3)
      L3_3 = true
      return L3_3
    else
      L2_3 = print
      L3_3 = "error while loading configuration"
      L2_3(L3_3)
      L2_3 = false
      return L2_3
    end
  end
  
  L0_2.loadConfiguration = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = io
    L1_3 = L1_3.open
    L2_3 = A0_3.confFilePath
    L3_3 = "w"
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      if L5_3 ~= "confFilePath" then
        L7_3 = type
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        if L7_3 == "string" then
          L8_3 = L1_3
          L7_3 = L1_3.write
          L9_3 = "configuration."
          L10_3 = L5_3
          L11_3 = "="
          L12_3 = L6_3
          L13_3 = "\n"
          L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3
          L7_3(L8_3, L9_3)
        else
          L7_3 = type
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          if L7_3 ~= "boolean" then
            L7_3 = type
            L8_3 = L6_3
            L7_3 = L7_3(L8_3)
            if L7_3 ~= "number" then
              goto lbl_46
            end
          end
          L8_3 = L1_3
          L7_3 = L1_3.write
          L9_3 = "configuration."
          L10_3 = L5_3
          L11_3 = "="
          L12_3 = tostring
          L13_3 = L6_3
          L12_3 = L12_3(L13_3)
          L13_3 = "\n"
          L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3
          L7_3(L8_3, L9_3)
        end
      end
      ::lbl_46::
    end
    L3_3 = L1_3
    L2_3 = L1_3.close
    L2_3(L3_3)
  end
  
  L0_2.saveConfiguration = L1_2
  return L0_2
end

newConfiguration = L0_1
