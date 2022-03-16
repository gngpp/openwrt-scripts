# Openwrt packages
所有插件都为网上收集的开源仓库插件

### 安装基本工具包
> 含：`vim`、`cfdisk`、`rsync`、`git`、`git-http`、`usbutils`、`pciutils`、`lsof`、`coreutils-nohup`
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/base.sh && sh base.sh && rm base.sh
```

### 安装开发工具包
> 含：`golang`、 `erlang`、`rust`

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/dev.sh && sh dev.sh && rm dev.sh
```

### 安装zsh、oh-my-zsh、插件
- 安装zsh
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/zsh.sh && sh zsh.sh && rm zsh.sh
```
- 安装zsh插件
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/zsh-plugins.sh && sh zsh-plugins.sh && rm zsh-plugins.sh
```

> 提示类似符号”)“等报错，请删除`plugins(git)`行 

  
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

### 安装常用luci-app
> 含：`ttyd`、 `uhttpd`
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/base.sh && sh base.sh && rm base.sh
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

### 安装luci-app-filetransfer

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/filetransfer.sh && sh filetransfer.sh && rm filetransfer.sh
```

### 安装luci-app-ftpserver

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/ftpserver.sh && sh ftpserver.sh && rm ftpserver.sh
```

### 安装luci-app-alidns

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/alidns.sh && sh alidns.sh && rm alidns.sh
```

### 安装luci-app-nps、luci-app-npc

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/nps-npc.sh && sh nps-npc.sh && rm nps-npc.sh
```

### 使用nginx替换uhttpd
> 默认的uhttpd响应比较慢，建议替换为nginx。
> 先停止uhttp修改端口或者卸载uhttp，否则会端口冲突
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/nginx.sh && sh nginx.sh && rm nginx.sh
```
> 若需要uhttpd跟nginx同时使用，nginx需要修改默认80 443 端口防止跟uhttpd冲突
> 这时只要安装nginx就可以了，不需要luci-nginx模块
```shell
/etc/init.d/uhttpd stop
opkg update && opkg install nginx
``` 

## 小提示
> 如果你路由空间不算大，建议把包安装在外置磁盘空间
```shell
echo "dest usb /mnt/opkg" >> /etc/opkg.conf
# 重启shell会重置，把下面这条放在`/etc/profile` 就可以保存了
# 注意`$PATH`是原来的变量值
export PATH=$PATH:/mnt/opkg/usr/bin:/mnt/opkg/usr/sbin

# 安装package时指定安装目录
opkg install git -d usb
```
