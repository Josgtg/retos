# Reto: EVEN RSA CAN BE BROKEN???

## Descripción

This service provides you an encrypted flag. Can you decrypt it with just N & e?

## Solución

Recordando la fórmula que utiliza RSA:

c = texto cifrado

n  = p * q

tn = (p -1) * (q-1)

d = e ^ -1 (mod tn)     - pow(e, -1, tn)

Descifrado:

m = c ^ d (mod n)       - pow(c, d, n)

Se nos dieron los siguientes datos:
```bash
nc verbal-sleep.picoctf.net 65469
# N: 18155757416772422395558670231514449611028579275433115778616845679189010079188688692171447837667736944693094026820133416743673878424699987423164936394681614
# e: 65537
# cyphertext: 17539703481356963922519102539894901539827261268896581362244179830061294090574984729775403607031118376265806870888819298071180304387980023512519102083797413
```

Sabiendo esto, podemos realizar la fórmula para descifrar el texto, sólo necesitamos obtener d:

d = ...?

No podemos obtener d.

Sin embargo, viendo el código fuente, noté que la longitud de p y q era únicamente de 512 bytes. Esto es fácilmente crackeable en una página como [factordb.com](https://factordb.com/).

Lo que noté una vez factorizado es que al parecer todos los N eran 2 * algo.

Teniendo p y q podemos realizar los cálculos que se nos enseñaron anteriormente y descifrar el mensaje.

`picoCTF{tw0_1$_pr!m3de643ad5}`
