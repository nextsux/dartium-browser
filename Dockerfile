FROM debian:latest
MAINTAINER Martin -nexus- Mlynář <nextsux+github@gmail.com>
VOLUME ["/tmp/.X11-unix"]

RUN apt-get update && apt-get install -y chromium wget unzip libgconf-2-4 libexif12 xterm
RUN useradd -m user1000 -u 1000
USER 1000
WORKDIR /home/user1000/
RUN wget https://storage.googleapis.com/dart-archive/channels/stable/release/latest/dartium/dartium-linux-x64-release.zip && unzip ./dartium-linux-x64-release.zip
WORKDIR /home/user1000/dartium-linux-x64-stable-1.24.2.0/

CMD ["./chrome"]
