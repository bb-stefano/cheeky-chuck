# Cheeky Chuck photo sharing Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Players email a framed in-game photo to a friend; the photo lands in a public gallery at cheekychuck.jocogiant.com, next to a landing page for the game, served by a Node service on the existing Hetzner box.

**Architecture:** One Node 22 service (`server/`) behind Caddy on 127.0.0.1:8095: the shared `accounts.mjs` module for email+password accounts, `photos.mjs` for upload/limits/gallery/unsubscribe, `mail.mjs` for templates and SMTP via nodemailer, SQLite through the existing `sqlite-d1.mjs` wrapper, JPEGs on disk served statically by Caddy. A static site (`site/`) for the landing page and the gallery (plain JS over `/api/gallery`). In the game, two new Lua views (`accountview.lua`, `photosend.lua`) and a small HTTP client (`account.lua`) in `overlay/`, wired in through `patch_game.py`.

**Tech Stack:** Node 22 (`node:http`, `node:sqlite`, `node:test`), nodemailer (only dependency), Caddy, systemd, Rocky Linux 10; Solar2D Lua (`network.request`, `native.newTextField/newTextBox`, `mime.b64`, `json`); static HTML/CSS/JS.

**Spec:** `docs/superpowers/specs/2026-11-04-photo-sharing-design.md`

## Global Constraints

- Service listens on `127.0.0.1:8095`; env from `/etc/cheekychuck.env` (`CC_DB`, `CC_PHOTOS`, `CC_SECRET`, `CC_APP_ORIGINS=app://cheekychuck`, `CC_PUBLIC_URL=https://cheekychuck.jocogiant.com`, `CC_MAX_MAILS_PER_DAY=200`, `SMTP_HOST`, `SMTP_PORT=587`, `SMTP_USER=contact@jocogiant.com`, `SMTP_PASS`, `PORT=8095`).
- `server/accounts.mjs` and `server/sqlite-d1.mjs` are verbatim copies of `C:\work\games\pacmonster\server\` (keep identical; never edit).
- Limits: comment ≤ 90 chars; image ≤ 2 MB decoded, JPEG magic `FF D8 FF`; 10 photos per account per 24 h; 2 mails per recipient per 24 h; 30 `/api/photo` per IP per 24 h (memory, `ponytail:`); `CC_MAX_MAILS_PER_DAY` global per 24 h.
- Mail from `Cheeky Chuck <contact@jocogiant.com>`, subject (en) `Someone sent you a Cheeky Chuck photo`, languages en/it/jp/zh, English fallback; `List-Unsubscribe` + `List-Unsubscribe-Post: List-Unsubscribe=One-Click`; sender's address never in the mail.
- Recipient addresses stored only as `sha256(lowercase)`.
- Secrets never in git; `deploy.sh` refuses to run without `/etc/cheekychuck.env` on the box.
- Game: new Lua in `overlay/`, decompiled-file changes only via `patch_game.py`, then `timeout 170 sh rebuild.sh` (must end `errors: 0`). Commit on `main`, push after each task (user's workflow for these games).
- Offline stubs in `compat.lua` become unconditional; `ONLINE_ENABLED` gates only the new flow.

## Review Focus

1. A `/api/photo` body that is not JSON, or `image` that is not base64, must answer 400, not crash the process (Task 2 test `rejects bad bodies`).
2. Two devices of one account sending at the same second must both count toward the 10/day (Task 2: counts come from the `mails` table, not memory; test `account limit counts all devices`).
3. An unsubscribe link with a tampered signature must do nothing and answer 400 (Task 3 test `unsubscribe rejects a bad token`).
4. A `comment` containing `<script>` or a `.` on its own line must arrive escaped in the HTML part and intact in the text part (Task 4 test `escapes html`; nodemailer dot-stuffs).
5. Deleting an account while its photo is open in the gallery: `/api/gallery?id=` answers 404 and `/photos/<id>.jpg` is gone (Task 3 test `delete removes photos`).

---

### Task 1: Service skeleton with accounts

**Files:**
- Create: `server/server.mjs`, `server/app.mjs`, `server/progress.mjs`, `server/migrations/0000_accounts.sql` (copy of `C:\work\games\pacmonster\server\migrations\0000_accounts.sql`), `server/accounts.mjs`, `server/sqlite-d1.mjs` (copies), `package.json`, `tests/helpers.mjs`, `tests/accounts.test.mjs`
- Modify: `.gitignore` (add `node_modules/`, `*.db`)

**Interfaces:**
- Produces: `createApp({db, photosDir, mailer, env}) → {handle(req: Request, ip: string): Promise<Response>}` in `app.mjs`. Routes: `/health`, `/api/account` (stamps `Origin: app://cheekychuck` when the request has no Origin, then `handleAccount(req, db, {cookie:'cc_account', clean, merge, appOrigins: env.CC_APP_ORIGINS.split(','), ip})`), everything else 404 until Tasks 2–3 add `/api/photo`, `/api/gallery`, `/api/unsubscribe`.
- `server.mjs`: `node:http` adapter copied from `last-campfire/server/server.mjs` (body cap 4 MB, `x-forwarded-for` last entry as ip), calls `createApp` with `openD1(env.CC_DB, migrations)`.
- `progress.mjs`: `cleanProgress = () => ({})`, `mergeProgress = () => ({})`.
- `tests/helpers.mjs`: `makeApp({mailer} = {}) → {app, db, photosDir, sent}`: `openD1(':memory:', …)`, a temp dir, `mailer = {send: async m => sent.push(m)}` unless given, env `{CC_SECRET:'test', CC_APP_ORIGINS:'app://cheekychuck', CC_PUBLIC_URL:'https://cc.test', CC_MAX_MAILS_PER_DAY:'200'}`; `post(app, path, body, {token, ip='1.1.1.1', origin} = {})` building a `Request` with JSON body and `X-Account-Token`; `register(app, email='amy@example.com') → token`.
- `package.json`: `"type":"module"`, `"scripts":{"test":"node --test tests/"}`, `"dependencies":{"nodemailer":"^7"}`.

