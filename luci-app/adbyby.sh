#!/bin/sh
opkg update
wget https://op.supes.top/packages/aarch64_generic/luci-app-adbyby-plus_git-22.049.56376-f644175_all.ipk
wget https://op.supes.top/packages/aarch64_generic/adbyby_2.7-3_aarch64_generic.ipk

opkg install adbyby_2.7-3_aarch64_generic.ipk
rm /lib/upgrade/keep.d/adbyby
opkg install luci-app-adbyby-plus_git-22.049.56376-f644175_all.ipk

rm luci-app-adbyby-plus_git-22.049.56376-f644175_all.ipk
rm adbyby_2.7-3_aarch64_generic.ipk
