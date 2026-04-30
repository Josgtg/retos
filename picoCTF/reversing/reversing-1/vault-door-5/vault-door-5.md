# Reto: vault-door-5

## Descripción

In the last challenge, you mastered octal (base 8), decimal (base 10), and hexadecimal (base 16) numbers, but this vault door uses a different change of base as well as URL encoding!
The source code for this vault is here: VaultDoor5.java

## Solución

Analizando el código vemos que se le aplica una serie de encriptaciones. La primera es URL encoding, luego base64. Podemos utilizar una página como Cyberchef para decodificar el string con el que se compara. Haciendo este proceso obtenemos lo siguiente:

Decodificando: `JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTM0JTYyJTYyJTMyJTMyJTM3JTMyJTMx`

`c0nv3rt1ng_fr0m_ba5e_64_4bb22721`
