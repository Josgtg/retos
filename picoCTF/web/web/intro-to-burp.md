# Reto: IntroToBurp

## Descripción

Try here to find the flag

## Solución

Usando BurpSuite se interceptó la petición POST al serivdor, se nos sugería como pista malformar la petición así que añadí un parámetro extra que tenía sinsentido y me dejó pasar.

`picoCTF{#0TP_Bypvss_SuCc3$S_e1eb16ed}`

## Notas

Para interceptar peticiones es necesario abrir BurpSuite, en la sección de interceptor y activar esta feature. Cada petición tenrá que pasar y ser aprobada por BurpSuite para llegar a su destino.
