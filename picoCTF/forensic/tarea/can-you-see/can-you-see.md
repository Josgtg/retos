# Reto: CanYouSee

## Descripción

How about some hide and seek?

## Solución

Lo primero que se le ocurre a uno es ver los metadatos. Utilizamos exiftool y vemos esta línea curiosa:
```bash
exiftool ukn_reality.jpg
# Attribution URL : cGljb0NURntNRTc0RDQ3QV9ISUREM05fNmE5ZjVhYzR9Cg==
```
Al ver un signo `=` en una string inmediatamente pienso en base64 y con la fascinación que tienen los de pico por eso vamos a decodificar esta string:
```bash
echo "cGljb0NURntNRTc0RDQ3QV9ISUREM05fNmE5ZjVhYzR9Cg==" | base64 -d
# picoCTF{ME74D47A_HIDD3N_6a9f5ac4}
```

`picoCTF{ME74D47A_HIDD3N_6a9f5ac4}`
