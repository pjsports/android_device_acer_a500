#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso.rc:root/init.picasso.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso.usb.rc:root/init.picasso.usb.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/ueventd.picasso.rc:root/ueventd.picasso.rc \

# kernel modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    $(LOCAL_PATH)/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/prebuilt/modules/cifs.ko:system/lib/modules/cifs.ko \
    $(LOCAL_PATH)/prebuilt/modules/hfs.ko:system/lib/modules/hfs.ko \
    $(LOCAL_PATH)/prebuilt/modules/hfsplus.ko:system/lib/modules/hfsplus.ko \
    $(LOCAL_PATH)/prebuilt/modules/md4.ko:system/lib/modules/md4.ko \
    $(LOCAL_PATH)/prebuilt/modules/ntfs.ko:system/lib/modules/ntfs.ko 

# hw permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml

# prebuilt configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/wpa_supplicant:system/etc/wpa_supplicant \
    $(LOCAL_PATH)/prebuilt/bin/get-gps-lto:system/bin/get-gps-lto \
    $(LOCAL_PATH)/prebuilt/bin/axel:system/bin/axel \
    $(LOCAL_PATH)/prebuilt/bin/sysro:system/bin/sysro \
    $(LOCAL_PATH)/prebuilt/bin/sysrw:system/bin/sysrw \
    $(LOCAL_PATH)/prebuilt/data/gps/lto.dat:data/gps/lto.dat \
    $(LOCAL_PATH)/prebuilt/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/acer-dock.kl:system/usr/keylayout/acer-dock.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dinfo.radio=Wifi

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, build/target/product/full_base.mk)

# inherit t20-common
$(call inherit-product, device/acer/t20-common/t20-common.mk)

# inherit proprietary files
$(call inherit-product-if-exists, vendor/acer/a500/a500-vendor.mk)

PRODUCT_DEVICE := a500
PRODUCT_MODEL  := A500
