# Reto: So Meta

## Descripción

Find the flag in this picture.

## Solución

Como se nos sugería, la clave se ocultaba en los metadatos.

En la consola:
```bash
exiftool pico_image.png
# Más atributos...
# Artist : picoCTF{s0_m3ta_ba6c953a}
```

`picoCTF{s0_m3ta_ba6c953a}`
