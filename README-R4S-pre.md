# R4S

- R4S适用于固件项目：https://github.com/SuLingGG/OpenWrt-Rpi

  ![image-20220608110441062](./R4S/img/image-20220608110441062.png)

### luci-app-alist
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/gngpp/openwrt-packages/main/R4S/luci-app/alist.sh)"
```

### luci-app-aliyundrive-fuse
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/gngpp/openwrt-packages/main/R4S/luci-app/aliyundrive-fuse.sh)"
```

### luci-app-aliyundrive-webdav
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/gngpp/openwrt-packages/main/R4S/luci-app/aliyundrive-webdav.sh)"
```

- install command line

```shell
$ opkg update
$ opkg install luci-app-onliner luci-i18n-onliner-zh-cn
$ opkg install filebrowser luci-app-filebrowser
# 默认安装docker全家桶,20.10.16-1版本docker有bug，每次重启停止iptables规则不会清除，并且每次启动容器，容器ip会变，因为iptables规则没清除导致规则混乱，iptables nat这边就出问题，lan口设备无法访问映射端口的容器
$ opkg install luci-i18n-dockerman-zh-cn luci-app-dockerman
$ opkg install git git-http usbutils pciutils lsof coreutils-nohup
# GPU
$ opkg install kmod-drm-panfrost
$ opkg install luci-app-aliddns luci-i18n-aliddns-zh-cn luci-app-vlmcsd
$ opkg install luci-app-advancedsetting luci-i18n-advancedsetting-zh-cn
$ opkg install luci-app-accesscontrol luci-i18n-accesscontrol-zh-cn
$ opkg install luci-app-upnp luci-i18n-upnp-zh-cn
$ opkg install luci-app-appfilter luci-i18n-appfilter-zh-cn luci-app-beardropper luci-i18n-beardropper-zh-cn
$ opkg install luci-app-gost luci-i18n-gost-zh-cn
$ opkg install luci-app-syncthing luci-app-timecontrol luci-app-unblockneteasemusic-go UnblockNeteaseMusic-Go
# Control
$ opkg install luci-app-weburl luci-i18n-weburl-zh-cn luci-app-webrestriction luci-i18n-webrestriction-zh-cn luci-app-uugamebooster luci-i18n-uugamebooster-zh-cn luci-app-timewol luci-i18n-timewol-zh-cn luci-app-wol luci-i18n-wol-zh-cn
$ opkg install luci-app-ramfree	luci-i18n-ramfree-zh-cn luci-app-vssr luci-i18n-vssr-zh-cn
$ opkg install baidupcs-web luci-app-baidupcs-web
```
[参考-packages](https://doc.openwrt.cc/1-General/7-Packages/)

- squashfs固件在线升级自动扩容

> 请创建一个新分区，并且挂载到/opt路径，之后把固件xx.img.gz放到/opt路径中再执行升级扩容脚本。

```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/gngpp/openwrt-packages/main/update.sh)"
```

