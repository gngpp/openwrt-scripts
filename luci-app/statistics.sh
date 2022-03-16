#!/bin/ash
opkg update && opkg install luci-app-statistics luci-i18n-statistics-zh-cn 
opkg install collectd-mod-cpu collectd-mod-interface collectd-mod-memory collectd-mod-ping collectd-mod-rrdtool collectd-mod-wireless collectd-mod-dns
