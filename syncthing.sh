#!/bin/bash

podman run --name syncthing -d --restart=always \
    -p 8384:8384 -p 22000:22000/tcp -p 22000:22000/udp -p 21027:21027/udp \
    -v /home/mikael/Documents/Syncthing:/var/syncthing \
    --network=host \
    syncthing/syncthing:latest
