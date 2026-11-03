local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "localization"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.getLocalizedMsg
L2_1 = require
L3_1 = "ltn12"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "socket.http"
L3_1 = L3_1(L4_1)
L4_1 = 200
L5_1 = 400
L6_1 = 404
L7_1 = "api.cheekychuck.com"
L8_1 = string
L8_1 = L8_1.format
L9_1 = "http://%s/api/1.0/post-photo.php"
L10_1 = L7_1
L8_1 = L8_1(L9_1, L10_1)
L9_1 = "screenshotUploadBoundary"
L10_1 = "screenshot.jpg"
L11_1 = "image/jpeg"
L12_1 = "text/plain"
L13_1 = "text/plain"
L14_1 = "text/plain"
L15_1 = "text/plain"
L16_1 = "text/plain"
L17_1 = "text/plain"
L18_1 = "text/plain"
L19_1 = 200
L20_1 = "file"
L21_1 = "rotation"
L22_1 = "cid"
L23_1 = "arch"
L24_1 = "message"
L25_1 = "lang"
L26_1 = "edition"
L27_1 = "version"

function L28_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.orientationController = A0_2
  compat.setProp(L1_2, "rotation", 0)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = print
    L2_3 = "[screenshot controller] "
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L2_2
    L2_3 = "save screenshot"
    L1_3(L2_3)
    L1_3 = display
    L1_3 = L1_3.save
    L2_3 = SCREENSHOT_GROUP
    L3_3 = L10_1
    L4_3 = system
    L4_3 = L4_3.DocumentsDirectory
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_3.orientationController
    L1_3 = L1_3.current
    L1_3 = L1_3.rot
    compat.setProp(A0_3, "rotation", L1_3)
  end
  
  L1_2.takeScreenshot = L3_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = L10_1
    L3_3 = system
    L3_3 = L3_3.DocumentsDirectory
    L4_3 = true
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    return L1_3
  end
  
  L1_2.getScreenshotImage = L3_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3
    L2_3 = system
    L2_3 = L2_3.pathForFile
    L3_3 = L10_1
    L4_3 = system
    L4_3 = L4_3.DocumentsDirectory
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L3_3 = io
      L3_3 = L3_3.open
      L4_3 = L2_3
      L5_3 = "rb"
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L5_3 = L3_3
        L4_3 = L3_3.seek
        L6_3 = "end"
        L4_3 = L4_3(L5_3, L6_3)
        L6_3 = L3_3
        L5_3 = L3_3.seek
        L7_3 = "set"
        L5_3(L6_3, L7_3)
        L5_3 = table
        L5_3 = L5_3.concat
        L6_3 = {}
        L7_3 = string
        L7_3 = L7_3.format
        L8_3 = "--%s\r\n"
        L9_3 = L9_1
        L7_3 = L7_3(L8_3, L9_3)
        L8_3 = string
        L8_3 = L8_3.format
        L9_3 = "Content-Type: %s\r\n"
        L10_3 = L12_1
        L8_3 = L8_3(L9_3, L10_3)
        L9_3 = string
        L9_3 = L9_3.format
        L10_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L11_3 = L21_1
        L9_3 = L9_3(L10_3, L11_3)
        L10_3 = "\r\n"
        L11_3 = tostring
        L12_3 = A0_3.rotation
        L11_3 = L11_3(L12_3)
        L12_3 = "\r\n"
        L13_3 = string
        L13_3 = L13_3.format
        L14_3 = "--%s\r\n"
        L15_3 = L9_1
        L13_3 = L13_3(L14_3, L15_3)
        L14_3 = string
        L14_3 = L14_3.format
        L15_3 = "Content-Type: %s\r\n"
        L16_3 = L13_1
        L14_3 = L14_3(L15_3, L16_3)
        L15_3 = string
        L15_3 = L15_3.format
        L16_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L17_3 = L22_1
        L15_3 = L15_3(L16_3, L17_3)
        L16_3 = "\r\n"
        L17_3 = DEVICE_ID
        L18_3 = "\r\n"
        L19_3 = string
        L19_3 = L19_3.format
        L20_3 = "--%s\r\n"
        L21_3 = L9_1
        L19_3 = L19_3(L20_3, L21_3)
        L20_3 = string
        L20_3 = L20_3.format
        L21_3 = "Content-Type: %s\r\n"
        L22_3 = L14_1
        L20_3 = L20_3(L21_3, L22_3)
        L21_3 = string
        L21_3 = L21_3.format
        L22_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L23_3 = L23_1
        L21_3 = L21_3(L22_3, L23_3)
        L22_3 = "\r\n"
        L23_3 = tostring
        L24_3 = system
        L24_3 = L24_3.getInfo
        L25_3 = "architectureInfo"
        L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L24_3(L25_3)
        L23_3 = L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3)
        L24_3 = "\r\n"
        L25_3 = string
        L25_3 = L25_3.format
        L26_3 = "--%s\r\n"
        L27_3 = L9_1
        L25_3 = L25_3(L26_3, L27_3)
        L26_3 = string
        L26_3 = L26_3.format
        L27_3 = "Content-Type: %s\r\n"
        L28_3 = L15_1
        L26_3 = L26_3(L27_3, L28_3)
        L27_3 = string
        L27_3 = L27_3.format
        L28_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L29_3 = L24_1
        L27_3 = L27_3(L28_3, L29_3)
        L28_3 = "\r\n"
        L29_3 = tostring
        L30_3 = A1_3
        L29_3 = L29_3(L30_3)
        L30_3 = "\r\n"
        L31_3 = string
        L31_3 = L31_3.format
        L32_3 = "--%s\r\n"
        L33_3 = L9_1
        L31_3 = L31_3(L32_3, L33_3)
        L32_3 = string
        L32_3 = L32_3.format
        L33_3 = "Content-Type: %s\r\n"
        L34_3 = L16_1
        L32_3 = L32_3(L33_3, L34_3)
        L33_3 = string
        L33_3 = L33_3.format
        L34_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L35_3 = L25_1
        L33_3 = L33_3(L34_3, L35_3)
        L34_3 = "\r\n"
        L35_3 = tostring
        L36_3 = userPrefLang
        L35_3 = L35_3(L36_3)
        L36_3 = "\r\n"
        L37_3 = string
        L37_3 = L37_3.format
        L38_3 = "--%s\r\n"
        L39_3 = L9_1
        L37_3 = L37_3(L38_3, L39_3)
        L38_3 = string
        L38_3 = L38_3.format
        L39_3 = "Content-Type: %s\r\n"
        L40_3 = L17_1
        L38_3 = L38_3(L39_3, L40_3)
        L39_3 = string
        L39_3 = L39_3.format
        L40_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L41_3 = L26_1
        L39_3 = L39_3(L40_3, L41_3)
        L40_3 = "\r\n"
        L41_3 = tostring
        L42_3 = APP_EDITION
        L41_3 = L41_3(L42_3)
        L42_3 = "\r\n"
        L43_3 = string
        L43_3 = L43_3.format
        L44_3 = "--%s\r\n"
        L45_3 = L9_1
        L43_3 = L43_3(L44_3, L45_3)
        L44_3 = string
        L44_3 = L44_3.format
        L45_3 = "Content-Type: %s\r\n"
        L46_3 = L18_1
        L44_3 = L44_3(L45_3, L46_3)
        L45_3 = string
        L45_3 = L45_3.format
        L46_3 = "Content-Disposition: form-data; name=\"%s\"\r\n"
        L47_3 = L27_1
        L45_3 = L45_3(L46_3, L47_3)
        L46_3 = "\r\n"
        L47_3 = tostring
        L48_3 = APP_VERSION
        L47_3 = L47_3(L48_3)
        L48_3 = "\r\n"
        L49_3 = string
        L49_3 = L49_3.format
        L50_3 = "--%s\r\n"
        L51_3 = L9_1
        L49_3 = L49_3(L50_3, L51_3)
        L50_3 = string
        L50_3 = L50_3.format
        L51_3 = "Content-Type: %s\r\n"
        L52_3 = L11_1
        L50_3 = L50_3(L51_3, L52_3)
        L51_3 = string
        L51_3 = L51_3.format
        L52_3 = "Content-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\n"
        L53_3 = L20_1
        L54_3 = L10_1
        L51_3 = L51_3(L52_3, L53_3, L54_3)
        L52_3 = "Content-Transfer-Encoding: binary\r\n"
        L53_3 = "\r\n"
        L6_3[1] = L7_3
        L6_3[2] = L8_3
        L6_3[3] = L9_3
        L6_3[4] = L10_3
        L6_3[5] = L11_3
        L6_3[6] = L12_3
        L6_3[7] = L13_3
        L6_3[8] = L14_3
        L6_3[9] = L15_3
        L6_3[10] = L16_3
        L6_3[11] = L17_3
        L6_3[12] = L18_3
        L6_3[13] = L19_3
        L6_3[14] = L20_3
        L6_3[15] = L21_3
        L6_3[16] = L22_3
        L6_3[17] = L23_3
        L6_3[18] = L24_3
        L6_3[19] = L25_3
        L6_3[20] = L26_3
        L6_3[21] = L27_3
        L6_3[22] = L28_3
        L6_3[23] = L29_3
        L6_3[24] = L30_3
        L6_3[25] = L31_3
        L6_3[26] = L32_3
        L6_3[27] = L33_3
        L6_3[28] = L34_3
        L6_3[29] = L35_3
        L6_3[30] = L36_3
        L6_3[31] = L37_3
        L6_3[32] = L38_3
        L6_3[33] = L39_3
        L6_3[34] = L40_3
        L6_3[35] = L41_3
        L6_3[36] = L42_3
        L6_3[37] = L43_3
        L6_3[38] = L44_3
        L6_3[39] = L45_3
        L6_3[40] = L46_3
        L6_3[41] = L47_3
        L6_3[42] = L48_3
        L6_3[43] = L49_3
        L6_3[44] = L50_3
        L6_3[45] = L51_3
        L6_3[46] = L52_3
        L6_3[47] = L53_3
        L5_3 = L5_3(L6_3)
        L6_3 = string
        L6_3 = L6_3.format
        L7_3 = "\r\n--%s--\r\n"
        L8_3 = L9_1
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = #L5_3
        L7_3 = L4_3 + L7_3
        L8_3 = #L6_3
        L7_3 = L7_3 + L8_3
        L8_3 = {}
        L9_3 = L2_2
        L10_3 = string
        L10_3 = L10_3.format
        L11_3 = "trying to upload screenshot file to server: %s"
        L12_3 = L8_1
        L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L10_3(L11_3, L12_3)
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3)
        L9_3 = L3_1
        L9_3 = L9_3.request
        L10_3 = {}
        L11_3 = L8_1
        L10_3.url = L11_3
        L10_3.method = "POST"
        L11_3 = {}
        L12_3 = string
        L12_3 = L12_3.format
        L13_3 = "multipart/form-data; boundary=\"%s\""
        L14_3 = L9_1
        L12_3 = L12_3(L13_3, L14_3)
        L11_3["Content-Type"] = L12_3
        L11_3["Content-Length"] = L7_3
        L10_3.headers = L11_3
        L11_3 = L2_1
        L11_3 = L11_3.sink
        L11_3 = L11_3.table
        L12_3 = L8_3
        L11_3 = L11_3(L12_3)
        L10_3.sink = L11_3
        L11_3 = L2_1
        L11_3 = L11_3.source
        L11_3 = L11_3.cat
        L12_3 = L2_1
        L12_3 = L12_3.source
        L12_3 = L12_3.string
        L13_3 = L5_3
        L12_3 = L12_3(L13_3)
        L13_3 = L2_1
        L13_3 = L13_3.source
        L13_3 = L13_3.file
        L14_3 = L3_3
        L13_3 = L13_3(L14_3)
        L14_3 = L2_1
        L14_3 = L14_3.source
        L14_3 = L14_3.string
        L15_3 = L6_3
        L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L14_3(L15_3)
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3)
        L10_3.source = L11_3
        L9_3, L10_3 = L9_3(L10_3)
        if L9_3 then
          L11_3 = L4_1
          if L10_3 == L11_3 then
            L11_3 = L2_2
            L12_3 = "upload successful"
            L11_3(L12_3)
            L11_3 = true
            L12_3 = nil
            return L11_3, L12_3
          else
            L11_3 = L6_1
            if L10_3 == L11_3 then
              L11_3 = L2_2
              L12_3 = "ERROR - could not upload picture: web service not found."
              L11_3(L12_3)
              L11_3 = false
              L12_3 = L1_1
              L13_3 = L0_1
              L13_3 = L13_3.ERR_SCREENSHOT_UPLOAD_HTTP_NOT_FOUND
              L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L12_3(L13_3)
              return L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3
            else
              L11_3 = tostring
              L12_3 = table
              L12_3 = L12_3.concat
              L13_3 = L8_3
              L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L12_3(L13_3)
              L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3)
              L12_3 = L2_2
              L13_3 = string
              L13_3 = L13_3.format
              L14_3 = "ERROR - unknown HTTP error, status=%d, text=%s"
              L15_3 = L10_3
              L16_3 = L11_3
              L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L13_3(L14_3, L15_3, L16_3)
              L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3)
              L12_3 = #L11_3
              L13_3 = L19_1
              if L12_3 > L13_3 then
                L11_3 = "unknown error."
              end
              L12_3 = L2_2
              L13_3 = "ERROR - could not upload picture, server response is: "
              L14_3 = L11_3
              L13_3 = L13_3 .. L14_3
              L12_3(L13_3)
              L12_3 = false
              L13_3 = string
              L13_3 = L13_3.format
              L14_3 = L1_1
              L15_3 = L0_1
              L15_3 = L15_3.ERR_SCREENSHOT_UPLOAD_UNKNOWN_HTTP
              L14_3 = L14_3(L15_3)
              L15_3 = L10_3
              L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L13_3(L14_3, L15_3)
              return L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3
            end
          end
        else
          L11_3 = L2_2
          L12_3 = "ERROR - could not establish connection to server."
          L11_3(L12_3)
          L11_3 = false
          L12_3 = L1_1
          L13_3 = L0_1
          L13_3 = L13_3.ERR_SCREENSHOT_UPLOAD_NO_CONNECTION_TO_SERVER
          L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L12_3(L13_3)
          return L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3
        end
      else
        L4_3 = L2_2
        L5_3 = "ERROR - could not read screenshot file"
        L4_3(L5_3)
        L4_3 = false
        L5_3 = L1_1
        L6_3 = L0_1
        L6_3 = L6_3.ERR_SCREENSHOT_UPLOAD_CANNOT_READ_IMAGE_FILE
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L5_3(L6_3)
        return L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3
      end
    else
      L3_3 = L2_2
      L4_3 = "ERROR - could not create path to screeshot file"
      L3_3(L4_3)
      L3_3 = false
      L4_3 = L1_1
      L5_3 = L0_1
      L5_3 = L5_3.ERR_SCREENSHOT_UPLOAD_NO_PATH_TO_IMAGE_FILE
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3 = L4_3(L5_3)
      return L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3, L45_3, L46_3, L47_3, L48_3, L49_3, L50_3, L51_3, L52_3, L53_3, L54_3
    end
  end
  
  L1_2.upload = L3_2
  return L1_2
end

newScreenshotController = L28_1
