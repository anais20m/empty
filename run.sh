#!/bin/bash

#test
cd android/lineage
repo sync --force-sync -j8
device trees
git clone https://github.com/ArrowOS-Devices/android_kernel_gm_msm8937 kernel/GM/GM8_sprout
git clone https://github.com/yigityanik/android_device_GM_GM8_sprout device/GM/GM8_sprout
git clone https://github.com/yigityanik/android_vendor_GM_GM8_sprout vendor/GM/GM8_sprout

#build
source build/envsetup.sh
lunch lineage_GM8_sprout-userdebug
brunch GM8_sprout
