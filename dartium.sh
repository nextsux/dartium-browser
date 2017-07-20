#!/bin/bash

mkdir -p ~/.dartium-docker
docker run --shm-size 8G -ti --rm \
    -e DISPLAY=$DISPLAY \
    -e UID=$(id -u) \
    -e GID=$(id -g) \
    -e URL=$(ip addr show docker0 | grep -Po 'inet \K[\d.]+'):8080 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/.dartium-docker/:/home/user/ \
    registry.smoula.net/nexus/dartium-browser:latest
