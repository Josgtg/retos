# Reto: Nice netcat...

## Descripción

There is a nice program that you can talk to by using this command in a shell:
$ nc wily-courier.picoctf.net 50379, but it doesn't speak English...

## Solución

En python:
```python
flag = ""
with open("output", "r") as output:
    for line in output.readlines():
        flag += chr(int(line))
print(flag)
```
picoCTF{g00d_k1tty!_n1c3_k1tty!_195fe}

## Notas

Utilicé el comando de bash `nc wily-courier.picoctf.net 50379 > output` para mandar la salida al archivo "output" que se puede ver en la solución en python.
