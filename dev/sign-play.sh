#!/bin/sh
# Re-sign the Play bundle with the upload key: CoronaBuilder 3736 ignores the keystore fields of dev/build-play.lua
# and signs both the .aab and the .apk with the Android debug key, which Google Play rejects.
# Usage: sh dev/sign-play.sh   -> build/play/Cheeky Chuck-release.aab (the file to upload)
set -eu
cd "$(dirname "$0")/.."
node scripts/check-no-ai-mentions.mjs "build/play/Cheeky Chuck.aab"
PW=$(sed -n 1p keys/upload-password.txt)
cp "build/play/Cheeky Chuck.aab" "build/play/Cheeky Chuck-release.aab"
zip -q -d "build/play/Cheeky Chuck-release.aab" 'META-INF/ANDROIDD.SF' 'META-INF/ANDROIDD.RSA' 'META-INF/MANIFEST.MF'
jarsigner -keystore keys/upload.jks -storepass "$PW" -keypass "$PW" -sigalg SHA256withRSA -digestalg SHA-256 \
  -tsa http://timestamp.digicert.com "build/play/Cheeky Chuck-release.aab" upload >/dev/null
jarsigner -verify -verbose:summary -certs "build/play/Cheeky Chuck-release.aab" | grep -q "CN=Joco Giant" || { echo "signature check failed" >&2; exit 1; }
echo "signed: build/play/Cheeky Chuck-release.aab"
