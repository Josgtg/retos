# Reto: interencdec

## Descripción

Can you get the real meaning from this file.

## Solución

Inmediatamente vi el contenido del archivo y supe que tenía que ver con base64. Al decodificarlo, el resultado no era la flag. Creí que era de las pocas ocasiones en las que esta corazonada fallaba pero el resultado seguía pareciendo base64 por lo que al reintentar con este resultado conseguí la flag... O eso parecía.

Tenía la misma estructura que una flag normal pero con distintas letras. Intenté un ROT13 pero segúia sin funcionar. Después, probando otros desplazamientos que no fueran 13 encontré que el 19 daba la flag.

`picoCTF{caesar_d3cr9pt3d_ea60e00b}`
