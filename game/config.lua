-- 320x480 letterbox as in 2012; on taller screens tallbg.lua fills the bars with the tall scene art (art/bg_tall).
application = {
  content = { width = 320, height = 480, scale = "letterbox", fps = 60, audioPlayFrequency = 22050,
    -- 4x Real-ESRGAN art (upscale.py). ponytail: only one high-res set; anything sharper than 1.5x uses it
    imageSuffix = { ["@4x"] = 1.5 },
  },
}