- [ ] **Step 1: Write the failing test** `tests/accounts.test.mjs`

```js
test('register from the app (no Origin) returns a token', async()=>{
 const {app}=makeApp();const r=await post(app,'/api/account',{action:'register',email:'amy@example.com',password:'eightchars'});
 assert.equal(r.status,201);assert.match((await r.json()).token,/^[A-Za-z0-9_-]{40,}$/);
});
test('health', async()=>{assert.deepEqual(await (await makeApp().app.handle(new Request('http://x/health'),'1.1.1.1')).json(),{ok:true});});
```

- [ ] **Step 2: Run `npm test`** — expected: FAIL, `app.mjs` not found.
- [ ] **Step 3: Copy the shared files, write `progress.mjs`, `app.mjs`, `server.mjs`, `package.json`; `npm install`.**
- [ ] **Step 4: Run `npm test`** — expected: PASS (2 tests).
- [ ] **Step 5: Commit** `git add server tests package.json package-lock.json .gitignore && git commit -m "server: accounts service skeleton on 8095"`

### Task 2: Photo upload, limits, mail dispatch

**Files:**
- Create: `server/photos.mjs`, `server/migrations/0001_photos.sql`, `tests/photos.test.mjs`
- Modify: `server/app.mjs` (route `POST /api/photo`)

