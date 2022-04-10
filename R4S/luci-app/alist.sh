#!/bin/sh

## r4s-arm64
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.3.2/alist_2.3.2-1_aarch64_generic.ipk
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.3.2/luci-app-alist_1.0.3_all.ipk
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.3.2/luci-i18n-alist-zh-cn_git-22.066.35731-e2fd8f5_all.ipk

opkg install alist_2.3.2-1_aarch64_generic.ipk
opkg install luci-app-alist_1.0.3_all.ipk
opkg install luci-i18n-alist-zh-cn_git-22.066.35731-e2fd8f5_all.ipk

rm alist_2.3.2-1_aarch64_generic.ipk
rm luci-app-alist_1.0.3_all.ipk
rm luci-i18n-alist-zh-cn_git-22.066.35731-e2fd8f5_all.ipk
