#!/bin/ash

# base
opkg update && opkg install vim cfdisk git git-http usbutils pciutils lsof

# luci-app-statistics
opkg update && opkg install luci-app-statistics collectd-mod-cpu collectd-mod-interface collectd-mod-memory collectd-mod-ping collectd-mod-rrdtool collectd-mod-wireless collectd-mod-dns