**Interfaces:**
- Consumes: Task 1 `createApp`, `makeApp`, `post`, `register`; Task 4's `buildMail` (stub it for now: `app.mjs` imports `buildMail` from `./mail.mjs`; create `mail.mjs` with `export function buildMail({lang, comment, id, publicUrl, unsubscribeUrl}) → {subject, text, html, headers}` returning the English template; Task 4 completes it).
- Produces in `photos.mjs`: `postPhoto({db, body, session, ip, now, photosDir, mailer, env, buildMail}) → Response`; `limits = {perAccount:10, perRecipient:2, perIp:30}` exported; `hashEmail(email) → sha256 hex of trimmed lowercase`; `unsubscribeToken(email, secret) → string`, `emailFromToken(token, secret) → string|null` (base64url(email) + '.' + hmac-sha256-base64url, `timingSafeEqual`).
- Migration `0001_photos.sql`: tables exactly as the spec's schema plus `CREATE INDEX mails_to ON mails(to_hash, created)`, `CREATE INDEX photos_created ON photos(created)`.
- Response `200 {id, url:`${CC_PUBLIC_URL}/gallery?id=${id}`, delivered:true|false}`; errors `400 {error}` (invalid JSON/base64/not JPEG/too big/comment > 90/bad email/missing lang defaults to 'en'), `401` no session, `429 {error:'You have sent enough photos for today.'}` account/IP/recipient limit, `503 {error:'Photo sharing is busy right now. Please try again tomorrow.'}` global cap, `502 {error:'Could not send the email. Please try again later.'}` when `mailer.send` throws (row and file removed).
- Mailer contract: `mailer.send({to, subject, text, html, headers}) → Promise`.

- [ ] **Step 1: Write failing tests** in `tests/photos.test.mjs` (a 1×1 JPEG fixture as base64 constant `JPEG`):

```js
test('stores the photo and mails the friend', …) // 200, file `${photosDir}/${id}.jpg` exists, sent[0].to==='bob@example.com', sent[0].html includes `gallery?id=${id}` and not 'amy@example.com', db photos row comment 'hi'
test('rejects bad bodies', …) // non-JSON → 400; image:'###' → 400; image base64 of 'GIF89a' → 400; comment of 91 chars → 400; to:'nope' → 400; no token → 401
test('blocked recipient gets no mail but the photo stays', …) // insert blocked hash → 200 delivered:false, sent.length 0
test('account limit counts all devices', …) // two tokens of one account, 10 sends alternate → 11th 429
test('recipient limit', …) // 2 to bob from two accounts → 3rd 429
test('global cap', …) // env CC_MAX_MAILS_PER_DAY '1' → 2nd 503, no row
test('smtp failure removes the photo', …) // mailer throws → 502, no row, no file
```

- [ ] **Step 2: Run `npm test`** — expected: FAIL, route 404.
- [ ] **Step 3: Implement `photos.mjs` + migration + route.** Limits via `SELECT count(*) FROM mails WHERE … AND created > now-86400000` (account via join on photos.account; recipient via to_hash; global without filter); per-IP in a `Map` like `accounts.mjs`'s `attempts`, marked `ponytail:`. Insert photo row + write file, then `mails` row, then `mailer.send`; on throw delete both rows and the file.
- [ ] **Step 4: Run `npm test`** — expected: PASS.
- [ ] **Step 5: Commit** `git commit -am "server: /api/photo with limits and mail dispatch"` (add new files).

### Task 3: Gallery, unsubscribe, account deletion cascade

**Files:**
- Modify: `server/photos.mjs`, `server/app.mjs`
- Create: `tests/gallery.test.mjs`

**Interfaces:**
- Produces: `gallery({db, url, env}) → Response` for `GET /api/gallery`: `?id=N` → `200 {id, comment, created, url:'/photos/N.jpg'}` or 404; else `?before=<id>&limit=<1..60, default 30>` → `200 [{id, comment, created, url}]` newest first, `hidden=0` only. `unsubscribe({db, url, method, env}) → Response` for `GET|POST /api/unsubscribe?t=`: valid → inserts into `blocked` (`OR IGNORE`), `200 text/html` "You won't get Cheeky Chuck photos again."; bad token → 400. In `app.mjs`, after `handleAccount` answers a `delete` with `deleted:true`, call `deleteAccountPhotos({db, photosDir, accountId})` (so read the session's account id **before** calling the module: `SELECT a.id FROM account_sessions s JOIN accounts a … WHERE s.secret=sha(token)`; copy `sha` from the module's pattern).

