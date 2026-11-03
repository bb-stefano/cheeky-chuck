local L0_1

function L0_1(...)
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L1_2.width = 320
  L1_2.height = 480
  L1_2.scale = "letterbox"
  L1_2.fps = 60
  L1_2.audioPlayFrequency = 22050
  L0_2.content = L1_2
  L0_2.launchPad = false
  application = L0_2
end

L0_1()

function L0_1(...)
  local L0_2, L1_2
  L0_2 = application
  if L0_2 then
    L0_2 = type
    L1_2 = application
    L0_2 = L0_2(L1_2)
    if L0_2 == "table" then
      goto lbl_11
    end
  end
  L0_2 = {}
  application = L0_2
  ::lbl_11::
  L0_2 = application
  L1_2 = {}
  L1_2.appName = "Cheeky Chuck"
  L1_2.appVersion = "1.0"
  L1_2.appPackageId = "com.eggsist.cheekychuck"
  L1_2.appId = "84604e0d53f8e809e7.83669851"
  L1_2.userId = "8460"
  L1_2.subscription = "pro"
  L1_2.mode = "distribution"
  L0_2.metadata = L1_2
end

L0_1()
