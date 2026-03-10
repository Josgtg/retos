# Reto: What's a net cat?

## Descripción

Using netcat (nc) is going to be pretty important. Can you connect to fickle-tempest.picoctf.net at port 63381 to get the flag?

## Solución

En la consola:
```bash
nc fickle-tempest.picoctf.net 63381
```
You're on your way to becoming the net cat master
picoCTF{nEtCat_Mast3ry_575F8fFd}

## Notas

Netcat es una herramienta de red que permite a través de intérprete de comandos y con una sintaxis sencilla abrir puertos TCP/UDP en un HOST (quedando netcat a la escucha), asociar una shell a un puerto en concreto (para conectarse por ejemplo a MS-DOS o al intérprete bash de Linux remotamente) y forzar conexiones UDP/TCP (útil por ejemplo para realizar rastreos de puertos o realizar transferencias de archivos bit a bit entre dos equipos). Fue originalmente desarrollada por Hobbit en 1996 y liberada bajo una licencia de software libre permisiva (no copyleft, similar a BSD, MIT) para UNIX. Posteriormente fue portada a Windows y Mac OS X entre otras plataformas. Existen muchos forks de esta herramienta que añaden características nuevas como GNU Netcat o Cryptcat.

Entre sus múltiples aplicaciones, es frecuente la depuración de aplicaciones de red. También es utilizada a menudo para abrir puertas traseras en un sistema.