- [ ] **Step 1: Write failing tests** `tests/gallery.test.mjs`: `lists newest first and pages with before`, `single photo and 404`, `hidden photos are skipped`, `unsubscribe blocks the address` (then a send to it → delivered:false), `unsubscribe rejects a bad token`, `delete removes photos` (file and row gone, gallery 404).
- [ ] **Step 2: Run `npm test`** — expected: FAIL.
- [ ] **Step 3: Implement.**
- [ ] **Step 4: Run `npm test`** — expected: PASS.
- [ ] **Step 5: Commit** `git commit -am "server: gallery, unsubscribe, delete cascade"`.

### Task 4: Mail templates and SMTP transport

**Files:**
- Modify: `server/mail.mjs`
- Create: `tests/mail.test.mjs`

**Interfaces:**
- Produces: `buildMail({lang, comment, id, publicUrl, unsubscribeUrl})` with templates for `en`, `it`, `jp`, `zh` (fallback `en`): subject per language (en as in Global Constraints; it `Qualcuno ti ha inviato una foto di Cheeky Chuck`; jp `Cheeky Chuckの写真が届きました`; zh `有人给你发了一张 Cheeky Chuck 照片`), text and HTML parts with: intro line, the comment in quotes (omitted when empty; HTML-escaped in html), the link `${publicUrl}/gallery?id=${id}`, one line about the game with `${publicUrl}/`, the line "Don't want these? ${unsubscribeUrl}" (localised). `headers: {'List-Unsubscribe':`<${unsubscribeUrl}>`,'List-Unsubscribe-Post':'List-Unsubscribe=One-Click'}`. `smtpMailer(env) → {send}` using `nodemailer.createTransport({host, port, secure:false, requireTLS:true, auth:{user, pass}})` with `from:'Cheeky Chuck <contact@jocogiant.com>'`; when `SMTP_HOST` is empty, `send` logs the mail to stdout instead (dev mode; `server.mjs` uses this).

- [ ] **Step 1: Write failing tests**: `escapes html` (comment `<script>x</script>` → html contains `&lt;script&gt;`, text contains `<script>`), `four languages and fallback` (subjects differ for en/it/jp/zh; `lang:'de'` → English), `empty comment omitted`, `unsubscribe headers present`.
- [ ] **Step 2: Run `npm test`** — expected: FAIL.
- [ ] **Step 3: Implement.**
- [ ] **Step 4: Run `npm test`** — expected: PASS.
- [ ] **Step 5: Commit** `git commit -am "server: localised mail templates, SMTP transport"`.

### Task 5: Website: landing page and gallery

**Files:**
- Create: `site/index.html`, `site/gallery/index.html`, `site/gallery.js`, `site/site.css`, `site/robots.txt`, `site/favicon.png` (from `game/Icon@2x.png`), `site/assets/icon.png`, `site/assets/shot-1..5.png`, `site/assets/photo_frame.png` (copy of `game/uipic/photo_frame@4x.png`), `tests/site.test.mjs`
- Screenshots: launch the simulator, use `dev/replay.ps1` with injector commands to reach: the room with Chuck idle, a belly punch reaction (`dtap 160 230`), the light off (`dtap 262 170`), the cat (`dtap 60 300`), the framed photo (`tap 160 393`); capture each with the child-window capture from `dev/capture.ps1` and crop to the 320×480 content area (PowerShell `System.Drawing`); keep them under 150 KB each (PNG → quantised, or JPEG q85).

