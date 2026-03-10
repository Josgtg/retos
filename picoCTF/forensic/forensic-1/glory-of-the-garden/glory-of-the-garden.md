# Reto: Glory Of The Garden

## Descripción

This file contains more than it seems.

## Solución

Usando el comando `strings`, se puede ver la bandera.
```bash
strings garden.jpg | grep -o picoCTF{.*}
```

`picoCTF{more_than_m33ts_the_3y333f84d7c}`
