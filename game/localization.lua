local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = 100
UI_RETRY = L0_1
L0_1 = 101
UI_CANCEL = L0_1
L0_1 = 102
UI_ERROR = L0_1
L0_1 = 201
ERR_SCREENSHOT_UPLOAD_NO_PATH_TO_IMAGE_FILE = L0_1
L0_1 = 202
ERR_SCREENSHOT_UPLOAD_CANNOT_READ_IMAGE_FILE = L0_1
L0_1 = 203
ERR_SCREENSHOT_UPLOAD_NO_CONNECTION_TO_SERVER = L0_1
L0_1 = 204
ERR_SCREENSHOT_UPLOAD_HTTP_NOT_FOUND = L0_1
L0_1 = 205
ERR_SCREENSHOT_UPLOAD_UNKNOWN_HTTP = L0_1
L0_1 = {}
LOCALIZED_MSG = L0_1
L0_1 = LOCALIZED_MSG
L1_1 = UI_RETRY
L2_1 = {}
L2_1.en = "Retry"
L2_1.zh = "\233\135\141\232\175\149"
L2_1.it = "Riprova"
L2_1.jp = "\227\131\170\227\131\136\227\131\169\227\130\164"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = UI_CANCEL
L2_1 = {}
L2_1.en = "Cancel"
L2_1.zh = "\229\143\150\230\182\136"
L2_1.it = "Annulla"
L2_1.jp = "\227\130\173\227\131\163\227\131\179\227\130\187\227\131\171"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = UI_ERROR
L2_1 = {}
L2_1.en = "Error"
L2_1.zh = "\233\148\153\232\175\175"
L2_1.it = "Errore"
L2_1.jp = "\227\130\168\227\131\169\227\131\188"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = ERR_SCREENSHOT_UPLOAD_NO_PATH_TO_IMAGE_FILE
L2_1 = {}
L2_1.en = "Could not create path to image file"
L2_1.zh = "\230\151\160\230\179\149\229\136\155\229\187\186\229\155\190\231\137\135\232\183\175\229\190\132"
L2_1.it = "Errore di creazione immagine"
L2_1.jp = "\227\130\164\227\131\161\227\131\188\227\130\184\227\131\149\227\130\161\227\130\164\227\131\171\227\129\174\227\131\145\227\130\185\227\130\146\228\189\156\230\136\144\227\129\167\227\129\141\227\129\190\227\129\155\227\130\147\227\128\130"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = ERR_SCREENSHOT_UPLOAD_CANNOT_READ_IMAGE_FILE
L2_1 = {}
L2_1.en = "Could not read image file"
L2_1.zh = "\230\151\160\230\179\149\232\175\187\229\143\150\229\155\190\231\137\135"
L2_1.it = "Impossibile caricare l'immagine"
L2_1.jp = "\227\131\149\227\130\161\227\130\164\227\131\171\227\129\174\232\170\173\232\190\188\227\129\191\227\129\171\229\164\177\230\149\151\227\129\151\227\129\190\227\129\151\227\129\159\227\128\130"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = ERR_SCREENSHOT_UPLOAD_NO_CONNECTION_TO_SERVER
L2_1 = {}
L2_1.en = "Could not establish connection to server"
L2_1.zh = "\230\151\160\230\179\149\228\184\142\230\156\141\229\138\161\229\153\168\232\191\158\230\142\165"
L2_1.it = "Impossibile stabilire conessione con il server"
L2_1.jp = "\227\130\181\227\131\188\227\131\144\227\129\184\227\129\174\230\142\165\231\182\154\227\130\146\231\162\186\231\171\139\227\129\167\227\129\141\227\129\190\227\129\155\227\130\147\227\128\130"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = ERR_SCREENSHOT_UPLOAD_HTTP_NOT_FOUND
L2_1 = {}
L2_1.en = "Could not find upload service on server"
L2_1.zh = "\230\151\160\228\184\138\228\188\160\230\156\141\229\138\161"
L2_1.it = "Errore di caricamento"
L2_1.jp = "\227\130\181\227\131\188\227\131\144\228\184\138\227\129\171\227\130\162\227\131\131\227\131\151\227\131\173\227\131\188\227\131\137\227\130\181\227\131\188\227\131\147\227\130\185\227\129\140\227\129\191\227\129\164\227\129\139\227\130\138\227\129\190\227\129\155\227\130\147\227\128\130"
L0_1[L1_1] = L2_1
L0_1 = LOCALIZED_MSG
L1_1 = ERR_SCREENSHOT_UPLOAD_UNKNOWN_HTTP
L2_1 = {}
L2_1.en = "Unknown HTTP error (status=%s)"
L2_1.zh = "\230\156\170\231\159\165HTTP\233\148\153\232\175\175\239\188\140\231\138\182\230\128\129\228\187\163\231\160\129=%s"
L2_1.it = "Errore sconosciuto, status=%s"
L2_1.jp = "\228\186\136\230\156\159\227\129\155\227\129\172HTTP\227\130\168\227\131\169\227\131\188\227\128\130\227\130\185\227\131\134\227\131\188\227\130\191\227\130\185\239\188\157%s"
L0_1[L1_1] = L2_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = print
    L2_2 = "FATAL: trying to get localized message from index=nil"
    L1_2(L2_2)
    L1_2 = os
    L1_2 = L1_2.exit
    L2_2 = -1
    L1_2(L2_2)
  end
  L1_2 = LOCALIZED_MSG
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = userPrefLang
    L2_2 = L1_2[L2_2]
    if L2_2 then
      L2_2 = userPrefLang
      L2_2 = L1_2[L2_2]
      if L2_2 == "" then
        L3_2 = "***"
        L4_2 = DEFAULT_LOCALIZATION_LANG
        L4_2 = L1_2[L4_2]
        L3_2 = L3_2 .. L4_2
        return L3_2
      else
        return L2_2
      end
    else
      L2_2 = DEFAULT_LOCALIZATION_LANG
      L2_2 = L1_2[L2_2]
      return L2_2
    end
  else
    L2_2 = "*** STRING NOT FOUND ***"
    return L2_2
  end
