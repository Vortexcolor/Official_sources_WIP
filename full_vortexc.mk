# mt-7000  product config

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/vortexc/overlay

PRODUCT_PACKAGES += \
	hwcomposer.exDroid \
	camera.exDroid \
	lights.sun5i \
	display.sun5i

PRODUCT_PACKAGES += \
	audio.primary.exDroid \
	audio.a2dp.default \
	libaudioutils \
	libcedarxbase \
	libcedarxosal \
	libcedarxsftdemux \
	libcedarv \
	libaw_audio \
	libswa1 \
	libswdrm \
	libstagefright_soft_cedar_h264dec \
	Camera \
	libjni_mosaic \
	u3gmonitor \
	chat \
	libjni_pinyinime

# EXT4 support
PRODUCT_PACKAGES += \
	e2fsck \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	make_ext4fs

PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	LiveWallpapers \
	android.software.live_wallpaper.xml

PRODUCT_PACKAGES += \
	TSCalibration2

PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/kernel:kernel \
	device/softwinner/vortexc/recovery.fstab:recovery.fstab

# Ramdisk
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/root/ueventd.sun5i.rc:root/ueventd.sun5i.rc \
	device/softwinner/vortexc/prebuilt/root/init.sun5i.rc:root/init.sun5i.rc \
	device/softwinner/vortexc/prebuilt/root/init.sun5i.usb.rc:root/init.sun5i.usb.rc \
	device/softwinner/vortexc/prebuilt/root/init.rc:root/init.rc

# Hardware Configs
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/softwinner/vortexc/prebuilt/etc/camera.cfg:system/etc/camera.cfg \
	device/softwinner/vortexc/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/softwinner/vortexc/prebuilt/etc/gps.conf:system/etc/gps.conf

# Input device config
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/usr/keylayout/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
        device/softwinner/vortexc/prebuilt/usr/idc/aw5306_ts.idc:system/usr/idc/aw5306_ts.idc \
	device/softwinner/vortexc/prebuilt/usr/idc/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	device/softwinner/vortexc/prebuilt/usr/keylayout/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl
      
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/root/initlogo.rle:root/initlogo.rle

# Media
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# EGL
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/lib/hw/gralloc.sun5i.so:system/lib/hw/gralloc.sun5i.so \
	device/softwinner/vortexc/prebuilt/lib/libMali.so:system/lib/libMali.so \
	device/softwinner/vortexc/prebuilt/lib/libUMP.so:system/lib/libUMP.so \
	device/softwinner/vortexc/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/softwinner/vortexc/prebuilt/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/softwinner/vortexc/prebuilt/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/softwinner/vortexc/prebuilt/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/softwinner/vortexc/prebuilt/lib/libppbox-armandroid-r4-gcc44-mt-1.0.0.so:system/lib/libppbox-armandroid-r4-gcc44-mt-1.0.0.so \
	device/softwinner/vortexc/prebuilt/lib/egl/libpplivep2p-jni.so:system/lib/libpplivep2p-jni.so 

# Preinstalled scripts
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/bin/preinstall.sh:/system/bin/preinstall.sh \
        device/softwinner/vortexc/dprebuilt/bin/ata_resume.sh:/system/bin/data_resume.sh

# Permission feature
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# sw-common
PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/bin/fsck.exfat:system/bin/fsck.exfat \
	device/softwinner/vortexc/prebuilt/bin/mkfs.exfat:system/bin/mkfs.exfat \
	device/softwinner/vortexc/prebuilt/bin/mount.exfat:system/bin/mount.exfat \
	device/softwinner/vortexc/prebuilt/bin/ntfs-3g:system/bin/ntfs-3g \
	device/softwinner/vortexc/prebuilt/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
	device/softwinner/vortexc/prebuilt/bin/mkntfs:system/bin/mkntfs \
	device/softwinner/vortexc/prebuilt/bin/busybox:system/bin/busybox	

# 3g dongle conf
# Does vortex color have 3g?

PRODUCT_COPY_FILES += \
	device/softwinner/vortexc/prebuilt/etc/ip-down:system/etc/ppp/ip-down \
	device/softwinner/vortexc/prebuilt/etc/ip-up:system/etc/ppp/ip-up \
	device/softwinner/vortexc/prebuilt/etc/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/vortexc/prebuilt/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \
	device/softwinner/vortexc/prebuilt/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/softwinner/vortexc/prebuilt/bin/usb_modeswitch:system/bin/usb_modeswitch \
	device/softwinner/vortexc/prebuilt/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/softwinner/vortexc/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

