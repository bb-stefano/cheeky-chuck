"""Turn the HTML5 build (build/web, from dev/build-web.lua) into the site's /play/ page (site/play/).

The page Solar2D generates is wrapped with:
  * a start gate: the game needs the motion sensor, so it only starts where real motion samples arrive
    (on iOS after the player allows motion access); anywhere else, desktops included, the page only says
    "Run Cheeky Chuck on your mobile device!". The download (about 80 MB) starts once a sensor is confirmed;
  * the motion feed for webaccel.lua / webmotion.js: window.ccMotion in Solar2D's convention (g units,
    gravity pointing down in device axes: upright portrait y = -1, lying face up z = -1);
  * no context menus: right click and long press are game gestures (long tap), so the browser's menus,
    text selection, callouts and pinch zoom are all switched off;
  * full screen and portrait lock on the first tap where the browser allows them (Android).
Run: python3 -I dev/web-index.py
"""
import os
import re
import shutil

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
SRC = os.path.join(ROOT, "build", "web", "CheekyChuck.html5")
DST = os.path.join(ROOT, "site", "play")
NAME = "CheekyChuck"

HEAD = """
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, viewport-fit=cover">
    <meta name="theme-color" content="#000000">
    <link rel="icon" href="/favicon.png">
    <style>
      @font-face { font-family: 'Bubble Rounded'; src: url(/assets/bubble-rounded.ttf) format('truetype'); font-display: swap; }
      html, body, canvas { -webkit-touch-callout: none; -webkit-user-select: none; user-select: none;
                           -webkit-tap-highlight-color: transparent; touch-action: none; overscroll-behavior: none; }
      #loading { flex-direction: column; justify-content: center; gap: 18px; padding: 24px; text-align: center; color: #fff;
                 background: radial-gradient(circle at 50% 35%, #2d7fd0 0%, #0b3d8c 55%, #061f4a 100%);
                 font: 22px/1.3 'Bubble Rounded', system-ui, sans-serif; }
      #loading img { width: 120px; height: 120px; border-radius: 26px; box-shadow: 0 8px 24px rgba(0,0,0,.4);
                     animation: ccBob 1.1s ease-in-out infinite alternate; }
      @keyframes ccBob { from { transform: translateY(0) rotate(-4deg); } to { transform: translateY(-10px) rotate(4deg); } }
      #ldTitle { color: #ffb52e; font-size: 30px; text-shadow: 0 3px 0 rgba(0,0,0,.35); }
      /* the bar: a fat rounded tube with a dark outline, filled with moving orange candy stripes */
      #ldBar { position: relative; width: min(78vw, 340px); height: 34px; border: 4px solid #1a0b00; border-radius: 99px;
               background: #0a2c66; box-shadow: 0 5px 0 rgba(0,0,0,.35), inset 0 4px 0 rgba(0,0,0,.35); overflow: hidden; }
      #ldFill { position: absolute; left: 0; top: 0; bottom: 0; width: 0; border-radius: 99px; transition: width .35s ease-out;
                background: repeating-linear-gradient(-45deg, #ffb52e 0 14px, #ff8a1f 14px 28px);
                background-size: 40px 40px; animation: ccStripes .7s linear infinite;
                box-shadow: inset 0 6px 0 rgba(255,255,255,.35), inset 0 -5px 0 rgba(150,60,0,.35); }
      @keyframes ccStripes { from { background-position: 0 0; } to { background-position: 40px 0; } }
      #ldPct { font-size: 40px; color: #fff; text-shadow: 0 3px 0 #1a0b00, 2px 0 0 #1a0b00, -2px 0 0 #1a0b00, 0 -2px 0 #1a0b00; }
      #ldNote { font-size: 16px; color: #9fd3ff; }
      #gate { z-index: 10; flex-direction: column; justify-content: center; gap: 22px; padding: 24px; text-align: center;
              background: radial-gradient(circle at 50% 35%, #2d7fd0 0%, #0b3d8c 55%, #061f4a 100%);
              color: #fff; font: 22px/1.3 'Bubble Rounded', system-ui, sans-serif; }
      #gate img { width: 132px; height: 132px; border-radius: 28px; box-shadow: 0 8px 24px rgba(0,0,0,.4); }
      #gate h1 { margin: 0; font-size: 34px; font-weight: 400; color: #ffb52e; text-shadow: 0 3px 0 rgba(0,0,0,.35); }
      #gate p { margin: 0; max-width: 340px; }
      #gate button { font: 26px 'Bubble Rounded', system-ui, sans-serif; color: #3a1500; background: #ff9a1f;
                     border: 0; border-radius: 99px; padding: 14px 40px; box-shadow: 0 5px 0 #b85a00; }
      #gate button:active { transform: translateY(3px); box-shadow: 0 2px 0 #b85a00; }
      #gate a { color: #9fd3ff; font-size: 17px; }
      [hidden] { display: none !important; }
    </style>"""

