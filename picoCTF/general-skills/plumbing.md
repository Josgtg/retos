# Reto: Plumbing

## Descripción

Sometimes you need to handle process data outside of a file. Can you find a way to keep the output from this program and search for the flag?
Connect to fickle-tempest.picoctf.net 52788.

## Solución

En la consola:
```bash
nc fickle-tempest.picoctf.net 52788 | grep -E picoCTF{.+?}
```
picoCTF{digital_plumb3r_8c8f3412}

## Notas

Esta es una combinación de los problemas relacionados al uso de grep y de netcat.
