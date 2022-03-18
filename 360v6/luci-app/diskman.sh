#!/bin/sh

opkg update
wget https://mirrors.tuna.tsinghua.edu.cn/lede/releases/packages-21.02/aarch64_cortex-a53/packages/parted_3.4-1_aarch64_cortex-a53.ipk
wget https://github.com/lisaac/luci-app-diskman/releases/download/v0.2.11/luci-app-diskman_v0.2.11_all.ipk

opkg install ./parted_3.4-1_aarch64_cortex-a53.ipk
opkg install ./luci-app-diskman_v0.2.11_all.ipk

rm ./luci-app-diskman_v0.2.11_all.ipk
rm ./parted_3.4-1_aarch64_cortex-a53.ipk
