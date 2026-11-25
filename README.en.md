# SEED3 - Heroes in Time (SEED 3): Android 15 compatibility and Chinese UI localization

[简体中文](README.md)

Compatibility patches, layout fixes and ongoing Simplified Chinese UI localization for SEED3 - Heroes in Time (SEED 3). Version v0.4.0 corresponds to the tested SEED3-zh-ui-v4.apk build.

## Changes

- Fix resource scanning stopping on a directory and failing to register CHFONT.
- Correct a native skill JNI array type mismatch.
- Update dynamic resource package names and guard missing skill bitmaps.
- Keep the right-hand skill and attack buttons within their container.
- Fix duplicate font scaling in character statistics and inventory counters.
- Reduce skill list text and explicitly size skill detail text in pixels.
- Translate 62 Android strings, four save messages, and the first quest title and instructions.
- Add Seed3Diag startup, menu and resource lookup logs.

## Download and installation

Download the APK from Releases. The compatibility package is `ch.kingdoms.market.compat`.

On the tested phone, replacing an installed build failed. Uninstall the previous compatibility build before installation. Uninstallation removes local saves, so preserve any data you need first.

```powershell
adb devices -l
adb uninstall ch.kingdoms.market.compat
adb install --no-incremental --bypass-low-target-sdk-block SEED3-zh-ui-v4.apk
adb shell am start -n ch.kingdoms.market.compat/ch.kingdoms.kor.KingdomsActivity
```

Check each command result. Uninstallation and installation should report Success. If the package is absent, verify its state and install directly.

## Validation and limitations

Tested on vivo V2170A running Android 15. Verified startup, menus, right-hand controls, character status, inventory counters, Chinese text for the first quest, and skill list font size. Skill detail font sizes are patched but visually unverified because the test character has locked skills. Full story, combat and end-to-end regression testing remain outstanding.

Localization is incomplete. Only the first of 135 quest records is translated. Many other strings and image-based labels remain English. Story localization is deferred. Legacy online services may still report errors.

## Source and build

`decoded/` contains the current Apktool project. `tools/` contains historical patch scripts and translation mappings. Read historical scripts before using them. Some have development-machine paths and one-time assertions, and must not all be rerun against the current project. `AGENTS.md` records collaboration and device procedures in Chinese.

Use Java, Apktool 2.12.1 and Android SDK Build Tools. Build from an ASCII-only path. Supply your own signing keystore.

```powershell
java -jar tools/apktool.jar b decoded -o unsigned.apk
zipalign -f 4 unsigned.apk aligned.apk
apksigner sign --ks YOUR_KEYSTORE --out SEED3-zh-ui-v4.apk aligned.apk
apksigner verify SEED3-zh-ui-v4.apk
```

Tool binaries, original APKs, build outputs, logs and signing keys are excluded from Git. Obtain Apktool from its official releases.

## Rights

This is an unofficial compatibility and translation project. Original game code, artwork, names and other content remain the property of their respective rights holders. This repository grants no additional license to third-party game content.

