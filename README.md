Uzivatel musi mit zatim **UID 1000 ($ id)**

spousti se

```
$ docker run -ti --rm --shm-size 4G -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix registry.smoula.net/nexus/dartium-browser:latest
```

pub serve je potreba otevrit mimo localhost a mit povoleny port 8080 v iptables. Pak uz staci v dartiu otevrit http://**IP**:8080/

```
# iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
$ pub serve --hostname 0.0.0.0
```
