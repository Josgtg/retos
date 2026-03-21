# Reto: tunn3l v1s10n

## Descripción

We found this file. Recover the flag.

## Solución

El archivo parece estar mal formado. Viendo el archivo con un editor hexadecimal vemos el inicio 'BM', lo cual nos dice que este es un archivo BMP.

Inspeccionamos este archivo con el objetivo de arreglar el formato. Las correcciones que se hicieron fueron:
- Modificar las secciones que contenían la longitud del header. Se asignaron al número 40 (o 28 en hexadecimal).
- Modifcar la sección de ancho y alto para mostrar más de la imagen (offset 16 y 12 respectivamente).

Después de estos cambios, fue posible abrir la imagen y ver la flag dentro.

`picoCTF{qu1t3_a_v13w_2020}`

## Referencias

[Formato de archivo BMP en wikipedia](https://en.wikipedia.org/wiki/BMP_file_format)
