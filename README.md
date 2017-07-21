Requirements
============
  - ability to run docker images as user
  - just run dartium.sh, it should detect all required settings
  - by default it opens a page on your IP on docker0 interface, port 8080

Do not forget
=============
  - You need to allow access to port 8080 from docker image
```
# iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
```

  - you need to pub serve on accessible address, like
```
$ pub serve --hostname 0.0.0.0
```

Dartium.sh
==========
This is just custom script to run docker image. It should handle UID mapping, create ~/.dartim-docker to store dartium settings, history etc. Most important is shm-size parameter. By default docker images have really small SHM which leads to dartium (and chromium) crashes.

Why to run dartium in docker
============================
  - Dartium has disabled sandboxing and other security features.
  - it conflicts with default chromium data
  - this is an easy way to separate this modified chromium from your system one (different versions, different configs etc.)
