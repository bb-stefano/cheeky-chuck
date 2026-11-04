# Cheeky Chuck photo sharing, accounts and cheekychuck.jocogiant.com

Design, 2026-11-04. Decisions the owner made are stated as such; everything marked *(builder's call)* or *(my call)* was decided by the author of this document and can be changed without asking.

## Intent

Cheeky Chuck (Solar2D, Android + iOS, mobile only) is being revived. Its 2012 backend (api.cheekychuck.com) is gone. The in-game camera used to upload the framed photo plus a comment and post it to the player's social networks. We replace that with our own service: the player takes a photo, writes a comment and a friend's email address, and the friend gets an email with a link to that one photo in a public web gallery. The service runs on the same Hetzner box, in the same style, as the Crash of Crowns, Squid Maze and Last Campfire account services.

## Goals

- `cheekychuck.jocogiant.com/` : a landing page describing the game, a few screenshots, store badges, written for search engines. **Not** the game itself (owner: mobile app only).
- `cheekychuck.jocogiant.com/gallery` : public gallery of players' photos, newest first; `/gallery?id=123` shows only that photo, which is what the email links to.
- In-game: after the framed photo, the player can enter a comment and a friend's email and send. The server stores the photo, emails the friend from `Cheeky Chuck <contact@jocogiant.com>`, and the photo appears in the gallery.
- Player accounts "the same as the other games": email + password, the shared `accounts.mjs` module, register/login/logout/delete from inside the game. Sending a photo requires an account.
- Deployable with one script, like `last-campfire/deploy/deploy.sh`.

## Non-goals

- Posting to social networks, OAuth logins, the old Facebook/Twitter/Weibo/Renren/Live code and the `html/accounts_*.html` pages: dropped.
- A web build of the game.
- Viewer comments, likes, user profiles, search, moderation UI, email verification, password reset (deferred in the other games too; still deferred).
- Syncing game progress (discovered reactions, stars, unlocked backgrounds) to the account. The account exists for sending photos and owning them. `progress` stays `{}` for now; the module's `clean`/`merge` hooks are kept so progress sync can be added later.

## Anti-goals

- Becoming a spam relay. An in-game form that mails arbitrary addresses must be rate-limited, templated and blockable, or the domain's mail reputation dies and takes contact@jocogiant.com with it.
- Secrets in git. SMTP credentials live only on the server.
- Breaking the other three services: nothing shared on the box is modified except adding our Caddy site, unit and directories.

## Constraints and facts found

- Server: Rocky Linux 10, Node v22.23.2, Caddy with `/etc/caddy/sites/*.caddy`, services as `systemd` units running as user `caddy`, SQLite via `node:sqlite` (`sqlite-d1.mjs` wrapper), ports 8090, 8092, 8093, 8094 taken. **Use 8095.**
- Mail: no Postfix/sendmail installed; outbound port 25 is blocked by Hetzner; port 587 is open. `jocogiant.com` MX and SPF point at Dynadot webhost mail (`include:spf.webhost.dynadot.com`). So: send through Dynadot's SMTP submission server with the `contact@jocogiant.com` mailbox credentials, STARTTLS on 587. SPF already covers it; DKIM is whatever Dynadot does for that mailbox.
- DNS: `cheekychuck.jocogiant.com` does not resolve yet. The owner adds an A record to 135.181.204.213 (as for the other subdomains) before the first deploy; Caddy then gets the certificate itself.
- The game: decompiled Lua rebuilt by `rebuild.sh` (`src/` → `game/`, patches from `patch_game.py`, files from `overlay/` copied over). New Lua files go in `overlay/`; changes to decompiled files go through `patch_game.py`. Solar2D has `network.request` (JSON), `native.newTextField`/`newTextBox`, `display.save` already produces `screenshot.jpg` (1080×1086) in `system.DocumentsDirectory`.
- Existing art for the flow: `uipic/photo_confirm_*.png` (comment prompt), `screenshot_uploading_*.png`, `photo_uploaded_*.png`, `html/im/ok.png`, `cancel.png`, `send.png`, `photo_frame.png`. Four languages: en, it, jp, zh (`localization.lua`).

## The service (server/)

Node 22, same shape as `last-campfire/server`: `server.mjs`, `accounts.mjs` (verbatim copy of the shared module), `sqlite-d1.mjs` (copy), `migrations/`, `progress.mjs` (clean → `{}`, merge → `{}`), plus `photos.mjs` and `mail.mjs`. Listens on `127.0.0.1:8095`. One dependency, `nodemailer`, for SMTP *(my call: a hand-rolled STARTTLS + AUTH client is ~60 lines but nodemailer gets dot-stuffing, encoding and auth right; vendor it via `npm ci` in the deploy so the server has no network install at runtime — or `npm install --omit=dev` on the box, builder's call)*.

Environment (from `EnvironmentFile=/etc/cheekychuck.env`, mode 600, created by hand once): `CC_DB=/var/lib/cheekychuck/cheekychuck.db`, `CC_PHOTOS=/var/lib/cheekychuck/photos`, `SMTP_HOST`, `SMTP_PORT=587`, `SMTP_USER=contact@jocogiant.com`, `SMTP_PASS`, `CC_SECRET` (random, signs unsubscribe tokens), `CC_APP_ORIGINS` (unused by the native app, kept for parity), `PORT=8095`.

### Routes

All under `/api/*`, proxied by Caddy. The app authenticates with `X-Account-Token` (as the Android apps of the other games do; there is no web client, so the cookie path is unused but stays in the shared module).

The shared module rejects POSTs whose `Origin` is neither the site nor a listed app origin, and only returns `token` to app origins. A Solar2D `network.request` sends no `Origin` at all. *(My call: `server.mjs` stamps `Origin: app://cheekychuck` onto any `/api/account` request that arrives without one, and `CC_APP_ORIGINS=app://cheekychuck` is required in the env file. This neutralises the module's CSRF check for this service, which is fine: no browser ever logs in here. The module itself stays verbatim.)*

Legacy offline stubs in `compat.lua` (the `showWebPopup` file-URL fix, the `socket.http` stub that protects the old win-screen brag in `sendwingamemsgview.lua`) become unconditional; `ONLINE_ENABLED` gates only the new photo/account flow.

- `GET|POST /api/account` : the shared module, unchanged contract (`register`, `login`, `sync`, `logout`, `delete`). On `delete`, also delete the account's photos (rows and files) *(my call: Google Play's in-app deletion must remove the player's content)*.
- `POST /api/photo` : requires a session. JSON `{image, comment, to}`: `image` base64 JPEG (max 2 MB decoded; must start with the JPEG magic bytes; stored as-is, no re-encoding), `comment` ≤ 90 chars (the old limit) plain text, `to` an email address. *(my call: JSON + base64 rather than multipart: one request, no multipart parser on either side; Caddy `max_size 4MB` on this route.)* Steps: validate → rate-limit checks → store file `<CC_PHOTOS>/<id>.jpg` and row → send the email → `200 {id, url}`. If SMTP fails, delete the row and file and answer `502 {error:"Could not send the email. Please try again later."}` so a retry doesn't duplicate the photo. If `to` is blocked, answer `200` with `{id, url, delivered:false}` and keep the photo *(my call: don't reveal blocks to the sender)*.
- `GET /api/gallery?before=<id>&limit=30` : newest first, `[{id, comment, created, url}]` of non-hidden photos. `GET /api/gallery?id=123` : that one photo or 404.
- `GET /api/unsubscribe?t=<token>` : token = `base64url(email) + "." + HMAC-SHA256(CC_SECRET, email)`; adds the email hash to `blocked`, answers a tiny HTML "You won't get Cheeky Chuck photos again." page. Idempotent, no login.
- `GET /health` : `{"ok":true}`.
- Photos themselves are served by Caddy as static files: `/photos/<id>.jpg` from `/var/lib/cheekychuck/photos` (readable by `caddy`, which is also the service user) with a long cache header.

### Rate limits and abuse *(my calls; numbers are knobs in one place)*

- Per account: 10 photos sent per 24 h.
- Per recipient address: 2 mails per 24 h from all senders, 10 ever before it is only reachable again after the recipient's own action (practically: never, since there is no such action; builder may simplify to "2 per day").
- Per IP: 30 `/api/photo` per 24 h; register/login limits come from the shared module.
- Blocked list: unsubscribed addresses, hashed (SHA-256, lowercase) so the db does not hold strangers' addresses in clear.
- Recipients' addresses are stored only as hashes plus the time (`mails` table) for the per-recipient limit; the clear address is used once to send and not kept.
- `hidden` flag on photos; no admin UI. Moderation is `sqlite3 /var/lib/cheekychuck/cheekychuck.db "UPDATE photos SET hidden=1 WHERE id=…"` plus deleting the file; documented in the README.

### Schema

```
accounts, account_sessions        -- from the shared migration, unchanged
photos(id INTEGER PK, account TEXT, comment TEXT, created INTEGER, hidden INTEGER DEFAULT 0)
mails(id INTEGER PK, photo INTEGER, to_hash TEXT, created INTEGER)
blocked(to_hash TEXT PK, created INTEGER)
```

### The email

From `Cheeky Chuck <contact@jocogiant.com>`, no Reply-To. Subject: `Someone sent you a Cheeky Chuck photo`. Plain text and a minimal HTML part, fixed template: "A Cheeky Chuck player sent you this photo:" → the comment (HTML-escaped, in quotes, omitted if empty) → the link `https://cheekychuck.jocogiant.com/gallery?id=<id>` → one line about the game with the landing page link → "Don't want these? <unsubscribe link>". Headers `List-Unsubscribe: <unsubscribe url>` and `List-Unsubscribe-Post: List-Unsubscribe=One-Click` *(my call: the one-click variant means a `POST` to the same URL must also work)*. The sender's email address is **not** disclosed to the friend *(my call; the old product posted under the player's own social identity, but here we have nothing to show except an address the player may not want shared)*. The image is linked, not attached, to keep mails small and the gallery the single source.

## The website (site/)

Static files in `site/`, deployed to `/srv/cheekychuck`:

- `index.html` : the landing page. Title "Cheeky Chuck – the cheeky virtual boy who reacts to everything", a meta description and natural copy using the terms people search for (virtual pet, reactions, tickle, punch, shake, cat, light switch, boxing, free mobile game, Android, iPhone), 4–6 screenshots (taken from the simulator at 2× with `dev/capture.ps1`, cropped to the 320×480 content; also the Champ ring shot from `reference/champ/` is **not** used, that mode isn't in this build), the app icon from `apk/res`, Google Play and App Store badges (hrefs to the store listings when they exist; until then they link to `https://jocogiant.com`, builder: keep them in one obvious place), Open Graph tags, JSON-LD `MobileApplication`, a link to the gallery, EGGsist/Joco Giant footer matching `jocogiant.com`. No JS needed.
- `gallery/index.html` + `gallery.js` : fetches `/api/gallery`; a grid of photos (the JPEG is 1080×1086, show it inside `photo_frame.png` as in the game, or plain with rounded corners, builder's call), comment and date under each, "more" button paging with `before`. With `?id=`, shows only that photo large, with a "See all photos" link. Shares the landing page's header/footer style. Title and description per mode.
- `robots.txt`, `favicon` from the app icon.

## The game (overlay/ and patch_game.py)

- `ONLINE_ENABLED = true` in `compat.lua` once the service is live; `API_BASE = "https://cheekychuck.jocogiant.com"` next to it. The offline stubs stay for `ONLINE_ENABLED = false`.
- New `overlay/account.lua`: `account.register(email, pw, cb)`, `login`, `logout`, `delete(pw, cb)`, `account.token()`; token persisted in `account.json` in `system.DocumentsDirectory`; all calls `network.request(API_BASE.."/api/account", "POST", listener, {headers={["Content-Type"]="application/json", ["X-Account-Token"]=token}, body=json.encode(...)})`. Solar2D ships `json`.
- New `overlay/accountview.lua`: a native screen (dark alpha layer + `native.newTextField` for email and password + ui buttons Register / Log in / Cancel; when signed in: the email, Log out, Delete account with password confirmation). Opened by the photo flow when there is no token, and from the settings page's Accounts tab (the `sns:` URL handler in `confview.lua` → open this view instead of the accounts HTML).
- Photo flow (`screenshotview.lua` via `patch_game.py`): replace the `postmsg_*.html` popup with a native view: the `photo_confirm_<lang>.png` art, a `native.newTextBox` for the comment (max 90 chars), a `native.newTextField` for the friend's email, Send and Cancel buttons (`html/im/send.png`, `cancel.png`). Send: if no account → account view, then back here; else shows `screenshot_uploading_<lang>.png`, reads `screenshot.jpg`, base64-encodes it (`mime.b64` from LuaSocket, shipped with Solar2D) and posts. On success the existing `photo_uploaded_<lang>.png` + OK screen (`L8_2`); on error the existing retry/cancel alert. The old `snsconfirmview.lua` path is no longer reached (file can stay).
- The photo offline OK-button patch added today stays as the `ONLINE_ENABLED = false` branch.
- Strings for the new fields and errors: add to `localization.lua`'s four languages (builder may use English for jp/zh with a `ponytail:` note if no translation is available).
- iOS/Android `build.settings`: Android needs `INTERNET` permission (check it is still there); iOS ATS is fine with HTTPS.

## Deploy (deploy/)

`deploy/deploy.sh`, `deploy/cheekychuck.caddy`, `deploy/cheekychuck.service`, mirroring Last Campfire:

- tars `site/`, `server/` (with `node_modules` if vendored), the Caddy and unit files; on the box: `/srv/cheekychuck` (static, swap via `.new`/`.old`), `/opt/cheekychuck` (service), `/var/lib/cheekychuck/{cheekychuck.db,photos/}` owned by `caddy` mode 750, unit with `EnvironmentFile=/etc/cheekychuck.env`, `ReadWritePaths=/var/lib/cheekychuck`, `MemoryMax=200M`; health check on 8095; Caddy site validated and reloaded.
- `deploy.sh` refuses to run if `/etc/cheekychuck.env` is missing on the box and prints the keys it needs.
- Caddy site: `cheekychuck.jocogiant.com` with `handle /api/photo` (`max_size 4MB`), `handle /api/*` (`64KB`) → `reverse_proxy 127.0.0.1:8095`; `handle /photos/*` → `file_server` rooted at `/var/lib/cheekychuck/photos` with `Cache-Control: public, max-age=31536000, immutable`; `handle` → `/srv/cheekychuck` with the usual headers and `try_files` so `/gallery` serves `gallery/index.html`.
- `npm test` runs `node --test server/` before deploying; tests use a temporary SQLite file and a fake mailer: photo post stores file + row and sends one mail; blocked recipient → no mail; limits trip; `delete` removes photos; `unsubscribe` token round-trip; gallery paging and `?id=`.

## Left to the builder

- Exact file split inside `server/`, the look of the gallery and landing page within the constraints above, nodemailer vendoring strategy, the Lua view layout (reuse `ui.newButton` and the existing PNGs), where the screenshot crop for the landing page comes from.
- Whether `comment` is also shown in the email subject (default: no).
- Any `ponytail:` ceilings (in-memory IP counters, no admin UI) are acceptable and should be marked as such in code.

## Open items for the owner (answered before building)

1. SMTP: confirm `contact@jocogiant.com` is a Dynadot mailbox and put its SMTP host, port, user and password into `/etc/cheekychuck.env` on the box (or hand them over out of band). If it isn't, pick a relay that accepts port 587 submission.
2. DNS: add `cheekychuck.jocogiant.com` A → `135.181.204.213`.
3. Store links for the landing page badges (Play / App Store), or confirm the temporary links to jocogiant.com.
4. Global daily mail ceiling (adopted as default on 2026-11-04, owner said "proceed"): `CC_MAX_MAILS_PER_DAY` (default 200, a knob in the env file); when reached, `/api/photo` answers `503 {error:"Photo sharing is busy right now. Please try again tomorrow."}` and stores nothing.
5. Email language (adopted as default): follows the sender's game language (`lang` field in `/api/photo`, four fixed templates en/it/jp/zh, English fallback); the gallery page stays English.

Items 1–3 are still open; the deploy script refuses to run without the env file, and the landing badges link to jocogiant.com until store links exist.
