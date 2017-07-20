#!/bin/bash
groupmod -g $GID user
usermod -u $UID -g $GID user

if [ -d /home/user/ ]; then
  chown -R user:user /home/user/
fi

exec su -ls "/bin/bash" -c "DART_FLAGS='--checked' /opt/dartium/chrome $ARGS $URL" user
