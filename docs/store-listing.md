# Google Play store listing (2026-11-16)

Play Console: developer Joco Giant, app id 4973719779488308893, package `com.jocogiant.cheekychuck`.
Limits: title 30, short 80, full 4000 characters; no emoji/caps/ranking claims in the title, no "best"/comparisons in the text.
Category: Game > Simulation. Tags: Casual, Pet, Simulation (max 5; Google adds offline/single player/cartoon itself).

## Title (30 chars)

Cheeky Chuck: Virtual Pet Game

## Short description (78 chars)

Meet Chuck, the cheeky virtual boy who reacts to every tickle, poke and shake!

## Full description (2250 chars)

Meet Chuck, the cheekiest virtual pet you will ever tickle. He is not a cat or a puppy: he is a cheeky little boy who lives in his room, notices everything you do and always has something to say about it.

Tickle him and he giggles. Poke him and he grumbles. Punch his belly and he might slap you right back. Shake your phone and watch him stagger around, dizzy. Every touch gets a funny reaction, and there are dozens of them waiting to be discovered.

How to play with Chuck

★ Touch reactions: tickle him, poke him, punch his belly or his face, kick his legs, or pinch and stretch him with two fingers.
★ Shake things up: shake your phone to make Chuck dizzy, or turn it over to flip him into a handstand and see how long he lasts.
★ Lights out: switch off his lamp and Chuck falls asleep. Call the cat and see what happens next.
★ Discover them all: every new reaction you find earns a star. Can you collect the whole set?
★ Camera and gallery: snap the funniest moments with the in-game camera, share the photos with friends, and browse the public gallery of pictures taken by other players.

A virtual friend for everyone

Cheeky Chuck is a simple, friendly virtual pet game that anyone can pick up: no reading, no tutorials, no timers to wait for. Tap, swipe and shake, and Chuck does the rest. Some players love his silly faces and sound effects, others keep poking him to find the one reaction they have not seen yet. Play alone or pass the phone around and take turns teasing him.

Free, light and offline

• Free to play, with no in-app purchases.
• Works offline: Chuck is always home, no connection needed. Only photo sharing and the gallery use the internet.
• Redrawn in HD for today's screens, and easy on your phone's battery and storage.
• Available in English, Italian, Japanese and Chinese.

Chuck is back

Cheeky Chuck first appeared on phones in 2012 and is now rebuilt from the ground up by Joco Giant, with the same cheeky personality and his room, the desert and the rest of his world redrawn in HD. Whether you are looking for a virtual pet, a funny pocket friend or just a silly game to pass the time, Chuck is ready for you.

Download Cheeky Chuck for free and find out what the cheekiest virtual pet does when you poke him.

## Console state (2026-11-16)

Everything in "Set up your app" is complete. Internal testing release 1.6 (7) is live for the testers, and the listing + declarations (10 changes) were submitted for Google review on 2026-11-17 (typically up to 7 days). A production release is a separate step (Test and release > Production > Create new release, same bundle).

- Store listing: title/short/full above, icon 512, feature graphic 1024x500 and 5 phone screenshots (art/store/), AI asset declaration "don't label" (the art is upscaled original artwork, not generated).
- Store settings: Game > Simulation, tags Casual/Pet/Simulation, contact support@jocogiant.com, site https://cheekychuck.jocogiant.com.
- Privacy policy: https://cheekychuck.jocogiant.com/privacy/ (site/privacy/index.html); account deletion https://cheekychuck.jocogiant.com/delete-account/ (site/delete-account/index.html). Both are entered in the console WITH the trailing slash: Google caches its "page not found" check per exact URL, and the slash-less URLs were checked before the pages were deployed. Both live since 2026-11-17 (`bash deploy/deploy.sh`; the script runs `npm test` with stdout hidden, so a failing test makes it exit 1 silently: run `npm test` first when it prints nothing).
- Sign in details: "Player account (photo sharing)" = playreview@jocogiant.com, password in keys/play-review-account.txt (a real account on the production API, created for Google's reviewers; the game plays fully without one).
- Content rating (IARC): Game; cartoon slapstick on Chuck declared as violence against humans in a fantastical setting, childlike style, unrealistic reactions, rarely close-up, no blood; crude humour = belching/flatulence sounds; users interact (photo sharing, no chat, no block/report/moderation); no purchases, no location. Result: Google Play 7+, PEGI 7, ESRB E10+, USK 16, others all-ages/PG. "Often close-up" or a "realistic" setting pushes it to 12+/Teen.
- Target audience: 13-15, 16-17, 18+ only (the email/password accounts and public gallery would otherwise need COPPA handling).
- Data safety: collected, not shared, encrypted in transit, all optional: email address (account), photos and other user-generated content (gallery), app interactions and device/other IDs (anonymous analytics, opt-out switch). Account deletion URL above.
- Ads: none. Advertising ID: not used (the manifest has no AD_ID permission). Government / financial / health: none. Trader status: inherited from the organization account (yes). No Terms of Service URL.
- Internal testing: tester list "Joco Giant team" selected; first release = build/play/Cheeky Chuck-release.aab, uploaded 2026-11-17 (see Release build below).
- In-app privacy link: every configuration_*.html / android_configuration_*.html page ends with a link to the policy; confview.lua opens https links in the system browser (patch_game.py).

## Release build

1. `PYTHON=.venv/bin/python sh rebuild.sh` (src/overlay -> game/), then `JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home /Applications/Corona-3736/Native/Corona/mac/bin/CoronaBuilder.app/Contents/MacOS/CoronaBuilder build --lua dev/build-play.lua` -> build/play/Cheeky Chuck.aab (+ .apk). Bump `androidVersionCode` in dev/build-play.lua for every upload.
2. `sh dev/sign-play.sh` -> build/play/Cheeky Chuck-release.aab. CoronaBuilder 3736 ignores the keystore fields and signs with the Android debug key ("You uploaded an APK or Android App Bundle that was signed in debug mode"); the script strips that signature and re-signs with keys/upload.jks (alias `upload`).
3. `node scripts/check-no-ai-mentions.mjs "build/play/Cheeky Chuck-release.aab"` must print OK: no file in the bundle may name an AI tool or carry an image generator's C2PA metadata (rebuild.sh, dev/sign-play.sh, dev/web-stage.py and deploy/deploy.sh run the same check).
4. Upload Cheeky Chuck-release.aab in Test and release > Internal testing (or production). Play's automatic integrity protection is on for this app and refuses minSdkVersion < 24, hence `minSdkVersion = "24"` (Android 7.0) in build.settings.