**Interfaces:**
- `gallery.js`: on load, reads `location.search`; `id` → `fetch('/api/gallery?id='+id)` and renders one `<figure>` with the image, comment, date and a "See all photos" link; else renders the list and a "More" button that refetches with `before=<last id>`; images shown inside the frame art.
- `index.html`: `<title>Cheeky Chuck – the cheeky virtual boy who reacts to everything</title>`, meta description ≤ 160 chars, OG tags, JSON-LD `MobileApplication` (`operatingSystem: "Android, iOS"`), the icon, tagline, 5 screenshots, badges (two `<a class="badge">` elements in a `<nav id="stores">` with `href="https://jocogiant.com"` until listings exist), features list, link to `/gallery`, footer like jocogiant.com (Joco Giant · EGGsist). Same fonts (`bubble-rounded.ttf`, `bubble-slim.ttf` from `C:\work\games\`) and the night-sky palette so it reads as a jocogiant.com page.

- [ ] **Step 1: Write failing test** `tests/site.test.mjs`: `index.html` contains `<title>Cheeky Chuck`, a `meta name="description"`, `og:image`, `"@type": "MobileApplication"`, `href="/gallery"`; `gallery/index.html` references `/gallery.js`; `gallery.js` references both `/api/gallery?id=` and `before=`.
- [ ] **Step 2: Run `npm test`** — expected: FAIL.
- [ ] **Step 3: Capture the screenshots, write the pages.**
- [ ] **Step 4: Run `npm test`; open `site/index.html` and `site/gallery/index.html?id=1` through a local run (`CC_DB=dev.db CC_PHOTOS=dev-photos SMTP_HOST= node server/server.mjs` plus `python -m http.server` is not enough for `/api`, so add `npm run dev`: `server.mjs` serves `site/` and `/photos/` itself when `CC_SITE` is set, mirroring the Caddy routes)** — expected: pages render, one photo view works after a `curl` upload.
- [ ] **Step 5: Commit** `git add site tests/site.test.mjs server/server.mjs package.json && git commit -m "site: landing page and gallery"`.

### Task 5b: Playwright end-to-end check of the site

**Files:**
- Create: `tests/e2e/site.e2e.mjs`, `package.json` script `"e2e": "node tests/e2e/site.e2e.mjs"`
- Dev deps: `playwright-core` (devDependency; browser channel `msedge`, already installed on this machine; never bundled in the deploy, which runs `npm ci --omit=dev`)

**Interfaces:**
- Consumes: Task 5's `npm run dev` (server serving `site/` + `/api` + `/photos/` on `http://127.0.0.1:8095`, env `CC_SITE=site`), Task 2's `/api/photo`.
- `site.e2e.mjs`: starts the server as a child process with a temp `CC_DB`/`CC_PHOTOS` and `SMTP_HOST=` (log mailer), registers an account and posts two photos with `fetch` (comments `first` and `second`), then with Playwright (`chromium.launch({channel:'msedge', headless:true})`): (1) `/` has title starting `Cheeky Chuck`, the five screenshots load (`naturalWidth > 0`), the gallery link navigates to `/gallery`; (2) `/gallery` shows two figures, `second` before `first`, images load; (3) `/gallery?id=<first id>` shows exactly one figure with comment `first` and a "See all photos" link; (4) `/gallery?id=999` shows a not-found message. Exits non-zero on any failure; kills the server in `finally`. `E2E_BASE_URL` env overrides the base URL to run the browser steps against production after deploy (then it skips the upload setup and only checks `/`, `/gallery` renders and `?id=999`).

- [ ] **Step 1: Write the script; `npm install -D playwright-core`.**
- [ ] **Step 2: Run `npm run e2e`** — expected: `PASS: site e2e (4 checks)` and exit 0.
- [ ] **Step 3: Commit** `git add tests/e2e package.json package-lock.json && git commit -m "site: playwright end-to-end check"`.

### Task 6: Deploy

**Files:**
- Create: `deploy/deploy.sh`, `deploy/cheekychuck.caddy`, `deploy/cheekychuck.service`, `deploy/README.md` (env keys, moderation one-liner, how to add the DNS record)

**Interfaces:**
- `deploy.sh`: like `last-campfire/deploy/deploy.sh`; runs `npm test`, `npm ci --omit=dev`, tars `site server node_modules package.json deploy/*`; on the box: aborts with the list of required keys if `/etc/cheekychuck.env` is missing; `/srv/cheekychuck` swap; `/opt/cheekychuck` swap; `install -d -m 750 -o caddy -g caddy /var/lib/cheekychuck /var/lib/cheekychuck/photos`; unit (`EnvironmentFile=/etc/cheekychuck.env`, `ReadWritePaths=/var/lib/cheekychuck`, `MemoryMax=200M`, user `caddy`); health on 8095; Caddy site installed, validated, reloaded.
- Caddy site `cheekychuck.jocogiant.com`: `handle /api/photo { request_body { max_size 4MB } reverse_proxy 127.0.0.1:8095 }`, `handle /api/* { request_body { max_size 64KB } reverse_proxy 127.0.0.1:8095 }`, `handle /photos/* { root * /var/lib/cheekychuck header Cache-Control "public, max-age=31536000, immutable" file_server }`, `handle { root * /srv/cheekychuck try_files {path} {path}/index.html encode zstd gzip file_server }` with the nosniff/referrer headers.

- [ ] **Step 1: Write the three files and the README.**
- [ ] **Step 2: `bash -n deploy/deploy.sh`; `caddy validate` is only available on the box, so validate the site block by running the remote part up to validation with the env file present.** Expected: deploy prints `Deployed: https://cheekychuck.jocogiant.com` once DNS and the env file exist; until then it stops at the env check with the key list.
- [ ] **Step 3: Commit** `git add deploy && git commit -m "deploy: cheekychuck.jocogiant.com service, site and Caddy"`.

### Task 7: Game: account client and account screen

**Files:**
- Create: `overlay/account.lua`, `overlay/accountview.lua`
- Modify: `overlay/compat.lua` (make the offline stubs unconditional; add `API_BASE = system.getInfo("environment") == "simulator" and "http://127.0.0.1:8095" or "https://cheekychuck.jocogiant.com"`; `ONLINE_ENABLED = true`), `patch_game.py` (confview `L9_2`: replace its body with `require("accountview").show()`), `game/localization.lua` via `patch_game.py` appending ids 300–320 with en/it/jp/zh strings: `UI_ACCOUNT_TITLE`, `UI_EMAIL`, `UI_PASSWORD`, `UI_REGISTER`, `UI_LOGIN`, `UI_LOGOUT`, `UI_DELETE_ACCOUNT`, `UI_SIGNED_IN_AS`, `UI_FRIEND_EMAIL`, `UI_SEND`, `UI_PHOTO_SENT`, `ERR_NETWORK`.

**Interfaces:**
- `account.lua`: `account.token() → string|nil` (from `account.json` in `system.DocumentsDirectory`), `account.email()`, `account.call(action, fields, cb)` posting JSON to `API_BASE.."/api/account"` with headers `Content-Type: application/json` and `X-Account-Token`; `cb(ok, data)` where `data` is the decoded JSON or `{error=...}`; `register(email, pw, cb)`, `login(email, pw, cb)` store `token`/`email` on success; `logout(cb)`, `delete(pw, cb)` clear them. `account.request(method, path, body, cb)` generic for Task 8.
- `accountview.lua`: `show({onDone = function(signedIn) end})`: full-screen alpha layer (`display.newRect` 0,0,320,480 at alpha 0.85), title text, `native.newTextField` email (inputType "email") and password (`isSecure`), `ui.newButton` Register / Log in / Cancel (`html/im/ok.png`, `send.png`, `cancel.png` with `text` labels from localization) or, when `account.token()`, "Signed in as <email>", Log out, Delete account (prompts for password with `native.showAlert`? No: reuses the password field) and Close. Errors shown with `native.showAlert`. Removes everything and calls `onDone` once.

- [ ] **Step 1: Write the files; `python -I luacheck51.py overlay/account.lua overlay/accountview.lua`** — expected: no errors.
- [ ] **Step 2: Rebuild (`timeout 170 sh rebuild.sh`) — expected `errors: 0`.**
- [ ] **Step 3: Start the service locally (`CC_DB=dev.db CC_PHOTOS=dev-photos SMTP_HOST= CC_SECRET=dev CC_APP_ORIGINS=app://cheekychuck PORT=8095 node server/server.mjs`), launch the simulator with `dev/replay.ps1`, open settings (`tap 226 443`), tap the Accounts tab area (`tap 240 60`), register via the injector (`lua require("account").register("amy@example.com","eightchars",function(ok,d) print("[acct]",ok,d.email or d.error) end)`)** — expected: `[acct] true amy@example.com` in `sim.log` and `account.json` in the sandbox Documents.
- [ ] **Step 4: Commit and push** `git add overlay patch_game.py game && git commit -m "game: player accounts (client + screen)" && git push`.

### Task 8: Game: send-photo screen replacing the web page

**Files:**
- Create: `overlay/photosend.lua`
- Modify: `patch_game.py` (the `showPostMessageView` patch from 2026-11-03 becomes: `if ONLINE_ENABLED then require("photosend").show({ onSent = function() L7_2(); L8_2() end, onCancel = function() L11_2({ url = "postmsg:cancel" }) end }); return end` before the existing offline-OK branch).

**Interfaces:**
- `photosend.show({onSent, onCancel})`: shows `html/im/photo_confirm_<userPrefLang>.png` (fallback en) at the top, `native.newTextBox` comment (90 chars enforced on `userInput` phase "editing"), `native.newTextField` friend email, Send/Cancel. Send: if not `account.token()` → `accountview.show({onDone = function(ok) if ok then send() end end})`; `send()` shows `uipic/screenshot_uploading_<lang>.png`, reads `system.pathForFile("screenshot.jpg", system.DocumentsDirectory)` as bytes, `mime.b64`, `account.request("POST", "/api/photo", {image, comment, to, lang = userPrefLang}, cb)`; success → remove own objects, `onSent()`; `429/503/502/400` → `native.showAlert` with the server's `error` text and stay; `401` → clear token, open accountview. Cancel → remove own objects, `onCancel()`.

- [ ] **Step 1: Write `photosend.lua`, update the patch, luacheck, rebuild** — expected `errors: 0`.
- [ ] **Step 2: Simulator end-to-end with the local service: `tap 160 393` (camera), then via injector `lua` fill the fields (`photosend._debugFill("hi there","bob@example.com")` exported only when `TOUCH_DEBUG`), `tap` Send; expected in `sim.log`: `[photosend] sent id=1`, the service log prints the mail to stdout with `gallery?id=1`, `dev-photos/1.jpg` exists, the "photo uploaded" screen shows and its OK returns to the game (stage child count back to 8 via the probe used on 2026-11-03).**
- [ ] **Step 3: Cancel path: camera → Cancel → back to the game (same probe).**
- [ ] **Step 4: Commit and push** `git commit -am "game: send photo to a friend by email" && git push`.

### Task 9: Ship

- [ ] **Step 1: Owner items: DNS A record, `/etc/cheekychuck.env` on the box (README lists the keys). Stop here until both exist.**
- [ ] **Step 2: `bash deploy/deploy.sh`** — expected the `Deployed:` line; `curl https://cheekychuck.jocogiant.com/health` is not proxied (only `/api/*`), so check `curl -s https://cheekychuck.jocogiant.com/api/gallery` → `[]` and the landing page in a browser.
- [ ] **Step 2b: `E2E_BASE_URL=https://cheekychuck.jocogiant.com npm run e2e`** — expected PASS against production.
- [ ] **Step 3: One real send from the simulator with `API_BASE` temporarily pointed at production (set `CC_API_OVERRIDE` in `compat.lua` dev section), to the owner's own address; confirm the mail arrives (not in spam) and the gallery link shows the photo. Then revert the override.**
- [ ] **Step 4: Update memory notes (`cheekychuck-revival.md`: service, ports, env keys, deploy) and commit/push.**
