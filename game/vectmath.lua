local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = math
L0_1 = L0_1.pi
L1_1 = math
L1_1 = L1_1.deg
L2_1 = math
L2_1 = L2_1.rad
L3_1 = math
L3_1 = L3_1.sin
L4_1 = math
L4_1 = L4_1.cos
L5_1 = math
L5_1 = L5_1.acos
L6_1 = math
L6_1 = L6_1.sqrt
L7_1 = math
L7_1 = L7_1.atan2
L8_1 = {}

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.z
  if L1_2 then
    L1_2 = "{vector: x="
    L2_2 = tostring
    L3_2 = A0_2.x
    L2_2 = L2_2(L3_2)
    L3_2 = ", y="
    L4_2 = tostring
    L5_2 = A0_2.y
    L4_2 = L4_2(L5_2)
    L5_2 = ", z="
    L6_2 = tostring
    L7_2 = A0_2.z
    L6_2 = L6_2(L7_2)
    L7_2 = "}"
    L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    return L1_2
  else
    L1_2 = "{vector: x="
    L2_2 = tostring
    L3_2 = A0_2.x
    L2_2 = L2_2(L3_2)
    L3_2 = ", y="
    L4_2 = tostring
    L5_2 = A0_2.y
    L4_2 = L4_2(L5_2)
    L5_2 = "}"
    L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
    return L1_2
  end
end

L8_1.__tostring = L9_1
VectorMT = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L2_2
end

vectDot = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A0_2.y
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L4_2 = A1_2.y
  L5_2 = A0_2.z
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.x
  L3_2 = L3_2 * L4_2
  L4_2 = A1_2.z
  L5_2 = A0_2.x
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L3_2 = A0_2.x
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L4_2 = A1_2.x
  L5_2 = A0_2.y
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L2_2.z = L3_2
  L3_2 = setmetatable
  L4_2 = L2_2
  L5_2 = VectorMT
  L3_2(L4_2, L5_2)
  return L2_2
end

vectCross = L8_1

function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = 1
  L5_2 = 1
  if A3_2 then
    L4_2 = A3_2.x
    L5_2 = A3_2.y
  end
  L6_2 = A0_2.x
  L7_2 = A1_2 * L4_2
  L6_2 = L6_2 + L7_2
  A0_2.x = L6_2
  L6_2 = A0_2.y
  L7_2 = A2_2 * L5_2
  L6_2 = L6_2 + L7_2
  A0_2.y = L6_2
end

vectTranslate = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L5_1
  L3_2 = vectDot
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  return L2_2(L3_2, L4_2, L5_2)
end

vectAngle = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L7_1
  L3_2 = A0_2.y
  L4_2 = A0_2.x
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L7_1
  L4_2 = A1_2.y
  L5_2 = A1_2.x
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  return L2_2
end

vectAngle2 = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = L3_1
  L5_2 = L2_1
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_1
  L6_2 = L2_1
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2 * L2_2
  L7_2 = L4_2 * L3_2
  L6_2 = L6_2 - L7_2
  A0_2.x = L6_2
  L6_2 = L4_2 * L2_2
  L7_2 = L5_2 * L3_2
  L6_2 = L6_2 + L7_2
  A0_2.y = L6_2
end

vectRot = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  A0_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  A0_2.y = L3_2
  L3_2 = vectRot
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 + L4_2
  A0_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 + L4_2
  A0_2.y = L3_2
end

vectRotAt = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.x
  L2_2 = A0_2.y
  L3_2 = A0_2.z
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = L6_1
  L5_2 = L1_2 * L1_2
  L6_2 = L2_2 * L2_2
  L5_2 = L5_2 + L6_2
  L6_2 = L3_2 * L3_2
  L5_2 = L5_2 + L6_2
  return L4_2(L5_2)
end

vectLen = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = vectLen
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.x
  L2_2 = L2_2 / L1_2
  A0_2.x = L2_2
  L2_2 = A0_2.y
  L2_2 = L2_2 / L1_2
  A0_2.y = L2_2
  L2_2 = A0_2.z
  L2_2 = L2_2 / L1_2
  A0_2.z = L2_2
end

vectNorm = L8_1
