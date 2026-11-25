# SEED3 - Heroes in Time (种子3 / SEED 3) — Android 15 compatibility and Chinese UI localization

[简体中文](README.md)

Compatibility patches, layout fixes and ongoing Simplified Chinese UI localization for SEED3 - Heroes in Time (SEED 3). Version v0.11.0 corresponds to the tested SEED3-local-shop-v11.apk build.

## v0.11.0 changes

- Target Android API 28 and adapt legacy HTTP, private cache files and explicit billing-service binding.
- Remove installed-app enumeration, the legacy memory-tool check and phone identifier reads.
- Remove Facebook and OpenFeint title-screen links.
- Expand Chinese text for Help, Option, the shop and secondary dialogs, with font fixes.
- Replace real-payment entry points with free local claims. Unlock flags and points are stored locally. Restore reads local records. Uninstallation removes local data.
- Use the original in-game INFO/confirmation panel for purchase feedback and restore the description font size. The user accepted the v11 build on 2026-11-25.

Local records do not restore historical server-side purchases. Full regression testing across all items and gameplay remains outstanding.

## Changes

- Fix resource scanning stopping on a directory and failing to register CHFONT.
- Correct a native skill JNI array type mismatch.
- Update dynamic resource package names and guard missing skill bitmaps.
- Keep the right-hand skill and attack buttons within their container.
- Fix duplicate font scaling in character statistics and inventory counters.
- Reduce skill list text and explicitly size skill detail text in pixels.
- Translate 62 Android strings, four save messages, and the first quest title and instructions.
- Add Seed3Diag startup, menu and resource lookup logs.

## Game names

The game is commonly listed in Chinese as 种子3 and in English as SEED3 - Heroes in Time or SEED 3. The supplied APK title screen reads SEED III: Wheel of Fortune. This project provides Android 15 compatibility fixes and partial Simplified Chinese UI localization.

[Chinese listing](https://m.ali213.net/android/16165.html) · [English listing](https://www.taptap.cn/app/41768)

## Download and installation

Download the APK from Releases. The compatibility package is `ch.kingdoms.market.compat`.

On the tested phone, replacing an installed build failed. Uninstall the previous compatibility build before installation. Uninstallation removes local saves, so preserve any data you need first.

```powershell
adb devices -l
adb uninstall ch.kingdoms.market.compat
adb install --no-incremental --bypass-low-target-sdk-block SEED3-local-shop-v11.apk
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
apksigner sign --ks YOUR_KEYSTORE --out SEED3-local-shop-v11.apk aligned.apk
apksigner verify SEED3-local-shop-v11.apk
```

Tool binaries, original APKs, build outputs, logs and signing keys are excluded from Git. Obtain Apktool from its official releases.

## Rights

This is an unofficial compatibility and translation project. Original game code, artwork, names and other content remain the property of their respective rights holders. This repository grants no additional license to third-party game content.


## HD preview and next steps

The source includes 18 startup and main-menu assets upscaled 2× for v12 using Real-ESRGAN and xBRZ. Resource density preserves their original display size. The title touch screen has been verified on the device; individual main-menu buttons still need review. The published release remains v0.11.0.

Keep the startup and main-menu assets as they are. Future work uses 4× for backgrounds and characters and 2× for other assets, measured from the original source. Preserve layout and touch areas, and check visual quality, memory use and loading.

`tools/upscale-menu.py` and `tools/scale-xbrz.mjs` record the 2× preview workflow and contain development-machine paths that must be adjusted. Dependencies: Python/Pillow, Node.js, `@kayahr/xbrz`, `pngjs`, and Real-ESRGAN ncnn-vulkan with the `realesr-animevideov3` model. Tool binaries and models are not included.
