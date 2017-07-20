Spusteni
========
  - funkcni docker jako uzivatel
  - staci spusti dartium.sh, vse by si mel zjisti a spustit
  - otevre stranku na localhoste (ip dockeru):8080

Je samozrejme nutne mit povoleny iptables a serve pusteny na spravnych IP:

```
# iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
$ pub serve --hostname 0.0.0.0
```
