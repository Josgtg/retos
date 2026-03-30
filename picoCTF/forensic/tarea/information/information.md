# Reto: information

## Descripción

Files can always be changed in a secret way. Can you find the flag?

## Solución

Checamos la flag, y en esta ocasión notamos otra línea extraña:
```bash
exiftool cat.jpg
# License : cGljb0NURnt0aGVfbTN0YWRhdGFfMXNfbW9kaWZpZWR9 
```

Recordando el reto 'CanYouSee', esto podría ser base64. Y para hacerla corta, sí lo era.

`picoCTF{the_m3tadata_1s_modified}`
