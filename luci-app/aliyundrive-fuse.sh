#!/bin/sh
## r4s-arm64
wget https://github.com/messense/aliyundrive-fuse/releases/download/v0.1.7/aliyundrive-fuse_0.1.7-1_aarch64_generic.ipk
wget https://github.com/messense/aliyundrive-fuse/releases/download/v0.1.7/luci-app-aliyundrive-fuse_0.1.7_all.ipk
wget https://github.com/messense/aliyundrive-fuse/releases/download/v0.1.7/luci-i18n-aliyundrive-fuse-zh-cn_0.1.7-1_all.ipk
opkg install aliyundrive-fuse_0.1.7-1_aarch64_generic.ipk
opkg install luci-app-aliyundrive-fuse_0.1.7_all.ipk
opkg install luci-i18n-aliyundrive-fuse-zh-cn_0.1.7-1_all.ipk
