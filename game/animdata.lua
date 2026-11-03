local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = "[AnimData] "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = A0_2
  L5_2 = "r"
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L6_2 = L3_2
    L5_2 = L3_2.read
    L7_2 = "*all"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = io
    L6_2 = L6_2.close
    L7_2 = L3_2
    L6_2(L7_2)
    L6_2 = 1
    L7_2 = string
    L7_2 = L7_2.find
    L8_2 = L5_2
    L9_2 = "\n"
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = string
    L8_2 = L8_2.len
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    while L6_2 < L8_2 do
      L9_2 = A1_2
      L10_2 = string
      L10_2 = L10_2.sub
      L11_2 = L5_2
      L12_2 = L6_2
      L13_2 = L7_2 - 1
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = A2_2
      L9_2(L10_2, L11_2)
      L6_2 = L7_2 + 1
      L9_2 = string
      L9_2 = L9_2.find
      L10_2 = L5_2
      L11_2 = "\n"
      L12_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L7_2 = L9_2
      if not L7_2 then
        L7_2 = L8_2 + 1
      end
    end
  else
    L5_2 = print
    L6_2 = "Could read animation data file"
    L5_2(L6_2)
    L5_2 = print
    L6_2 = L4_2
    L5_2(L6_2)
  end
end

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = A0_2
  L3_2 = "^([a-zA-Z0-9_]+)[=.]"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L4_2 = assert
  L5_2 = L3_2
  L6_2 = "Could not determine variable: "
  L7_2 = A0_2
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  return L3_2
end

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = "="
  L4_2 = L4_2 .. L5_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = string
    L3_2 = L3_2.find
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = "=([^(),]+)"
    L5_2 = L5_2 .. L6_2
    L6_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
    L6_2 = assert
    L7_2 = L5_2
    L8_2 = "Could not determine value for attribute: "
    L9_2 = A1_2
    L10_2 = " in line: "
    L11_2 = A0_2
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2, L8_2)
    return L5_2
  else
    L3_2 = nil
    return L3_2
  end
end

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2
  L4_2 = "^[a-zA-Z_]+=timeline"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L2_1
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L3_1
    L4_2 = A0_2
    L5_2 = "name"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_1
    L5_2 = A0_2
    L6_2 = "width"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L3_1
    L6_2 = A0_2
    L7_2 = "height"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L3_1
    L7_2 = A0_2
    L8_2 = "framerate"
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L3_1
    L8_2 = A0_2
    L9_2 = "xref"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L3_1
    L9_2 = A0_2
    L10_2 = "yref"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = newTimeline
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L11_2 = L9_2
    L10_2 = L9_2.setWidth
    L12_2 = L4_2
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setHeight
    L12_2 = L5_2
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setFrameRate
    L12_2 = L6_2
    L10_2(L11_2, L12_2)
    if L7_2 then
      L11_2 = L9_2
      L10_2 = L9_2.setTransformationX
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
    end
    if L8_2 then
      L11_2 = L9_2
      L10_2 = L9_2.setTransformationY
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
    A1_2[L2_2] = L9_2
  else
    L2_2 = string
    L2_2 = L2_2.find
    L3_2 = A0_2
    L4_2 = "^[a-zA-Z0-9_]+=layer"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L2_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L3_1
      L4_2 = A0_2
      L5_2 = "name"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = newLayer
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      A1_2[L2_2] = L4_2
    else
      L2_2 = string
      L2_2 = L2_2.find
      L3_2 = A0_2
      L4_2 = "^[a-zA-Z0-9_]+.add"
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = L2_1
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        L3_2 = L3_1
        L4_2 = A0_2
        L5_2 = "layer"
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = A1_2[L2_2]
        L5_2 = L4_2
        L4_2 = L4_2.addLayer
        L6_2 = A1_2[L3_2]
        L4_2(L5_2, L6_2)
      else
        L2_2 = string
        L2_2 = L2_2.find
        L3_2 = A0_2
        L4_2 = "^[a-zA-Z0-9_]+.frame"
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          L2_2 = L2_1
          L3_2 = A0_2
          L2_2 = L2_2(L3_2)
          L3_2 = tonumber
          L4_2 = L3_1
          L5_2 = A0_2
          L6_2 = "i"
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2)
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L4_2 = tonumber
          L5_2 = L3_1
          L6_2 = A0_2
          L7_2 = "d"
          L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2, L7_2)
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L5_2 = tonumber
          L6_2 = L3_1
          L7_2 = A0_2
          L8_2 = "x"
          L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2)
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L6_2 = tonumber
          L7_2 = L3_1
          L8_2 = A0_2
          L9_2 = "y"
          L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2)
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L7_2 = L3_1
          L8_2 = A0_2
          L9_2 = "o"
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = L3_1
          L9_2 = A0_2
          L10_2 = "s"
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = {}
          L9_2.x = L5_2
          L9_2.y = L6_2
          L9_2.o = L7_2
          if L8_2 then
            L9_2.s = L8_2
          end
          L11_2 = L7_2
          L10_2 = L7_2.find
          L12_2 = ".png$"
          L10_2 = L10_2(L11_2, L12_2)
          if not L10_2 then
            L10_2 = A1_2[L7_2]
            if L10_2 then
              L10_2 = A1_2[L2_2]
              L11_2 = A1_2[L7_2]
              L10_2.subContainer = L11_2
            else
              L10_2 = L7_2
              L11_2 = "_1"
              L10_2 = L10_2 .. L11_2
              L10_2 = A1_2[L10_2]
              if L10_2 then
                L10_2 = A1_2[L2_2]
                L11_2 = L7_2
                L12_2 = "_1"
                L11_2 = L11_2 .. L12_2
                L11_2 = A1_2[L11_2]
                L10_2.subContainer = L11_2
              end
            end
          end
          L10_2 = A1_2[L2_2]
          L11_2 = L10_2
          L10_2 = L10_2.insertFrame
          L12_2 = L3_2
          L13_2 = L4_2
          L14_2 = L9_2
          L10_2(L11_2, L12_2, L13_2, L14_2)
        else
          L2_2 = string
          L2_2 = L2_2.find
          L3_2 = A0_2
          L4_2 = "^return"
          L2_2 = L2_2(L3_2, L4_2)
          if L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_2 = A0_2
            L4_2 = "^return ([a-zA-Z0-9_]+)"
            L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
            L5_2 = A1_2[L4_2]
            A1_2.__return = L5_2
          else
            L2_2 = print
            L3_2 = "Cannot parse line: "
            L4_2 = A0_2
            L3_2 = L3_2 .. L4_2
            L2_2(L3_2)
          end
        end
      end
    end
  end
end

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = L4_1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.__return
  return L2_2
end

readAnimDataFile = L5_1
