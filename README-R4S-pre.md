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
# 默认安装docker全家桶
$ opkg install luci-i18n-dockerman-zh-cn luci-app-dockerman
$ opkg install opkg install git git-http usbutils pciutils lsof coreutils-nohup
```
