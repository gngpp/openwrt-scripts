# packages
Openwrt packages

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

### 安装luci-app-statistics
```shell
wget https://raw.githubusercontent.com/zf1976/packages/main/luci-app/statistics.sh && sh statistics.sh && rm statistics.sh
```
