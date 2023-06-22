# NFC Framework for Samsung Devices - Magisk Module - ALPHA v0.0001
NFC Framework Magisk Module (VERY Early Development)

This Magisk module is designed for modern Samsung devices released after 2020, although it may work on older. It aims to enable the NFC hardware that may be present on these devices but not fully supported or enabled by default. Please note that this module is currently in very early stages of development, and as such, it may have limited functionality or potential issues.

TODO-

-Need to make the module check if files exist before trying to copy, no need to overwrite files if they exist unless user wants this. Need some logic for this.

-Source remainder of missing parts. I.e Kernel Modules, JAR's, .so Libs, etc. (See pic at below labled S21) 

-Identify any system properties (getprop/setprop) that need to be set and at what boot stage && create needed .prop file for module.

-Further Debugging and log audits


```(TODO UPDATED 06/22/2023)```

Features:
- Attempts to enable NFC functionality on some Samsung devices by adding the missing framework, permissions and libraries and NFC apk.
- Will attempt to provide support for NFC attachments.

This module will currently enable the following features.

![image](https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/assets/62849592/46ec2753-b7cc-4300-8b0d-7d0a164d6483)

The goal is to have all of the below enabled (This is what comes stock on my S21, so goal is to get all of these enabled in the above screenshot from the Tab S8+)

![image](https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/assets/62849592/5f69104f-daa8-46cc-a8ef-38e03587b0ae)

Compatibility:
- This module is specifically intended for modern Samsung devices released after 2020.
- This was devleloped on a Samsung Galaxy Tab S8+, which *seems* to have the actual hardware but it is not in use by default.

Installation:
1. Ensure you have Magisk installed on your device.
2. Download the NFC Framework Magisk module ZIP file.
3. *MUST* be Flashed with Fox's Magisk Module Manager, I have 0 idea why but when I try to use Magisk it fails for whatever reason trying to read config.sh, *maybe its th eway i formatted it? Worth checking.*
4. Reboot your device.


Important Note:
- This module is still in early development and may have bugs or limited functionality.
- There should be a VERY low risk of any kind of bootloop or serious crashes & I have not experienced any instability with this module enabled at all. *Please report if you do.*
- Please proceed with caution and be aware that using this module is at your own risk.
- !MOUNTING SYSTEM! On the Samsung Galaxy Tab S8+, i used HuskyDG's "Magical OverlayFS" Magisk Module, however once installed, you will need to go into /data/adb/modules/magisk_overlayfs and locate the "mode.sh" and edit the line "export OVERLAY_LEGACY_MOUNT" from "false" to "true". It should look like this when you are done. ```export OVERLAY_LEGACY_MOUNT=true```

This teardown video shows the reasoning for this module, as can be seen in the video, the device does indeed have dormant hardware. 

https://www.youtube.com/watch?v=bM8EVrQahyM&t=205s
  
Contributing:
- If you encounter any issues or have suggestions for improvements, feel free to open an issue or contribute to the project.

Disclaimer:
- The developer and contributors are not responsible for any damage or issues caused by using this module.
- Use this module at your own risk.

Acknowledgments:
- @Samsung, @NFC-Tools, @Google, @TopJohnWu @myself @everyoneiforgot
  

