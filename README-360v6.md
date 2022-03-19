<p align="center">
    <a href="https://github.com/zf1976/packages/blob/main/README.md">README</a> | <a href="https://github.com/zf1976/packages/blob/main/README-R4S.md">R4S</a> | <a href="https://github.com/zf1976/packages/blob/main/README-360v6.md">360v6</a>
</p>

# 360v6
安装脚本使用的是最新版源的插件，自带源安装有坑

<img src="./360v6/img/360v6.png"/>

### git、git-http
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/git.sh)"
```

### speedtest-go
> web: `http://192.168.1.1:8989`
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/speedtest-go.sh)"
```

### filebrowser
> 默认账号密码：`admin`
> web: `http://192.168.1.1:8080`
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/filebrowser.sh)"
```

### 常用luci-app
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/luci-app/base.sh)"
```

### luci-app-diskman
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/luci-app/diskman.sh)"
```

### luci-app-frpc、luci-app-frps
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/luci-app/frpc-frps.sh)"
```

### luci-app-filebrowser
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/luci-app/filebrowser.sh)"
```

### luci-app-alist
```shell
sh -c "$(curl -sSL https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360v6/luci-app/alist.sh)"
```
