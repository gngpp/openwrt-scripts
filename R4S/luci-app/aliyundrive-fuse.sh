#!/bin/sh
## r4s-arm64
wget https://github.com/messense/aliyundrive-fuse/releases/download/v0.1.9/aliyundrive-fuse_0.1.9-1_aarch64_generic.ipk
wget https://github.com/messense/aliyundrive-fuse/releases/download/v0.1.9/luci-app-aliyundrive-fuse_0.1.9_all.ipk
wget https://github.com/messense/aliyundrive-fuse/releases/download/v0.1.9/luci-i18n-aliyundrive-fuse-zh-cn_0.1.9-1_all.ipk

opkg update
opkg install aliyundrive-fuse_0.1.9-1_aarch64_generic.ipk
opkg install luci-app-aliyundrive-fuse_0.1.9_all.ipk
opkg install luci-i18n-aliyundrive-fuse-zh-cn_0.1.9-1_all.ipk

rm aliyundrive-fuse_0.1.9-1_aarch64_generic.ipk
rm luci-app-aliyundrive-fuse_0.1.9_all.ipk
rm luci-i18n-aliyundrive-fuse-zh-cn_0.1.9-1_all.ipk
