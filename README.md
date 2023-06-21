# NFC-Framework-for-Samsung
NFC Framework Magisk Module (VERY Early Development)

This Magisk module is designed for modern Samsung devices released after 2020, although it may work on older. It aims to enable the NFC hardware that may be present on these devices but not fully supported or enabled by default. Please note that this module is currently in very early stages of development, and as such, it may have limited functionality or potential issues.

Features:
- Enables NFC functionality on compatible Samsung devices by adding the missing framework, permissions and libraries. 
- Provides support for NFC attachments

Compatibility:
- This module is specifically intended for modern Samsung devices released after 2020.
- This was devleloped on a Samsung Galaxy Tab S8+, which *seems* to have the actual hardware. 

Installation:
1. Ensure you have Magisk installed on your device.
2. Download the NFC Framework Magisk module ZIP file.
3. Either Flash with Fox's Magisk Module Manager.
4. Reboot your device.
5. Install *SAMSUNGS* com.android.nfc apk, you may need to manually make a directory in /system/app called NfcNci << The Capitialzation matters! example /system/app/NfcNci

Important Note:
- This module is still in early development and may have bugs or limited functionality.
- Please proceed with caution and be aware that using this module is at your own risk.
- This does NOT YET install the NFC apk required, but they can be found online. They MUST be samsungs version of the "com.android.nfc" apk. It will also need to have a second folder named lib with the _FIX_ in the NfcNci directory we created.

Contributing:
- If you encounter any issues or have suggestions for improvements, feel free to open an issue or contribute to the project on GitHub.

Disclaimer:
- The developer and contributors are not responsible for any damage or issues caused by using this module.
- Use this module at your own risk.

Acknowledgments:
- Samsung, The guys who made all the NFC stuff, Google, TJW & myself.



