# Reto: credstuff

## Descripción

We found a leak of a blackmarket website's login credentials. Can you find the password of the user cultiris and successfully decrypt it?

Download the leak here.

The first user in usernames.txt corresponds to the first password in passwords.txt. The second user corresponds to the second password, and so on.

## Solución

Primero que todo, obtenemos la contraseña correspondiente:
```bash
grep cultiris -n usernames.txt
# 378:cultiris
sed -n '378p' passwords.txt
# cvpbPGS{P7e1S_54I35_71Z3}
```

Ahora toca descifrar este string. Como tenía la estructura ya muy definida de la flag, me imaginé que sería ROT13, y efectivamente lo era:

`picoCTF{C7r1F_54V35_71M3}`
