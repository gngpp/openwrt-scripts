# optools
Openwrt initialization script

- 安装neofetch
> 更新wegt的ssl支持
``` 
opkg update
opkg install libustream-openssl ca-bundle ca-certificates
opkg install wget --force-reinstall
wget "https://raw.githubusercontent.com/zf1976/oputils/master/plugins/install.sh" && sh
```