end

getLocalizedMsg = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = getLocalizedMsg
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.gsub
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L2_2 = L8_2
  end
  return L2_2
end

getLocalizedMsgWithPlaceholders = L0_1

-- account / photo-sharing strings (patch_game.py)
UI_ACCOUNT_TITLE = 300
LOCALIZED_MSG[UI_ACCOUNT_TITLE] = { en = "Account", it = "Account", jp = "アカウント", zh = "账户" }
UI_EMAIL = 301
LOCALIZED_MSG[UI_EMAIL] = { en = "Email", it = "Email", jp = "メールアドレス", zh = "电子邮件" }
UI_PASSWORD = 302
LOCALIZED_MSG[UI_PASSWORD] = { en = "Password", it = "Password", jp = "パスワード", zh = "密码" }
UI_REGISTER = 303
LOCALIZED_MSG[UI_REGISTER] = { en = "Register", it = "Registrati", jp = "登録", zh = "注册" }
UI_LOGIN = 304
LOCALIZED_MSG[UI_LOGIN] = { en = "Log in", it = "Accedi", jp = "ログイン", zh = "登录" }
UI_LOGOUT = 305
LOCALIZED_MSG[UI_LOGOUT] = { en = "Log out", it = "Esci", jp = "ログアウト", zh = "退出登录" }
UI_DELETE_ACCOUNT = 306
LOCALIZED_MSG[UI_DELETE_ACCOUNT] = { en = "Delete account", it = "Elimina account", jp = "アカウント削除", zh = "删除账户" }
UI_SIGNED_IN_AS = 307
LOCALIZED_MSG[UI_SIGNED_IN_AS] = { en = "Signed in as", it = "Accesso eseguito come", jp = "ログイン中のアカウント", zh = "已登录账户" }
UI_FRIEND_EMAIL = 308
LOCALIZED_MSG[UI_FRIEND_EMAIL] = { en = "Friend's email", it = "Email dell'amico", jp = "友達のメールアドレス", zh = "好友的电子邮件" }
UI_SEND = 309
LOCALIZED_MSG[UI_SEND] = { en = "Send", it = "Invia", jp = "送信", zh = "发送" }
UI_PHOTO_SENT = 310
LOCALIZED_MSG[UI_PHOTO_SENT] = { en = "Photo sent!", it = "Foto inviata!", jp = "写真を送信しました！", zh = "照片已发送！" }
ERR_NETWORK = 311
LOCALIZED_MSG[ERR_NETWORK] = { en = "Cannot reach the server. Check your connection.", it = "Impossibile contattare il server. Controlla la connessione.", jp = "サーバーに接続できません。接続を確認してください。", zh = "无法连接服务器，请检查网络连接。" }
UI_CLOSE = 312
LOCALIZED_MSG[UI_CLOSE] = { en = "Close", it = "Chiudi", jp = "閉じる", zh = "关闭" }
UI_PASSWORD_CONFIRM = 313
LOCALIZED_MSG[UI_PASSWORD_CONFIRM] = { en = "Password to confirm", it = "Password per confermare", jp = "確認用パスワード", zh = "输入密码以确认" }