GATE = """
    <div id="gate">
      <img src="/assets/icon.png" alt="">
      <h1>Cheeky Chuck Reloaded!</h1>
      <p id="gateMsg">Checking your device&hellip;</p>
      <button id="gatePlay" hidden>Tap to play</button>
      <a id="gateHome" href="/" hidden>Back to cheekychuck.jocogiant.com</a>
    </div>
"""

LOADING = """<div id="loading">
      <img src="/assets/icon.png" alt="">
      <div id="ldTitle">Loading Chuck&hellip;</div>
      <div id="ldBar"><div id="ldFill"></div></div>
      <div id="ldPct">0%</div>
      <div id="ldNote">About 50 MB: best on Wi-Fi</div>
      <progress id="progress" hidden></progress><div id="status" hidden></div>
    </div>"""

GATE_JS = """
    <script>
      // Context menus: right click and long press are game gestures here (capture phase, before the game sees them).
      ['contextmenu', 'selectstart', 'dragstart', 'gesturestart'].forEach(function (t) {
        window.addEventListener(t, function (e) { e.preventDefault(); }, { capture: true, passive: false });
      });
      ['mousedown', 'mouseup', 'pointerdown', 'pointerup', 'auxclick'].forEach(function (t) {
        window.addEventListener(t, function (e) {
          if (e.button !== undefined && e.button !== 0 && e.pointerType !== 'touch') { e.preventDefault(); e.stopImmediatePropagation(); }
        }, { capture: true, passive: false });
      });

      (function () {
        var gate = document.getElementById('gate'), msg = document.getElementById('gateMsg');
        var play = document.getElementById('gatePlay'), home = document.getElementById('gateHome');
        var ios = /iP(hone|ad|od)/.test(navigator.userAgent) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1);
        var touch = navigator.maxTouchPoints > 0 || 'ontouchstart' in window;
        var started = false, decided = false;

        function noDevice(text) {
          if (decided) return;
          decided = true;
          msg.textContent = text || 'Run Cheeky Chuck on your mobile device!';
          play.hidden = true; home.hidden = false;
        }
        // Solar2D's convention: g units, gravity pointing down in device axes. Browsers report the opposite
        // (the reaction to gravity, m/s^2); iOS Safari has the axes the other way round from Android Chrome.
        function onMotion(e) {
          var a = e.accelerationIncludingGravity;
          if (!a || a.x === null || a.y === null || a.z === null) return;
          var k = ios ? 1 / 9.81 : -1 / 9.81;
          window.ccMotion = { x: a.x * k, y: a.y * k, z: a.z * k };
          if (!decided) { decided = true; ready(); }
        }
        function listen() {
          window.addEventListener('devicemotion', onMotion);
          setTimeout(function () { if (!window.ccMotion) noDevice(); }, 1500);
        }
        function ready() {
          if (!started) { started = true; window.ccStart(); }  // start the download while the player reads
          msg.textContent = 'Shake, tilt and tickle Chuck. Sound on!';
          play.hidden = false;
        }
        // One handler, two steps (no reliance on the order two listeners fire in, which Safari does differently):
        // 'ask' (iOS only) requests motion access, 'go' enters the game.
        var step = 'go';
        function enter() {
          var el = document.documentElement;
          var fs = el.requestFullscreen || el.webkitRequestFullscreen;
          if (fs && !ios) {
            try {
              var p = fs.call(el, { navigationUI: 'hide' });
              if (p && p.then) p.then(function () {
                if (screen.orientation && screen.orientation.lock) screen.orientation.lock('portrait').catch(function () {});
              }).catch(function () {});
            } catch (err) {}
          }
          gate.hidden = true;
          window.focus();
        }
        play.addEventListener('click', function () {
          if (step === 'go') { enter(); return; }
          if (step !== 'ask') return;
          step = 'asking';
          DeviceMotionEvent.requestPermission().then(function (state) {
            if (state !== 'granted') { noDevice('Cheeky Chuck needs motion access: reload the page and allow it.'); return; }
            step = 'go';
            play.textContent = 'Tap to play';
            play.hidden = true;
            msg.textContent = 'Checking your device\u2026';
            listen();
          }).catch(function (err) { noDevice('Motion access failed (' + (err && err.message || err) + '): reload and try again.'); });
        });

        // Loading screen: one percentage for the engine (first 3%), the data (to 97%) and the start-up (the rest).
        // It only moves forward; the template's byte counts never reach the screen.
        var shown = 0, fill = document.getElementById('ldFill'), pct = document.getElementById('ldPct');
        var title = document.getElementById('ldTitle'), note = document.getElementById('ldNote');
        function show(p) {
          p = Math.max(shown, Math.min(100, Math.floor(p)));
          if (p === shown && p) return;
          shown = p; fill.style.width = p + '%'; pct.textContent = p + '%';
        }
        window.ccProgress = function (part, loaded, total) {
          if (!total) return;
          if (part === 'bin') show(3 * loaded / total);
          else show(3 + 94 * loaded / total);
        };
        Module.setStatus = function (text) {
          var m = /\((\d+)\/(\d+)\)/.exec(text || '');
          if (/^Downloading data/.test(text) && m) { ccProgress('data', +m[1], +m[2]); return; }
          if (/^(Preparing|Unpacking|All downloads)/.test(text || '')) {
            show(97 + (m && +m[2] ? 3 * m[1] / m[2] : 0));
            title.textContent = 'Almost there\u2026'; note.textContent = 'Waking Chuck up';
            return;
          }
          if (!text) { show(100); document.getElementById('loading').hidden = true; }  // the game is running
        };

        if (!touch || typeof DeviceMotionEvent === 'undefined') { noDevice(); return; }
        if (typeof DeviceMotionEvent.requestPermission === 'function') {
          // iOS 13+: motion access needs a tap and the player's OK
          msg.textContent = 'Cheeky Chuck feels every shake: allow motion access to play.';
          play.textContent = 'Allow & play';
          play.hidden = false;
          step = 'ask';
        } else {
          listen();
        }
      })();
    </script>
"""


