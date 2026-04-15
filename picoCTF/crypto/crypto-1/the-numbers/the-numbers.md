# Reto: The Numbers

## Descripción

The numbers... what do they mean?

## Solución

Había una serie de números en una imagen. Como la serie de números tenía la misma estructura que una bandera, pensé primero que sería convertirlo a ascii pero no hacía sentido ya que comenzaba en 1, por lo que tal vez estaba codificado con el orden alfabético de cada letra.

Hice un script sencillo de python para esto:
```py
with open("the_numbers.txt", "r") as file:
    for number in file.readline().split():
        try:
            print(chr(int(number) + 64), end='')
        except Exception:
            print(number, end='')
```

El resultado fue algo que parecía una flag, y en efecto, lo era.

`PICOCTF{THENUMBERSMASON}`
