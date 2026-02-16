# Reto: Strings it

## Descripción

Can you find the flag in file without running it?

## Solución

En la consola:
```bash
strings strings | grep -E -o picoCTF{.*}
```
picoCTF{5tRIng5_1T_60eA8fdA}

## Notas

Un ejecutable generalmente guarda las strings que se escriben en el código en el mismo archivo ejecutable y se pueden buscar con la herramienta strings.
