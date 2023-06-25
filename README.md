# NFC Framework for Samsung Devices - Magisk Module - ALPHA v0.0001
NFC Framework Magisk Module (VERY Early Development)

This Magisk module is designed for modern Samsung devices released after 2020, although it may work on older. It aims to provide a minimal NFC framework in a magisk module, as a template for future NFC projects. The module will eventually incorperate a hook and a suite of basic NFC tools (and maybe BLE and other IoT later). Please note that this module is currently in very early stages of development, and as such, it may have limited functionality or potential issues.

TODO-

-Create a method to hook NFC.

-Include NFCGate app (Lib is already implemented in https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/commit/b88824caf6079b3a300bd096b8dac99c425c1dd4)  as a system or systemless app. Should be placed in either /product/priv-app/ or /system/priv-app/ (https://github.com/nfcgate/nfcgate)

-Need to make the module check if files exist before trying to copy, no need to overwrite files if they exist unless user wants this. Need some logic for this.

-Source remainder of missing parts. I.e Kernel Modules, JAR's, .so Libs, etc. 

-Identify any system properties (getprop/setprop) that need to be set and at what boot stage && create needed .prop file for module.

-Further Debugging and log audits


```(TODO UPDATED 06/23/2023)```

Features:
- Attempts to enable NFC functionality on some Samsung devices by adding the missing framework, permissions and libraries and NFC apk.
- Will attempt to provide support for NFC attachments.

This module will currently enable the following features. Further debugging is very much needed. Still missing something..

![image](https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/assets/62849592/c30359b9-930b-40b9-a4ed-1fe94f7212f3)


Compatibility:
- This module is specifically intended for modern Samsung devices released after 2020.
- This was devleloped on a Samsung Galaxy Tab S8+ and LG Velvet. *Not tested on any other devices yet.*

Installation:
1. Ensure you have Magisk installed on your device.
2. Download the NFC Framework Magisk module ZIP file.
3. *MUST* be Flashed with Fox's Magisk Module Manager, I have 0 idea why but when I try to use Magisk it fails for whatever reason trying to read config.sh, *maybe its th eway i formatted it? Worth checking.*
4. Reboot your device.


Important Note:
- This module is still in early development and may have bugs or limited functionality.
- There should be a VERY low risk of any kind of bootloop or serious crashes & I have not experienced any instability with this module enabled at all. *Please report if you do.*
- Please proceed with caution and be aware that using this module is at your own risk.
- !MOUNTING SYSTEM! On the Samsung Galaxy Tab S8+, which due to its F2FS filesystem type, I had to use HuskyDG's "Magical OverlayFS" Magisk Module to fix mounting, however once installed, you will need to go into /data/adb/modules/magisk_overlayfs and locate the "mode.sh" and edit the line "export OVERLAY_LEGACY_MOUNT" from "false" to "true". It should look like this when you are done. ```export OVERLAY_LEGACY_MOUNT=true```

This teardown video shows the reasoning for this module, as can be seen in the video, the device does seem to have some comms hardware. (Near Cameras and sim/SD slot)

https://www.youtube.com/watch?v=bM8EVrQahyM&t=205s
  
Contributing:
- If you encounter any issues or have suggestions for improvements, feel free to open an issue or contribute to the project.

Disclaimer:
- The developer and contributors are not responsible for any damage or issues caused by using this module.
- Use this module at your own risk.

Acknowledgments:
- @Samsung, @NFC-Tools, @Google, @TopJohnWu @myself @everyoneiforgot
  

