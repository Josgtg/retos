CHARSET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"

numbers: list[int]
with open('message.txt') as file:
    numbers = list(map(lambda x: int(x), file.read().split()))

print('picoCTF{', end='')
for i in numbers:
      print(CHARSET[i % 37], end='')
print('}')
