# Reto: Java Code Analysis!?!

## Descripción

BookShelf Pico, my premium online book-reading service.
I believe that my website is super secure. I challenge you to prove me wrong by reading the 'Flag' book!

## Solución

Viendo el código podemos notar ciertas cosas:
- Se confía plenamente en el contenido del JWT (no se verifica si de verdad se expidió).
- Se obtiene el secreto con el que se firman los JWT de un archivo, y en caso de no poderse leer, el secreto por default es `1234`.

El detalle en este reto es que la sesión se guarda en el localstorage en lugar de estar presente en una cookie (este detalle me llevó un rato largo de entender). Después de eso, la solución es simple. Hay dos valores guardados en el localstorage:
- payload: Se modifica para hacernos pasar por un admin:
```json
{
    "role": "Admin",
    ...
    "userId": 2,
    "email": "admin"
}
```
- token: Este también se modifica en un editor de tokens JWT para que incluya el payload que creamos y el secreto que sospechamos puede ser (1234).

Una vez actualizados estos valores, se reinicia la página.

La página nos registra como admins y podemos consultar el libro "flag".

`picoCTF{w34k_jwt_n0t_g00d_602ce414}`

## Notas

Es importante checar dónde se guardan los tokens de sesión (cookies, localstorage, etc).
