# Analytics (2026-11-09)

`overlay/analytics.lua` is the Lua port of the Bubbleye analytics client used by the other games
(`crash-of-crowns/public/analytics.js`): same wire format, same consent rules, same server
(`POST {events:[...]}` to `https://analytics.bubbleye.com/events`, batches of 50 every 30 s and on suspend/resume;
the server ignores repeated event ids, so nothing is lost or double counted when an upload is cut off).
Game id `cheekychuck`, version `<appVersionString>+<androidAppVersionCode>`, platform from `system.getInfo`.
Events queue in `Documents/analytics.json` (up to 5000). The simulator queues but never uploads.

It keeps the 2012 Flurry call shape the decompiled code uses (`analytics.init(key)` from main.lua,
`analytics.logEvent(name, params)` from game.lua / discovery.lua), so those call sites needed no change.

## Consent
Anonymous stats are on until the player switches them off (`optOut`, like the other games). The settings page
(`html/*configuration_*.html`, `html/lib/conf.js`) has a "share anonymous stats" switch next to the sound ones;
iOS pages send `setting:stats=true|false`, Android pages reload with `&stats=...`, and confview.lua's URL
listener hands every URL to `analytics.settingUrl` (patch_game.py). Switching off clears the queue;
switching on sends `consent_given`.

## Events
| event | props | where |
| --- | --- | --- |
| `session_start` | `tz` (UTC offset), `lang` | init, and on resume after 30 min in the background |
| `session_pause` | | applicationSuspend |
| `scene_view` | `scene` (01, 02, 03, christmas_01, …) | newBackground / reload |
| `reaction` | `name` (the `stopAndPlay<Name>` method: Rain, Tickle, …; idle/breath/blink noise skipped, 1 per name per 2 s) | the character's methods |
| `hints_open` | | the in-game hint button (was Flurry "hint button tapped") |
| `discovery` | `name` | discovery.lua (was "discovered: …") |
| `scene_unlocked` | `scene` (2, 3) | discovery.lua (was "background N unlocked") |
| `game_won` | | all discoveries found (was "win game (all discovered)") |
| `photo_taken` | | the camera button (`display.save`) |
| `photo_sent` | `comment` (bool) | photosend.lua, after the server accepted the photo |
| `account_login` / `account_register` / `account_logout` | | account.lua; `identify(id)` with the server's account id when it sends one |
| `consent_given` | | the settings switch |

## Checking
Simulator: `~/Library/Application Support/Corona Simulator/game-*/Documents/analytics.json` fills with events
(`queue`), nothing is uploaded. Device: `adb logcat -s Corona | grep analytics` shows the init line; the queue
drains against the server every 30 s while the app is up.
