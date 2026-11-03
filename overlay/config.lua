-- ponytail: original 2012 320x480 letterbox; tall modern screens get bars. Revisit (zoomEven / taller height) once it runs.
application = {
  content = { width = 320, height = 480, scale = "letterbox", fps = 60, audioPlayFrequency = 22050,
    -- 4x Real-ESRGAN art (upscale.py). ponytail: only one high-res set; anything sharper than 1.5x uses it
    imageSuffix = { ["@4x"] = 1.5 },
  },
}
