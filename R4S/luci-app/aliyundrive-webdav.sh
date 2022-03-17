#!/bin/sh

## r4s-arm64
wget https://github.com/messense/aliyundrive-webdav/releases/download/v1.2.5/aliyundrive-webdav_1.2.5-1_aarch64_generic.ipk
wget https://github.com/messense/aliyundrive-webdav/releases/download/v1.2.5/luci-app-aliyundrive-webdav_1.2.5_all.ipk
wget https://github.com/messense/aliyundrive-webdav/releases/download/v1.2.5/luci-i18n-aliyundrive-webdav-zh-cn_1.2.5-1_all.ipk

opkg install aliyundrive-webdav_1.2.5-1_aarch64_generic.ipk
opkg install luci-app-aliyundrive-webdav_1.2.5_all.ipk
opkg install luci-i18n-aliyundrive-webdav-zh-cn_1.2.5-1_all.ipk

rm aliyundrive-webdav_1.2.5-1_aarch64_generic.ipk
rm luci-app-aliyundrive-webdav_1.2.5_all.ipk
rm luci-i18n-aliyundrive-webdav-zh-cn_1.2.5-1_all.ipk
