FROM debian:latest
MAINTAINER Martin -nexus- Mlynář <nextsux+github@gmail.com>

ENV VERSION=1.25.0-dev.6.0
ENV DIRVERSION=1.25.0-dev.6.0.0
ENV DISPLAY=:0

VOLUME ["/tmp/.X11-unix"]

RUN apt-get update && apt-get install -y chromium wget unzip libgconf-2-4 libexif12 xterm
WORKDIR /opt/
RUN wget https://storage.googleapis.com/dart-archive/channels/dev/release/$VERSION/dartium/dartium-linux-x64-release.zip -O dartium.zip
RUN unzip ./dartium.zip && mv /opt/dartium-linux-x64-dev-$DIRVERSION /opt/dartium

RUN useradd -m user -u 1000
USER 1000
WORKDIR /home/user/

ENV DART_FLAGS='--checked'
CMD ["/opt/dartium/chrome"]
