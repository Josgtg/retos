# Reto: Glitch cat

## Descripción

Our flag printing service has started glitching!
$ nc saturn.picoctf.net 50021

## Solución

En python:
```python
print('picoCTF{gl17ch_m3_n07_' + chr(0x61) + chr(0x34) + chr(0x33) + chr(0x39) + chr(0x32) + chr(0x64) + chr(0x32) + chr(0x65) + '}')
```
picoCTF{gl17ch_m3_n07_a4392d2e}

## Notas

`chr` es una función que transforma un número en su versión ascii.

## Referencias

