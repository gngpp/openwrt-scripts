#!/bin/sh

## r4s-arm64
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.1.0/alist_2.1.0-1_aarch64_generic.ipk
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.1.0/luci-app-alist_1.0.2_all.ipk
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.1.0/luci-i18n-alist-zh-cn_git-22.062.75936-0030bc0_all.ipk

opkg install alist_2.1.0-1_aarch64_generic.ipk
opkg install luci-app-alist_1.0.2_all.ipk
opkg install luci-i18n-alist-zh-cn_git-22.062.75936-0030bc0_all.ipk

rm alist_2.1.0-1_aarch64_generic.ipk
rm luci-app-alist_1.0.2_all.ipk
rm luci-i18n-alist-zh-cn_git-22.062.75936-0030bc0_all.ipk
