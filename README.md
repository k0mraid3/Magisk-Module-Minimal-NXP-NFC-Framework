# Minimal NFC Framework - Magisk Module - ALPHA v0.0001
A Min-NFC-Framework template Magisk Module for NFC devs and researchers. (VERY Early Development)

This Magisk module is designed for *Samsung* Android devices with NXP NFC controllers (most Galaxy series like S21,22), although it may work on older and non-samsung devices provided a few tweaks. It is basically a fully functional Mininal NFC Framework template but should have cross-compatability between different NXP NFC controllers. It will include a few extra tools and a way to hook NFC and offer broader compatibility down the road. essentially a Min-NFC-Framework with some dev tools.
TODO-

-Create a method to hook NFC.

-Include NFCGate app (Lib is already implemented in https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/commit/b88824caf6079b3a300bd096b8dac99c425c1dd4)  as a system or systemless app. Should be placed in either /product/priv-app/ or /system/priv-app/ (https://github.com/nfcgate/nfcgate)

-Need to make the module check if files exist before trying to copy, no need to overwrite files if they exist unless user wants this. Need some logic for this.

-Source remainder of missing parts. **Currently top priority is secure element.** I.e Kernel Modules, JAR's, .so Libs, etc. 

-Identify any system properties (getprop/setprop) that need to be set and at what boot stage && create needed .prop file for module.

-Further Debugging and log audits


```(TODO UPDATED 06/26/2023)```

Features:
- This Magisk Module aims to provide a minimal NFC framework as template for future NFC based projects.
- Will attempt to provide support for external NFC attachments.

This module will currently enable the following features on a software level. Further debugging is very much needed. Still missing something..

![image](https://github.com/k0mraid3/Magisk-Module-NFC-Framework-for-Samsung/assets/62849592/c30359b9-930b-40b9-a4ed-1fe94f7212f3)


Compatibility:
- This module is specifically intended for Samsung devices with NXP NFC controllers, but *should* be cross compatabile with any device using a NXP NFC chip. If you come across a different chip I need to add please let me know and I will add its firmware.
- This was devleloped on a Samsung Galaxy Tab S8+ (Android 13) and LG Velvet (Android 11). *Not tested on any other devices yet.*

Installation:
1. Ensure you have Magisk installed on your device.
2. Download the NFC Framework Magisk module ZIP file.
3. *MUST* be Flashed with Fox's Magisk Module Manager, I have 0 idea why but when I try to use Magisk it fails for whatever reason trying to read config.sh, *maybe its the way i formatted it? Worth checking.*
4. Reboot your device.


Important Note:
- This module is still in early development and may have bugs or limited functionality.
- There should be a VERY low risk of any kind of bootloop or serious crashes & I have not experienced any instability with this module enabled at all. *Please report if you do.*
- Please proceed with caution and be aware that using this module is at your own risk.
- !MOUNTING SYSTEM! On the Samsung Galaxy Tab S8+, which due to its F2FS filesystem type, I had to use HuskyDG's "Magical OverlayFS" Magisk Module to fix mounting, however once installed, you will need to go into /data/adb/modules/magisk_overlayfs and locate the "mode.sh" and edit the line "export OVERLAY_LEGACY_MOUNT" from "false" to "true". It should look like this when you are done. ```export OVERLAY_LEGACY_MOUNT=true```
  
Contributing:
- If you encounter any issues or have suggestions for improvements, feel free to open an issue or contribute to the project.

Disclaimer:
- The developer and contributors are not responsible for any damage or issues caused by using this module.
- Use this module at your own risk.

REFERENCES/DOCUMENTS
- NXP SN220U (Galaxy S22) https://www.commoncriteriaportal.org/files/epfiles/NSCIB-CC-0258298-ST.pdf
- NXP SN100 Series (Galaxy S21) https://www.commoncriteriaportal.org/files/epfiles/ST_SN100_SE_lite_v2_2.pdf

Acknowledgments:
- @Samsung, @NFC-Tools, @Google, @TopJohnWu @myself @everyoneiforgot
  

