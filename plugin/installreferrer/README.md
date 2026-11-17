# plugin.installreferrer

A Solar2D Android plugin (one Java class) around Google's Play Install Referrer library. `require("plugin.installreferrer").get(listener)`
answers once with the `referrer=` string of the Play Store link that delivered the install (the `utm_*` tags of a tracking
link), plus click and install times. The analytics module calls it on the first launch and sends an `install` event.

`sh build.sh` builds `game/AndroidResources/plugin.installreferrer.aar`; `game/AndroidResources/corona.gradle` adds the
Google library to the app build. Only installs that came through the Play Store carry a referrer (a sideloaded or debug APK
gets `error = "service unavailable"`), so an end-to-end check needs a build on a Play testing track.
