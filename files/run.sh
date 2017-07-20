#!/bin/bash
groupmod -g $GID user
usermod -u $UID -g $GID user

if [ -d /home/user/ ]; then
  chown -R user:user /home/user/
fi

export DART_FLAGS='--checked'
exec su -ls "/bin/bash" -c "/opt/dartium/chrome $ARGS $URL" user
