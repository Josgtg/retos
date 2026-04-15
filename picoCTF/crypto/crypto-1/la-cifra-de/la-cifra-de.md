# Reto: la cifra de

## Descripción

I found this cipher in an old book.
Can you figure out what it says? Connect with nc fickle-tempest.picoctf.net 52301.

## Solución

En esta ocasión pudimos notar que era un texto largo por lo que quise intentar descifrar el texto por mera sustitución, lo cual no funcionó.

Mi segunda idea era intentar romper por fuerza bruta un posible encriptado vigenére. Este segundo enfoque funcionó.

`picoCTF{b311a50_0r_v1gn3r3_c1ph3rdb3eEcFa}`

## Referencias

Utilicé la página guballa.de/vigenere-solver para resolver este ejercicio.
