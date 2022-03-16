#!/bin/sh
opkg update && opkg install adguardhome
wget https://op.supes.top/packages/aarch64_generic/luci-app-adguardhome_git-22.074.41762-a22cf4f_all.ipk

opkg install luci-app-adguardhome_git-22.074.41762-a22cf4f_all.ipk
rm luci-app-adguardhome_git-22.074.41762-a22cf4f_all.ipk
