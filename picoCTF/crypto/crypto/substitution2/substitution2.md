# Reto: substitution2

## Descripción

It seems that another encrypted message has been intercepted. The encryptor seems to have learned their lesson though and now there isn't any punctuation! Can you still crack the cipher?

## Solución

Siendo honesto, no me fijé para nada en la puntuación en el reto anterior por lo que este no debería ser mayor problema... Pero sí lo fue. Siguiendo el mismo exacto proceso de visitar https://quipqiup.com/ y resolver con el decodificador por defecto (patristocrat), no sé bien que es pero funcionó la vez anterior. Desgraciadamente esta vez no. Resuelve la mayoría del texto pero la flag queda rara:

`pico c t f n r m ny duff c`

Es por eso que intenté el decodificador estadístico que me dió una lista de soluciones. Probé con la primera y resultó ser la flag.

`picoCTF{N6R4M_4N41Y515_15_73D10U5_702F03FC}`
