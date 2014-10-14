$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

LOCAL_PATH := device/cube/u30gt2
LOCAL_KERNEL := $(LOCAL_PATH)/recovery/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

## During Development we will turn off all security etc.
ADDITIONAL_DEFAULT_PROPERTIES := \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debugabble=1

# system files
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/init.rc:root/init.rc \
	$(LOCAL_PATH)/recovery/init.rk3188.rc:root/init.rk3188.rc \
	$(LOCAL_PATH)/recovery/init.rk3188.usb.rc:root/init.rk3188.usb.rc \
	$(LOCAL_PATH)/recovery/init.recovery.rk3188.rc:root/init.recovery.rk3188.rc \
	$(LOCAL_PATH)/recovery/ueventd.rk3188.rc:root/ueventd.rk3188.rc \
	$(LOCAL_PATH)/recovery/rk29-ipp.ko:root/rk29-ipp.ko \
	$(LOCAL_PATH)/recovery/rk30xxnand_ko.ko:root/rk30xxnand_ko.ko \
	$(LOCAL_PATH)/recovery/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/recovery/ueventd.goldfish.rc:root/ueventd.goldfish.rc

# copy rktools
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/cube/u30gt2/rktools,rktools)

# copy the builder
PRODUCT_COPY_FILES += \
	device/cube/u30gt2/custom_boot.sh:custom_boot.sh

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# filesystem tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	static_busybox \
	utility_make_ext4fs \
	libstagefrighthw

# dalvik fix
PRODUCT_PROPERY_OVERRIDES += \
	dalvik.vm.dexopt-data-only=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u30gt2
PRODUCT_DEVICE := u30gt2
