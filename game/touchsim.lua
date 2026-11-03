local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "socket"
L0_1 = L0_1(L1_1)
L1_1 = 9090

function L2_1(...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.listeners = arg
  L2_2 = assert
  L3_2 = L0_1
  L3_2 = L3_2.udp
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.udp = L2_2
  L2_2 = L1_2.udp
  L3_2 = L2_2
  L2_2 = L2_2.setsockname
  L4_2 = "*"
  L5_2 = L1_1
  print("[touchsim] bind :" .. tostring(L1_1), L2_2(L3_2, L4_2, L5_2))
  L2_2 = L1_2.udp
  L3_2 = L2_2
  L2_2 = L2_2.settimeout
  L4_2 = 0
  L2_2(L3_2, L4_2)
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = A0_3.udp
    L3_3 = L2_3
    L2_3 = L2_3.receive
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L4_3 = L2_3
      L3_3 = L2_3.find
      L5_3 = "|"
      L3_3 = L3_3(L4_3, L5_3)
      L5_3 = L2_3
      L4_3 = L2_3.find
      L6_3 = "|"
      L7_3 = L3_3 + 1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L6_3 = L2_3
      L5_3 = L2_3.find
      L7_3 = "|"
      L8_3 = L4_3 + 1
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L6_3 = {}
      A1_3 = L6_3
      L7_3 = L2_3
      L6_3 = L2_3.sub
      L8_3 = 1
      L9_3 = L3_3 - 1
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      A1_3.id = L6_3
      L6_3 = tonumber
      L8_3 = L2_3
      L7_3 = L2_3.sub
      L9_3 = L3_3 + 1
      L10_3 = L4_3 - 1
      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3(L8_3, L9_3, L10_3)
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      A1_3.x = L6_3
      L6_3 = tonumber
      L8_3 = L2_3
      L7_3 = L2_3.sub
      L9_3 = L4_3 + 1
      L10_3 = L5_3 - 1
      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3(L8_3, L9_3, L10_3)
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      A1_3.y = L6_3
      L7_3 = L2_3
      L6_3 = L2_3.sub
      L8_3 = L5_3 + 1
      L6_3 = L6_3(L7_3, L8_3)
      A1_3.phase = L6_3
      L6_3 = ipairs
      L7_3 = A0_3.listeners
      L6_3, L7_3, L8_3 = L6_3(L7_3)
      for L9_3, L10_3 in L6_3, L7_3, L8_3 do
        L12_3 = L10_3
        L11_3 = L10_3.touch
        L13_3 = A1_3
        L11_3(L12_3, L13_3)
      end
    end
  end
  
  L1_2.enterFrame = L2_2
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "enterFrame"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  return L1_2
end

newTouchSimulator = L2_1
