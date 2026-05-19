# Reto: Blame Game

## Descripción

Someone's commits seems to be preventing the program from working. Who is it?

## Solución

En esta ocasión también encontrábamos un archivo de python en un repo. Alguien lo rompió. En esta ocasión podemos usar el siguiente comando:
```bash
git blame message.py
# 8c83358c (picoCTF{@sk_th3_1nt3rn_2c6bf174} 2024-03-12 00:07:11 +0000 1) print("Hello, World!"
```

`picoCTF{@sk_th3_1nt3rn_2c6bf174}`
