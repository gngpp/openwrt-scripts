<p align="center">
  <strong>README</strong> | <a href="https://github.com/zf1976/packages/blob/main/README-R4S.md">R4S</a> | <a href="https://github.com/zf1976/packages/blob/main/README-360v6.md">360v6</a>
</p>

### 安装常用luci-app
> 含：`ttyd`、 `uhttpd`
```shell
wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/R4S/luci-app/base.sh && sh base.sh && rm base.sh
```

### 安装luci-app-alist
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/alist.sh && sh alist.sh && rm alist.sh
```

### 安装luci-app-statistics
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/statistics.sh && sh statistics.sh && rm statistics.sh
```

### 安装luci-app-filebrowser
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/filebrowser.sh && sh filebrowser.sh && rm filebrowser.sh
```

### 安装luci-app-poweroff
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/poweroff.sh && sh poweroff.sh && rm poweroff.sh
```

### 安装luci-app-aliyundrive-fuse
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/aliyundrive-fuse.sh && sh aliyundrive-fuse.sh && rm aliyundrive-fuse.sh
```

### 安装luci-app-aliyundrive-webdav
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/aliyundrive-webdav.sh && sh aliyundrive-webdav.sh && rm aliyundrive-webdav.sh
```

### 安装luci-app-filetransfer

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/filetransfer.sh && sh filetransfer.sh && rm filetransfer.sh
```

### 安装luci-app-ftpserver

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/ftpserver.sh && sh ftpserver.sh && rm ftpserver.sh
```

### 安装luci-app-alidns

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/alidns.sh && sh alidns.sh && rm alidns.sh
```

### 安装luci-app-nps、luci-app-npc

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/nps-npc.sh && sh nps-npc.sh && rm nps-npc.sh
```

### 安装luci-app-adguardhome

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/adguardhome.sh && sh adguardhome.sh && rm adguardhome.sh
```

### 安装luci-app-adbyby

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/adbyby.sh && sh adbyby.sh && rm adbyby.sh
```

### 安装luci-app-ttnode

```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/luci-app/ttnode.sh && sh ttnode.sh && rm ttnode.sh
```

### 使用nginx替换uhttpd
> 默认的uhttpd响应比较慢，建议替换为nginx。
> 先停止uhttp修改端口或者卸载uhttp，否则会端口冲突
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/R4S/nginx.sh && sh nginx.sh && rm nginx.sh
```
> 若需要uhttpd跟nginx同时使用，nginx需要修改默认80 443 端口防止跟uhttpd冲突
> 这时只要安装nginx就可以了，不需要luci-nginx模块
```shell
/etc/init.d/uhttpd stop
opkg update && opkg install nginx
``` 