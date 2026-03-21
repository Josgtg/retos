# Reto: WebNet0

## Descripción

We found this packet capture and key. Recover the flag.

## Solución

Ingresamos a wireshark. Notamos que no podemos ver ningún paquete relevante, sin embargo, no olvidemos que tenemos la llave. Podemos ir a Editar > Preferencias > Protocolos > TLS > Key list > Hacer click en el campo namefile y seleccionamos la llave.

Teniendo esa llave, los paquetes HTTP ahora son visibles. Le damos a Follow > HTTP Stream y podemos ver la llave.

`picoCTF{nongshim.shrimp.crackers}`
