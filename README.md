# NFC Framework for Samsung Devices - Magisk Module - ALPHA v0.0001
NFC Framework Magisk Module (VERY Early Development)

This Magisk module is designed for modern Samsung devices released after 2020, although it may work on older. It aims to enable the NFC hardware that may be present on these devices but not fully supported or enabled by default. Please note that this module is currently in very early stages of development, and as such, it may have limited functionality or potential issues.

TODO-
-Need to make the module first check if /system/app/NfcNci exists and if not make dir if needed and move everything from module-root/system/app/NfcNci intoi it.
All files for apk are in place, but config.sh needs to be adjusted to automate install. ```(06/21/2023)```

Features:
- Attempts to enable NFC functionality on some Samsung devices by adding the missing framework, permissions and libraries and NFC apk.
- Will attempt to provide support for NFC attachments.

Compatibility:
- This module is specifically intended for modern Samsung devices released after 2020.
- This was devleloped on a Samsung Galaxy Tab S8+, which *seems* to have the actual hardware but it is not in use by default.

Installation:
1. Ensure you have Magisk installed on your device.
2. Download the NFC Framework Magisk module ZIP file.
3. *MUST* be Flashed with Fox's Magisk Module Manager, I have 0 idea why but when I try to use Magisk it fails for whatever reason trying to read config.sh.
4. Reboot your device.
5. Install *SAMSUNGS* com.android.nfc apk, you need to manually make a directory in /system/app called NfcNci << The Capitialzation matters! example /system/app/NfcNci -- All the required files can be found in this repo in /system/app. You need to make your devices /system/app/NfcNci look identical, including the /system/app/NfcNci/lib/arm64 bit with the lib from this repo. make sure to chmod the actual NfcNci.apk and the lib with ```chmod 644```, then reboot.


Important Note:
- This module is still in early development and may have bugs or limited functionality.
- Please proceed with caution and be aware that using this module is at your own risk.
- !MOUNTING SYSTEM! So on the samsung galaxy tab s8+, i used HuskyDG's "Magical OverlayFS" Magisk Module, however once installed, you will need to go into /data/adb/modules/magisk_overlayfs and locate the "mode.sh" and edit the line "export OVERLAY_LEGACY_MOUNT" from "false" to "true". It should look like this when you are done. ```export OVERLAY_LEGACY_MOUNT=true```
Contributing:
- If you encounter any issues or have suggestions for improvements, feel free to open an issue or contribute to the project on GitHub.

Disclaimer:
- The developer and contributors are not responsible for any damage or issues caused by using this module.
- Use this module at your own risk.

Acknowledgments:
- @Samsung, @NFC-Tools , @Google, @TopJohnWu @myself
Currently Enabled
![image](https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/assets/62849592/46ec2753-b7cc-4300-8b0d-7d0a164d6483)

Goal to have enabled (This is what comes stock on my S21, so goal is to get all of these, in the above screenshot from the Tab S8+)
![image](https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/assets/62849592/5f69104f-daa8-46cc-a8ef-38e03587b0ae)


