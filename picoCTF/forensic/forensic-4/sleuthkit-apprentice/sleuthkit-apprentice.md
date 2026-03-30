# Reto: Sleuthkit Apprentice

## Descripción

Download this disk image and find the flag.
Note: if you are using the webshell, download and extract the disk image into /tmp not your home directory.

## Solución

Descomprimimos la imagen que bajamos.

Después, podemos ver los archivos de la partición que nos interesa:

```bash
fls -o 0000360448 disk.flag.img -r
# ++ r/r * 2082(realloc): flag.txt
# ++ r/r 2371:    flag.uni.txt
```

Podemos ver un archivo `flag.uni.txt`, que está borrado. Podemos usar el comando
```bash
icat -o 0000360448 disk.flag.img 2371
# picoCTF{by73_5urf3r_3497ae6b}
```

`picoCTF{by73_5urf3r_3497ae6b}`

## Notas

Sabemos que la partición que nos interesa es `0000360448` puesto que es la última que sale al hacer `mmls` en la columna start.

Sabemos que el archivo que nos interesa pues 2371 es el inodo del archivo `flag.uni.txt`, y también es el número que aparece después de su nombre al hacer fls.
