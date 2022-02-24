#!/bin/ash
docker run -d \
    --name filebrowser \
    -v /:/srv \
    -v /root/docker_disk/filebrowser/filebrowser.db:/database.db \
    --user $(id -u):$(id -g) \
    -p 8000:80 \
    --restart=always \
    filebrowser/filebrowser
