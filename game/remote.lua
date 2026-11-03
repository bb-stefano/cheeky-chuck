local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "socket"
L0_1 = L0_1(L1_1)
L1_1 = system
L1_1 = L1_1.getInfo
L2_1 = "environment"
L1_1 = L1_1(L2_1)
local L2_1 = false
local L3_1 = false
L4_1 = "CORONAREMOTE1.3"
L5_1 = "CORONAREMOTE1.3CONNECTED"
local L6_1 = 0
local L7_1 = false
local L8_1 = "8080"
L9_1 = 0
xGravity = L9_1
L9_1 = 0
yGravity = L9_1
L9_1 = 0
zGravity = L9_1
L9_1 = 0
xInstant = L9_1
L9_1 = 0
yInstant = L9_1
L9_1 = 0
zInstant = L9_1
L9_1 = -1
magnetic = L9_1
L9_1 = false
compass = L9_1
L9_1 = false
isShake = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}

  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L1_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = ""
    return L1_3
  end

  L3_2 = L2_2
  L5_2 = A0_2
  L4_2 = A0_2.gsub
  L6_2 = "(.-)*"
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2(L4_2)
  return L1_2
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == false then
    L1_2 = false
    return L1_2
  end
  L1_2 = false
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 < 7 or 15 < L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2.match
  L7_2 = "^(%d+)%.(%d+)%.(%d+)%.(%d+)$"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L2_2 = L4_2
  L4_2 = L2_2[1]
  local __lbl_37 = false
  if L4_2 ~= nil then
    L4_2 = L2_2[2]
    if L4_2 ~= nil then
      L4_2 = L2_2[3]
      if L4_2 ~= nil then
        L4_2 = L2_2[4]
        if L4_2 ~= nil then
          __lbl_37 = true
        end
      end
    end
  end
  if not __lbl_37 then
    L4_2 = false
    do return L4_2 end
  end
  L4_2 = tonumber
  L5_2 = L2_2[1]
  L4_2 = L4_2(L5_2)
  local __lbl_59 = false
  if not (255 < L4_2) then
    L4_2 = tonumber
    L5_2 = L2_2[2]
    L4_2 = L4_2(L5_2)
    if not (255 < L4_2) then
      L4_2 = tonumber
      L5_2 = L2_2[3]
      L4_2 = L4_2(L5_2)
      if not (255 < L4_2) then
        L4_2 = tonumber
        L5_2 = L2_2[4]
        L4_2 = L4_2(L5_2)
        if not (255 < L4_2) then
          __lbl_59 = true
        end
      end
    end
  end
  if not __lbl_59 then
    L4_2 = false
    do return L4_2 end
  end
  L4_2 = true
  return L4_2
end

isIP = L10_1

