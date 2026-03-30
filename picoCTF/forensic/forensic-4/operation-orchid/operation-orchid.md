# Reto: Operation Orchid

## Descripción

Download this disk image and find the flag.
Note: if you are using the webshell, download and extract the disk image into /tmp not your home directory.

## Solución

Utilizamos `mmls` para saber en qué particion buscar:
```bash
mmls disk.flag.img
# 0000411648
```

Listamos los arhchivos:
```bash
fls -o 0000411648 disk.flag.img
# La carpeta root tiene un inodo 472
```

Checamos la carpeta root:
```bash
fls -o 0000411648 disk.flag.img 472
```

Notamos que hay un archivo flag.txt, sin embargo, este archivo fue ya sobreescrito por nueva información por lo que no lo podemos recuperar. Por fortuna, hay una vesión encriptada de esta flag. Nos traemos la flag a la computadora local:
```bash
icat -o 0000411648 disk.flag.img 1782 > flag.txt.enc
```

También podemos ver un historial de comandos.
```bash
icat -o 0000411648 disk.flag.img 1875
# openssl aes256 -salt -in flag.txt.enc -out flag.txt -k unbreakablepassword1234567
```

Conociendo esta información, podemos revertir esta encripción.
```bash
openssl aes256 -d -salt -in flag.txt.enc -out flag.txt -k unbreakablepassword1234567
# *** WARNING : deprecated key derivation used.
# Using -iter or -pbkdf2 would be better.
# bad decrypt
# 40D7615BEA7E0000:error:1C800064:Provider routines:ossl_cipher_unpadblock:bad decrypt:../providers/implementations/ciphers/ciphercommon_block.c:124:
# Tiene errores raros pero todo va bien
```

`picoCTF{h4un71ng_p457_0a710765}`
