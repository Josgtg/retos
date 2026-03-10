# Reto: extensions

## Descripción

This is a really weird text file. Can you find the flag?

## Solución

Al intentar leer el archivo, sólo podemos ver letras y símbolos al azar.

Intentamos ver el tipo de archivo:
```bash
file flag.txt
# flag.txt: PNG image data, 1697 x 608, 8-bit/color RGB, non-interlacedile 
```

¡Esto es una imagen! La abrimos (no sin antes ponerle su correcta extensión):
```bash
open flag.png
```

`picoCTF{now_you_know_about_extensions}`
