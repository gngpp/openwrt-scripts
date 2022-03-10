#!/bin/sh

opkg update
# ttyd
opkg install ttyd luci-i18n-ttyd-zh-cn
# uhttpd
opkg install luci-app-uhttpd luci-i18n-uhttpd-zh-cn
