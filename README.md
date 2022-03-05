# packages
Openwrt packages

### 安装基本工具包
> 含：`vim`、`cfdisk`、`git`、`git-http`、`usbutils`、`pciutils`、`lsof`、`coreutils-nohup`
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/base.sh && sh base.sh && rm base.sh
```

### 安装开发工具包
> 含：`golang`、 `erlang`、`rust`

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/dev.sh && sh dev.sh && rm dev.sh
```

### 安装zsh、oh-my-zsh、插件
```shell
wget https://raw.githubusercontent.com/zf1976/optools/main/zsh.sh && sh zsh.sh && rm zsh.sh
```

  
### 安装neofetch  
- 更新wegt的ssl支持
``` 
opkg update
opkg install libustream-openssl ca-bundle ca-certificates
opkg install wget --force-reinstall
```
  
- 安装：
```shell
wget https://raw.githubusercontent.com/zf1976/optools/main/neofetch.sh && sh neofetch.sh -i && rm neofetch.sh
```

### 安装luci-app-alist
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/alist.sh && sh alist.sh && rm alist.sh
```

### 安装luci-app-statistics
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/statistics.sh && sh statistics.sh && rm statistics.sh
```

### 安装luci-app-filebrowser
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/filebrowser.sh && sh filebrowser.sh && rm filebrowser.sh
```

### 安装luci-app-poweroff
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/poweroff.sh && sh poweroff.sh && rm poweroff.sh
```

### 安装luci-app-aliyundrive-fuse
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/aliyundrive-fuse.sh && sh aliyundrive-fuse.sh && rm aliyundrive-fuse.sh
```

### 安装luci-app-aliyundrive-webdav
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/aliyundrive-webdav.sh && sh aliyundrive-webdav.sh && rm aliyundrive-webdav.sh
```

### 安装luci-app-alidns
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/alidns.sh && sh alidns.sh && rm alidns.sh
```
