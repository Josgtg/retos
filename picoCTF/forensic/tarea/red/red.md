# Reto: RED

## Descripción

RED, RED, RED, RED

## Solución

Como primer paso, checamos los metadatos de la imagen. Notamos que hay una parte con un 'poema', aunque este poema como tal destaca no parece tener nada raro en sí.

El siguiente paso es checar con `zsteg` por si la imagen tuviera un mensaje oculto:
```bash
zsteg red.png
# b1,rgba,lsb,xy    .. text: "cGljb0NURntyM2RfMXNfdGgzX3VsdDFtNHQzX2N1cjNfZjByXzU0ZG4zNTVffQ==cGljb0NURntyM2RfMXNfdGgzX3VsdDFtNHQzX2N1cjNfZjByXzU0ZG4zNTVffQ==cGljb0NURntyM2RfMXNfdGgzX3VsdDFtNHQzX2N1cjNfZjByXzU0ZG4zNTVffQ==cGljb0NURntyM2RfMXNfdGgzX3VsdDFtNHQzX2N1cjNfZjByXzU0ZG4zNTVffQ=="
```

De nuevo, una string en base64 significa que vamos bien. La decodificamos y parece que contenía la flag `picoCTF{r3d_1s_th3_ult1m4t3_cur3_f0r_54dn355_}` repetida varias veces.

`picoCTF{r3d_1s_th3_ult1m4t3_cur3_f0r_54dn355_}`
