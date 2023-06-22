##########################################################################################
#
# Magisk
# by topjohnwu
# 
# This is a template zip for developers
#
##########################################################################################
##########################################################################################
# 
# Instructions:
# 
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (common/config.sh)
# 4. For advanced features, add shell commands into the script files under common:
#    post-fs-data.sh, service.sh
# 5. For changing props, add your additional/modified props into common/system.prop
# 
##########################################################################################

##########################################################################################
# Defines
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

# This will be the folder name under /magisk
# This should also be the same as the id in your module.prop to prevent confusion
MODID=nfcport

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "   Adding NFC files to system    "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# By default Magisk will merge your files with the original system
# Directories listed here however, will be directly mounted to the correspond directory in the system

# You don't need to remove the example below, these values will be overwritten by your own list
# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will overwrite the example
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
REPLACE="
"

# Copy/extract your module files into $MODPATH in on_install.

on_install() {
  ln -sf $MODPATH/system/etc/libnfc-nci.conf /system/etc/libnfc-nci.conf
  cp -f $MODPATH/system/etc/init/init.nfc.samsung.rc /system/etc/init/init.nfc.samsung.rc
  cp -f $MODPATH/system/etc/permissions/com.publicnfc.xml /system/etc/permissions/com.publicnfc.xml
  cp -f $MODPATH/system/etc/permissions/com.samsung.android.nfc.mpos.xml /system/etc/permissions/com.samsung.android.nfc.mpos.xml
  cp -f $MODPATH/system/etc/permissions/com.samsung.android.nfc.rfcontrol.xml /system/etc/permissions/com.samsung.android.nfc.rfcontrol.xml
  cp -f $MODPATH/system/etc/permissions/com.samsung.android.nfc.t4t.xml /system/etc/permissions/com.samsung.android.nfc.t4t.xml
  cp -f $MODPATH/system/etc/permissions/com.samsung.android.nfc.t4temul.xml /system/etc/permissions/com.samsung.android.nfc.t4temul.xml
  cp -f $MODPATH/system/etc/permissions/com.sec.feature.nfc_authentication.xml /system/etc/permissions/com.sec.feature.nfc_authentication.xml
  cp -f $MODPATH/system/etc/permissions/com.sec.feature.nfc_authentication_cover.xml /system/etc/permissions/com.sec.feature.nfc_authentication_cover.xml
  cp -f $MODPATH/system/etc/permissions/sec_platform_library.xml /system/etc/permissions/sec_platform_library.xml
  cp -f $MODPATH/system/etc/permissions/com.android.nfc_extras.xml /system/etc/permissions/com.android.nfc_extras.xml
  cp -f $MODPATH/system/framework/com.publicnfc.jar /system/framework/com.publicnfc.jar
  cp -f $MODPATH/system/framework/com.android.nfc_extras.jar /system/framework/com.android.nfc_extras.jar
  cp -f $MODPATH/system/framework/com.samsung.android.nfc.mpos.jar /system/framework/com.samsung.android.nfc.mpos.jar
  cp -f $MODPATH/system/framework/com.samsung.android.nfc.rfcontrol.jar /system/framework/com.samsung.android.nfc.rfcontrol.jar
  cp -f $MODPATH/system/framework/com.samsung.android.nfc.t4t.jar /system/framework/com.samsung.android.nfc.t4t.jar
  cp -f $MODPATH/system/framework/sec_platform_library.jar /system/framework/sec_platform_library.jar
  cp -f $MODPATH/system/lib64/android.hardware.nfc@1.0.so /system/lib64/android.hardware.nfc@1.0.so
  cp -f $MODPATH/system/lib64/android.hardware.nfc@1.1.so /system/lib64/android.hardware.nfc@1.1.so
  cp -f $MODPATH/system/lib64/android.hardware.nfc@1.2.so /system/lib64/android.hardware.nfc@1.2.so
  cp -f $MODPATH/system/lib64/android.hardware.nfc-V1-ndk.so /system/lib64/android.hardware.nfc-V1-ndk.so
  cp -f $MODPATH/system/lib64/libnfc_nxpsn_jni.so /system/lib64/libnfc_nxpsn_jni.so
  cp -f $MODPATH/system/lib64/libnfc-nxpsn.so /system/lib64/libnfc-nxpsn.so
  cp -f $MODPATH/system/lib64/vendor.samsung.hardware.nfc@2.0.so /system/lib64/vendor.samsung.hardware.nfc@2.0.so
  cp -Rf $MODPATH/system/app/NfcNci /system/app/NfcNci
}

##########################################################################################
# Permissions
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

set_permissions() {
  # Default permissions, don't remove them
  set_perm_recursive  $MODPATH  0  0  0755  0644
  set_perm 644 /system/etc/libnfc-nci.conf
  set_perm 644 /system/etc/init/init.nfc.samsung.rc
  set_perm 644 /system/etc/permissions/com.publicnfc.xml
  set_perm 644 /system/etc/permissions/com.samsung.android.nfc.mpos.xml
  set_perm 644 /system/etc/permissions/com.samsung.android.nfc.rfcontrol.xml
  set_perm 644 /system/etc/permissions/com.samsung.android.nfc.t4t.xml
  set_perm 644 /system/etc/permissions/com.samsung.android.nfc.t4temul.xml
  set_perm 644 /system/etc/permissions/com.sec.feature.nfc_authentication.xml
  set_perm 644 /system/etc/permissions/com.sec.feature.nfc_authentication_cover.xml
  set_perm 644 /system/etc/permissions/com.android.nfc_extras.xml
  set_perm 644 /system/framework/com.publicnfc.jar
  set_perm 644 /system/framework/com.android.nfc_extras.jar
  set_perm 644 /system/framework/com.samsung.android.nfc.mpos.jar
  set_perm 644 /system/framework/com.samsung.android.nfc.rfcontrol.jar
  set_perm 644 /system/framework/com.samsung.android.nfc.t4t.jar
  set_perm 644 /system/framework/sec_platform_library.jar
  set_perm 644 /system/lib64/android.hardware.nfc@1.0.so
  set_perm 644 /system/lib64/android.hardware.nfc@1.1.so
  set_perm 644 /system/lib64/android.hardware.nfc@1.2.so
  set_perm 644 /system/lib64/android.hardware.nfc-V1-ndk.so
  set_perm 644 /system/lib64/libnfc_nxpsn_jni.so
  set_perm 644 /system/lib64/libnfc-nxpsn.so
  set_perm 644 /system/lib64/vendor.samsung.hardware.nfc@2.0.so
  set_perm 644 /system/app/NfcNci/NfcNci.apk
  set_perm 644 /system/app/NfcNci/lib/arm64/libnfc_nxpsn_jni.so
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Some templates if you have no idea what to do:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644
}
