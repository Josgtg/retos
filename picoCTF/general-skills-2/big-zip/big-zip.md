# Reto: Big zip

## Descripción

Unzip this archive and find the flag.
Download zip file

## Solución

En la consola:
```bash
grep -r -E -o picoCTF{.*}
```

## Notas

La opción -r es clave para este ejercicio.
