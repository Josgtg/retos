# Reto: Static ain't always noise

## Descripción

Can you look at the data in this binary? The bash script might help!
static, ltdis.sh

## Solución

```bash
./ltdis.sh strings
cat static.ltdis.strings.txt | grep -E -o picoCTF{.*}
```

picoCTF{d15a5m_t34s3r_20335e41}

## Notas

El script de bash al parecer intentaba desensamblar el archivo scripts de alguna forma.
