<p align="center">
    <a href="https://github.com/zf1976/packages/blob/main/README.md">README</a> | <a href="https://github.com/zf1976/packages/blob/main/README-R4S.md">R4S</a> | <a href="https://github.com/zf1976/packages/blob/main/README-360v6.md">360v6</a>
</p>

# 360v6
安装脚本使用的是最新版源的插件，自带源安装有坑

### neofetch
```shell
wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/neofetch.sh && sh neofetch.sh -i && rm neofetch.sh
```

### git、git-http
```shell
wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360V6/git.sh && sh git.sh -i && rm git.sh
```

### 常用luci-app
```shell
wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360V6/luci-app/base.sh && sh base.sh && rm base.sh
```

### luci-app-diskman
```shell
wget https://raw.githubusercontent.com/zf1976/optools/main/neofetch.sh && sh neofetch.sh -i && rm neofetch.sh
```

### luci-app-frpc、luci-app-frps
```shell
wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360V6/luci-app/frpc-frps.sh && sh frpc-frps.sh && rm frpc-frps.sh
```

### luci-app-filebrowser
```shell
wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/360V6/luci-app/filebrowser.sh && sh filebrowser.sh && rm filebrowser.sh
```
