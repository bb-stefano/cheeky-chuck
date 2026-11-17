#!/bin/sh
# Builds the plugin AAR and drops it, with the gradle snippet that adds Google's Install Referrer library, into
# game/AndroidResources, which CoronaBuilder links into the APK. Rerun after changing LuaLoader.java.
set -e
cd "$(dirname "$0")"
export JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
export ANDROID_HOME="$HOME/Library/Application Support/Corona/Android Build/sdk"
./gradlew -q :plugin:assembleRelease
cp plugin/build/outputs/aar/plugin-release.aar ../../game/AndroidResources/plugin.installreferrer.aar
ls -la ../../game/AndroidResources/plugin.installreferrer.aar