function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2.isShake
  if L1_2 ~= true then
    L1_2 = A0_2.xGravity
    xGravity = L1_2
    L1_2 = A0_2.yGravity
    yGravity = L1_2
    L1_2 = A0_2.zGravity
    zGravity = L1_2
    L1_2 = A0_2.xInstant
    xInstant = L1_2
    L1_2 = A0_2.yInstant
    yInstant = L1_2
    L1_2 = A0_2.zInstant
    zInstant = L1_2
    L1_2 = false
    isShake = L1_2
  else
    L1_2 = true
    isShake = L1_2
  end
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.isError
  if L1_2 then
    L1_2 = 0
    xGravity = L1_2
    L1_2 = 0
    yGravity = L1_2
    L1_2 = 0
    zGravity = L1_2
    L1_2 = 0
    xInstant = L1_2
    L1_2 = 0
    yInstant = L1_2
    L1_2 = 0
    zInstant = L1_2
    L1_2 = false
    isShake = L1_2
    L1_2 = -1
    magnetic = L1_2
    L1_2 = 60
    L6_1 = L1_2
  else
    L1_2 = L9_1
    L2_2 = A0_2.response
    L1_2 = L1_2(L2_2)
    tcpClientMessage = L1_2
    L1_2 = tcpClientMessage
    L1_2 = L1_2[1]
    if L1_2 == "CR" then
      L1_2 = 0
      L6_1 = L1_2
      L1_2 = tonumber
      L2_2 = tcpClientMessage
      L2_2 = L2_2[2]
      L1_2 = L1_2(L2_2)
      xGravity = L1_2
      L1_2 = tonumber
      L2_2 = tcpClientMessage
      L2_2 = L2_2[3]
      L1_2 = L1_2(L2_2)
      yGravity = L1_2
      L1_2 = tonumber
      L2_2 = tcpClientMessage
      L2_2 = L2_2[4]
      L1_2 = L1_2(L2_2)
      zGravity = L1_2
      L1_2 = tonumber
      L2_2 = tcpClientMessage
      L2_2 = L2_2[5]
      L1_2 = L1_2(L2_2)
      xInstant = L1_2
      L1_2 = tonumber
      L2_2 = tcpClientMessage
      L2_2 = L2_2[6]
      L1_2 = L1_2(L2_2)
      yInstant = L1_2
      L1_2 = tonumber
      L2_2 = tcpClientMessage
      L2_2 = L2_2[7]
      L1_2 = L1_2(L2_2)
      zInstant = L1_2
      L1_2 = tcpClientMessage
      L1_2 = L1_2[8]
      isShake = L1_2
      L1_2 = isShake
      if L1_2 == "1" then
        L1_2 = true
        isShake = L1_2
      else
        L1_2 = false
        isShake = L1_2
      end
      L1_2 = compass
      if L1_2 == true then
        L1_2 = tonumber
        L2_2 = tcpClientMessage
        L2_2 = L2_2[9]
        L1_2 = L1_2(L2_2)
        magnetic = L1_2
      end
      L1_2 = isIP
      L2_2 = L7_1
      L1_2 = L1_2(L2_2)
      if L1_2 == true then
        L1_2 = L3_1
        if L1_2 == "asynchronous" then
          L1_2 = network
          L1_2 = L1_2.request
          L2_2 = "http://"
          L3_2 = L7_1
          L4_2 = ":"
          L5_2 = L8_1
          L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
          L3_2 = "GET"
          L4_2 = L11_1
          L1_2(L2_2, L3_2, L4_2)
        end
      end
    else
      L1_2 = 0
      xGravity = L1_2
      L1_2 = 0
      yGravity = L1_2
      L1_2 = 0
      zGravity = L1_2
      L1_2 = 0
      xInstant = L1_2
      L1_2 = 0
      yInstant = L1_2
      L1_2 = 0
      zInstant = L1_2
      L1_2 = false
      isShake = L1_2
      L1_2 = -1
      magnetic = L1_2
      L1_2 = 60
      L6_1 = L1_2
    end
  end
end

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2.tcp
  L1_2, L2_2 = L1_2()
  L3_2 = 0
  if L1_2 == nil then
    L4_2 = nil
    L5_2 = L2_2
    return L4_2, L5_2
  end
  L5_2 = L1_2
  L4_2 = L1_2.setoption
  L6_2 = "reuseaddr"
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L1_2
  L4_2 = L1_2.bind
  L6_2 = "*"
  L7_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 == nil then
    L6_2 = nil
    L7_2 = L5_2
    return L6_2, L7_2
  end
  L7_2 = L1_2
  L6_2 = L1_2.listen
  L8_2 = L3_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L5_2 = L7_2
  L4_2 = L6_2
  if L4_2 == nil then
    L6_2 = nil
    L7_2 = L5_2
    return L6_2, L7_2
  end
  return L1_2
end

function L13_1()
  local L0_2, L1_2
  L0_2 = L12_1
  L1_2 = L8_1
  L0_2, L1_2 = L0_2(L1_2)
  _ = L1_2
  L2_1 = L0_2
end

function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.settimeout
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.accept
  L0_2, L1_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L3_2 = L0_2
    L2_2 = L0_2.receive
    L4_2 = "*l"
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L4_2 = L4_1
      if L2_2 == L4_2 then
        L5_2 = L0_2
        L4_2 = L0_2.getpeername
        L4_2 = L4_2(L5_2)
        L7_1 = L4_2
        L4_2 = L5_1
        L6_2 = L0_2
        L5_2 = L0_2.send
        L7_2 = L4_2
        L8_2 = "\n"
        L7_2 = L7_2 .. L8_2
        L5_2(L6_2, L7_2)
        L5_2 = isIP
        L6_2 = L7_1
        L5_2 = L5_2(L6_2)
        if L5_2 == true then
          L5_2 = L3_1
          if L5_2 == "tcp" then
            L5_2 = 0
            L6_1 = L5_2
            L5_2 = "asynchronous"
            L3_1 = L5_2
            L6_2 = L0_2
            L5_2 = L0_2.close
            L5_2(L6_2)
            L5_2 = L2_1
            L6_2 = L5_2
            L5_2 = L5_2.close
            L5_2(L6_2)
            L5_2 = network
            L5_2 = L5_2.request
            L6_2 = "http://"
            L7_2 = L7_1
            L8_2 = ":"
            L9_2 = L8_1
            L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
            L7_2 = "GET"
            L8_2 = L11_1
            L5_2(L6_2, L7_2, L8_2)
          end
        end
      end
    end
    L5_2 = L0_2
    L4_2 = L0_2.close
    L4_2(L5_2)
  end
