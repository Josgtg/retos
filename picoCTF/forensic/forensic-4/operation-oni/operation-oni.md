# Reto: Operation Oni

## Descripción

Download this disk image, find the key and log into the remote machine.
Note: if you are using the webshell, download and extract the disk image into /tmp not your home directory.

## Solución

Necesitamos una llave privada para conectarnos a un servidor. Esta llave privada está oculta en una imagen de disco.

Descomprimimos la imagen.

Hacemos el análisis de la imagen con `mmls` y `fls`.
```bash
mmls disk.img
# 0000206848
fls -o 0000206848 disk.img
# root es 470
fls -o 0000206848 disk.img 470 -r
# Vemos un archivo id_ed25519 de inodo 2345. Este archivo es la key que buscamos.
```

Copiamos la llave en nuestra máquina:
```bash
icat -o 0000206848 disk.img 2345 > key_file
chmod 600 key_file  # Es necesario cambiar los permisos del archivo
```
Ahora nos podemos conectar al servidor:
```bash
ssh -i key_file -p 61178 ctf-player@saturn.picoctf.net
```

Una vez en el servidor, podemos ver la flag sin problema.

`picoCTF{k3y_5l3u7h_b5066e83}`
