#!/bin/sh

opkg update

opkg install luci-app-acme luci-i18n-acme-zh-cn ttyd luci-i18n-ttyd-zh-cn luci-app-nlbwmon luci-i18n-nlbwmon-zh-cn luci-app-aria2 luci-i18n-aria2-zh-cn luci-app-openvpn luci-i18n-openvpn-zh-cn

opkg install luci-app-syncthing luci-i18n-syncthing-zh-cn luci-app-uhttpd luci-i18n-uhttpd-zh-cn luci-app-minidlna luci-i18n-minidlna-zh-cn luci-i18n-samba4-zh-cn luci-app-samba4 luci-app-watchcat luci-i18n-watchcat-zh-cn luci-app-wol luci-i18n-wol-zh-cn luci-app-lxc luci-i18n-lxc-zh-cn

opkg install luci-app-hd-idle luci-i18n-hd-idle-zh-cn luci-app-gowebdav luci-app-gowebdav-zh-cn luci-app-advancedsetting luci-i18n-advancedsetting-zh-cn luci-app-omcproxy luci-i18n-omcproxy-zh-cn luci-app-verysync luci-i18n-verysync-zh-cn

opkg install luci-app-rclone luci-i18n-rclone-zh-cn luci-app-filebrowser luci-app-speederv2 luci-i18n-speederv2-zh-cn
