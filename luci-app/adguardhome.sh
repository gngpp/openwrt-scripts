#!/bin/sh
opkg update
wget https://op.supes.top/packages/aarch64_generic/luci-app-adguardhome_git-22.074.41762-a22cf4f_all.ipk
wget https://op.supes.top/packages/aarch64_generic/adguardhome_0.108.0-b.4-36_aarch64_generic.ipk

opkg install adguardhome_0.108.0-b.4-36_aarch64_generic.ipk
opkg install luci-app-adguardhome_git-22.074.41762-a22cf4f_all.ipk
rm adguardhome_0.108.0-b.4-36_aarch64_generic.ipk
rm luci-app-adguardhome_git-22.074.41762-a22cf4f_all.ipk
