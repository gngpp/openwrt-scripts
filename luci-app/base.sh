#!/bin/sh

opkg update

opkg install ttyd luci-i18n-ttyd-zh-cn luci-app-nlbwmon luci-i18n-nlbwmon-zh-cn luci-app-aria2 luci-i18n-aria2-zh-cn

opkg install luci-app-uhttpd luci-i18n-uhttpd-zh-cn luci-app-minidlna luci-i18n-minidlna-zh-cn luci-i18n-samba4-zh-cn luci-app-samba4 luci-app-watchcat luci-i18n-watchcat-zh-cn luci-app-wol luci-i18n-wol-zh-cn luci-app-lxc luci-i18n-lxc-zh-cn

wget https://op.supes.top/packages/aarch64_generic/luci-app-accesscontrol_git-22.049.56376-f644175_all.ipk
opkg install luci-app-accesscontrol_git-22.049.56376-f644175_all.ipk
rm ./luci-app-accesscontrol_git-22.049.56376-f644175_all.ipk

wget https://op.supes.top/packages/aarch64_generic/luci-app-rclone_git-22.049.56376-f644175_all.ipk
opkg install luci-app-rclone_git-22.049.56376-f644175_all.ipk
rm luci-app-rclone_git-22.049.56376-f644175_all.ipk
