# Reto: Warmed up

## Descripción

What is 0x3D (base 16) in decimal (base 10)?

## Solución

En python:
```python
int("0x3D", 16)
```

picoCTF{61}

## Notas

En python existe el constructor `int(s: str, base: int)`, donde se interpreta `s` con la base pasada convirtiendo `s` a su representación decimal.
