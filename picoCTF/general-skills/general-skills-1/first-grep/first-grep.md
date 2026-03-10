# Reto: First grep

## Descripción

Can you find the flag in the file? This would be really tedious to look through manually, something tells me there is a better way.
The flag is in this file.

## Solución

En la consola:
```bash
cat file | grep -E -o picoCTF{.+?}
```
picoCTF{grep_is_good_to_find_things_01aE5e9d}

## Notas

grep tiene la opción -E para que utilice expresiones regulares al momento de buscar, y con la opción -o se imprime sólo la parte que cumplió con la búsqueda en lugar de toda la linea.
