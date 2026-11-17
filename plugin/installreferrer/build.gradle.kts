// Builds plugin.installreferrer (Solar2D Android plugin): sh build.sh, or ./gradlew :plugin:assembleRelease
buildscript {
    repositories { google(); mavenCentral() }
    dependencies { classpath("com.android.tools.build:gradle:8.13.2") }
}
allprojects {
    repositories {
        google(); mavenCentral()
        val nativeDir = "${System.getenv("HOME")}/Library/Application Support/Corona/Native/"
        flatDir { dirs("$nativeDir/Corona/android/lib/gradle", "$nativeDir/Corona/android/lib/Corona/libs") }
    }
}
