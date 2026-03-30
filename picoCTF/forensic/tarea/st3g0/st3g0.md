# Reto: St3g0

## Descripción

Download this image and find the flag.

## Solución

Dado el nombre del reto, lo primero que pensé (después de checar los metadatos, claro), fue usar zsteg:
```bash
zsteg pico.flag.png
# b1,rgb,lsb,xy       .. text: "picoCTF{7h3r3_15_n0_5p00n_a9a181eb}$t3g0"
```

`picoCTF{7h3r3_15_n0_5p00n_a9a181eb}`
