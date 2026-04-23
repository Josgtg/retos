# Reto: basic-mod1

## Descripción

We found this weird message being passed around on the servers, we think we have a working decryption scheme.
Download the message here.
Take each number mod 37 and map it to the following character set: 0-25 is the alphabet (uppercase), 26-35 are the decimal digits, and 36 is an underscore.
Wrap your decrypted message in the picoCTF flag format (i.e. picoCTF{decrypted_message})

## Solución

La descripción del reto era suficientemente directa. Podemos hacer un script que siga esas instrucciones.
```python
CHARSET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"

numbers: list[int]
with open('message.txt') as file:
    numbers = list(map(lambda x: int(x), file.read().split()))

print('picoCTF{', end='')
for i in numbers:
      print(CHARSET[i % 37], end='')
print('}')
```
