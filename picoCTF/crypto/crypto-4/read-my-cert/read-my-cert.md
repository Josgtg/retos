# Reto: ReadMyCert

## Descripción

How about we take you on an adventure on exploring certificate signing requests
Take a look at this CSR file here.

## Solución

El certificado coomo tal tiene MUCHA cara de ser base 64, como siempre. Intentamos lo siguiente:
```bash
cat readmycert.csr | head -n 15 | tail -n 14 | base64 -d
```

`picoCTF{read_mycert_373b4ab0}`

## Notas

La serie de comandos:
```bash
head -n 15 | tail -n 14
```
Tiene el fin de quitar la primera y última línea del archivo (que son inválidas para pasar a base64)
