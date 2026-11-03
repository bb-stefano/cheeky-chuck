local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "remote"
L0_1 = L0_1(L1_1)

function L1_1(...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.listeners = arg
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = {}
    L2_3 = L0_1
    L2_3 = L2_3.xGravity
    L1_3.xGravity = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.yGravity
    L1_3.yGravity = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.zGravity
    L1_3.zGravity = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.xInstant
    L1_3.xInstant = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.yInstant
    L1_3.yInstant = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.zInstant
    L1_3.zInstant = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.isShake
    L1_3.isShake = L2_3
    L2_3 = L1_3.xGravity
    if L2_3 == 0 then
      L2_3 = L1_3.yGravity
      if L2_3 == 0 then
        L1_3.yGravity = -1
      end
    end
    L2_3 = ipairs
    L3_3 = A0_3.listeners
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L8_3 = L6_3
      L7_3 = L6_3.accelerometer
      L9_3 = L1_3
      L7_3(L8_3, L9_3)
    end
  end
  
  L1_2.enterFrame = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.startServer
  L3_2 = "8080"
  L2_2(L3_2)
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "enterFrame"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  
  function L2_2(A0_3)
    local L1_3
    L1_3 = L0_1
    L1_3 = L1_3.stopServer
    L1_3()
  end
  
  L1_2.destroy = L2_2
  return L1_2
end

newAccelerometerSimulator = L1_1