def main():
    page = open(os.path.join(SRC, "index-nosplash.html"), encoding="utf-8").read()
    page = page.replace('<html lang="en-us">', '<html lang="en">', 1)
    page = re.sub(r"<title>.*?</title>", "<title>Play Cheeky Chuck Reloaded!</title>", page, count=1)
    page = re.sub(r'\s*<meta name="viewport"[^>]*>', "", page, count=1)
    page = page.replace("</head>", HEAD + "\n    </head>", 1)
    page = page.replace("<body>", "<body>" + GATE, 1)
    # The loader would decode every packed image into its own kept canvas (and every sound into an Audio object)
    # that nothing ever uses (Solar2D reads the files itself): seconds stuck at "Preparing" on a phone, and enough
    # memory (5000 canvases, up to 1280x2880) for iOS Safari to kill the tab.
    assert page.count("var Module = {") == 1
    page = page.replace("var Module = {", "var Module = {\n        noImageDecoding: true, noAudioDecoding: true,", 1)
    # the loading screen: Chuck, a cartoon bar and a percentage instead of the template's byte counts
    page, n = re.subn(r'<div id="loading">.*?<div id="status">.*?</div>\s*<div></div>\s*</div>', LOADING, page, count=1, flags=re.S)
    assert n == 1, "loading block not found"
    # the engine file's download counts too (it comes before the data)
    page = page.replace("xml.responseType = 'arraybuffer';",
                        "xml.responseType = 'arraybuffer';\n          xml.onprogress = function (e) { if (window.ccProgress && e.lengthComputable) ccProgress('bin', e.loaded, e.total); };", 1)
    # the download waits for the gate (a desktop never fetches the 80 MB)
    n = page.count("xml.send(null);")
    assert n == 1, n
    page = page.replace("xml.send(null);", "window.ccStart = function () { xml.send(null); };")
    # the template alert()s every engine message containing "error": a blocking dialog for players
    page = page.replace('if( typeof(text) === "string" && text.toUpperCase().indexOf("ERROR") >= 0) alert(text);', "")
    page = page.replace("alert('WebGL context lost. You will need to reload the page.');",
                        "document.getElementById('gateMsg').textContent = 'Chuck needs a fresh start: reload the page.'; "
                        "document.getElementById('gatePlay').hidden = true; document.getElementById('gate').hidden = false;")
    page = page.replace("alert('Failed to load .bin file');",
                        "document.getElementById('status').textContent = 'Download failed: check your connection and reload.';")
    page = page.replace("</body>", GATE_JS + "  </body>", 1)
    assert "alert(" not in page, "an alert() is left in the page"

    if os.path.isdir(DST):
        shutil.rmtree(DST)
    os.makedirs(DST)
    for f in (NAME + ".bin", NAME + ".data"):
        shutil.copy2(os.path.join(SRC, f), os.path.join(DST, f))
    open(os.path.join(DST, "index.html"), "w", encoding="utf-8").write(page)
    total = sum(os.path.getsize(os.path.join(DST, f)) for f in os.listdir(DST))
    print("site/play/:", ", ".join(sorted(os.listdir(DST))), "(%.0f MB)" % (total / 1e6))


if __name__ == "__main__":
    main()
