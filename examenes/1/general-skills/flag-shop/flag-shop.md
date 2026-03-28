# Reto: flag_shop

## Descripción

There's a flag shop selling stuff, can you buy a flag?

## Solución

Este reto trataba de aprovecharse de cómo c trata a los enteros en ciertas condiciones. En específico, el comportamiento que tiene de 'dar la vuelta' cuando se pasa de ciertos valores.

La funcionalidad crítica es que nos deja 'comprar' flags por 900... de algo. Esto se resta de nuestro balance. Entonces, si nos pasamos del rango de 31 bits (2 mil millones más o menos), el entero dará la vuelta y se convertiá en negativo, la resta de un número negativo suma entocnes es perfecto para sumar a nuestro balance y comprar la flag cara.

Introducimos que queremos 3,000,000 de banderas falsas de 900 cada una, lo que nos provoca pasarnos del límite de 2 mil millones. El número da vuelta, se vuelve negativo y este es sumado a nuestro balance.
`(1100 - (-100) = 1200)`, por ejemplo.

Nuestro balance resultante es suficiente como para comprar la flag real.

`picoCTF{m0n3y_bag5_F6968F69}`
