# Reto: Commitment Issues

## Descripción

I accidentally wrote the flag down. Good thing I deleted it!

## Solución

Al descomprimir el archivo y ver el contenido. Me di cuenta de que era un repositorio de git, y pensé que la solución tendría que ver con explorar el repo o ver la versión anterior de un archivo.

Sólo había un archivo.

```bash
ls
# message.txt
cat message.txt
# TOP SECRET
```

La flag no está presente, pero veamos los commits que se han hecho para buscar una posible versión anterior.

```bash
git log
# commit 42942c9c605b30100f5d859ef6e172027447c0db (HEAD -> master)
# Author: picoCTF <ops@picoctf.com>
# Date:   Tue Mar 12 00:06:23 2024 +0000
#
#     remove sensitive info
#
# commit b562f0b425907789d11d2fe2793e67592dc6be93
# Author: picoCTF <ops@picoctf.com>
# Date:   Tue Mar 12 00:06:23 2024 +0000
#
#     create flag
```

Notemos el primer commit 'crear flag'. Intentemos regresar a este commit.

```bash
git reset --hard b562f0b425907789d11d2fe2793e67592dc6be93
# HEAD is now at b562f0b create flag
cat message.txt
# picoCTF{s@n1t1z3_c785c319}
```

Esta versión del archivo tenía la flag.

`picoCTF{s@n1t1z3_c785c319}`
