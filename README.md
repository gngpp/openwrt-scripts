# optools
Openwrt initialization script

- 安装neofetch
> 更新wegt的ssl支持
``` 
opkg update
opkg install libustream-openssl ca-bundle ca-certificates
opkg install wget --force-reinstall
```
> 安装：
```shell
wget https://raw.githubusercontent.com/zf1976/optools/main/neofetch.sh && sh neofetch -i
```