end

function L15_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if L0_2 == "asynchronous" then
    L0_2 = L6_1
    L0_2 = L0_2 + 1
    L6_1 = L0_2
    L0_2 = L6_1
    if 60 <= L0_2 then
      L0_2 = 0
      xGravity = L0_2
      L0_2 = 0
      yGravity = L0_2
      L0_2 = 0
      zGravity = L0_2
      L0_2 = 0
      xInstant = L0_2
      L0_2 = 0
      yInstant = L0_2
      L0_2 = 0
      zInstant = L0_2
      L0_2 = false
      isShake = L0_2
      L0_2 = -1
      magnetic = L0_2
      L0_2 = 0
      L6_1 = L0_2
      L0_2 = "tcp"
      L3_1 = L0_2
      L0_2 = false
      L7_1 = L0_2
      L0_2 = L13_1
      L0_2()
    end
  else
    L0_2 = L3_1
    if L0_2 == "tcp" then
      L0_2 = L14_1
      L0_2()
    end
  end
end

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  if L1_2 == "simulator" then
    L8_1 = A0_2
    L1_2 = L13_1
    L1_2()
    L1_2 = "tcp"
    L3_1 = L1_2
    L1_2 = Runtime
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = "enterFrame"
    L4_2 = L15_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = Runtime
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = "accelerometer"
    L4_2 = L10_1
    L1_2(L2_2, L3_2, L4_2)
  end
end

startServer = L16_1

function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  if L0_2 == "simulator" then
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "enterFrame"
    L3_2 = L15_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L2_1
    L1_2 = L0_2
    L0_2 = L0_2.close
    L0_2(L1_2)
    L0_2 = nil
    L2_1 = L0_2
  else
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "accelerometer"
    L3_2 = L10_1
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = false
  L3_1 = L0_2
  L0_2 = false
  L7_1 = L0_2
  L0_2 = 0
  L6_1 = L0_2
  L0_2 = 0
  xGravity = L0_2
  L0_2 = 0
  yGravity = L0_2
  L0_2 = 0
  zGravity = L0_2
  L0_2 = 0
  xInstant = L0_2
  L0_2 = 0
  yInstant = L0_2
  L0_2 = 0
  zInstant = L0_2
  L0_2 = false
  isShake = L0_2
  L0_2 = -1
  magnetic = L0_2
end

stopServer = L16_1

function L16_1(A0_2)
  local L1_2
  L1_2 = A0_2.magnetic
  magnetic = L1_2
end

function L17_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  if L0_2 == "simulator" then
    L0_2 = true
    compass = L0_2
  else
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = "heading"
    L3_2 = L16_1
    L0_2(L1_2, L2_2, L3_2)
  end
end

startCompass = L17_1

function L17_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  if L0_2 == "simulator" then
    L0_2 = false
    compass = L0_2
    L0_2 = -1
    magnetic = L0_2
  else
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "heading"
    L3_2 = L16_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = -1
    magnetic = L0_2
  end
end

stopCompass = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = xGravity
  return L0_2
end

xGravityRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = yGravity
  return L0_2
end

yGravityRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = zGravity
  return L0_2
end

zGravityRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = xInstant
  return L0_2
end

xInstantRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = yInstant
  return L0_2
end

yInstantRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = zInstant
  return L0_2
end

zInstantRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = isShake
  return L0_2
end

isShakeRemote = L17_1

function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = xGravity
  L1_2 = yGravity
  L2_2 = zGravity
  L3_2 = xInstant
  L4_2 = yInstant
  L5_2 = zInstant
  L6_2 = isShake
  return L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
end

accelerometerRemote = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = magnetic
  return L0_2
end

magneticRemote = L17_1
