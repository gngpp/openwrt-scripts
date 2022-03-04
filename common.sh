#!/bin/ash

# base
opkg update && opkg install vim cfdisk git git-http usbutils pciutils lsof coreutils-nohup

# luci-app-statistics
opkg update && opkg install luci-app-statistics luci-i18n-statistics-zh-cn collectd-mod-cpu collectd-mod-interface collectd-mod-memory collectd-mod-ping collectd-mod-rrdtool collectd-mod-wireless collectd-mod-dns
