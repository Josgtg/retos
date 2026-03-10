# Reto: Bases

## Descripción

What does this bDNhcm5fdGgzX3IwcDM1 mean? I think it has something to do with bases.

## Solución

En la consola:
```bash
echo "bDNhcm5fdGgzX3IwcDM1" | base64 -d
```

picoCTF{l3arn_th3_r0p35}

## Notas

Base64 es un sistema de numeración posicional que usa 64 como base. Es la mayor potencia que puede ser representada usando únicamente los caracteres imprimibles de ASCII. Esto ha propiciado su uso para codificación de correos electrónicos, PGP y otras aplicaciones. Todas las variantes famosas que se conocen con el nombre de Base64 usan el rango de caracteres A-Z, a-z y 0-9 en este orden para los primeros 62 dígitos.
