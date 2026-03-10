# Reto: JaWT Scratchpad

## Descripción

Check the admin scratchpad!

## Solución

La página parece simple, nos logeamos (sin contraseña) a un usuario y podemos ver y editar su bloc de notas. Sin embargo, al querer entrar a admin algo nos detiene.

Al intentar entrar como admin se nos impide el acceso. Cualquier otro usuario nos dejará entrar.

Podemos notar en las cookies que se nos da el siguente token JWT: `eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiam9obiJ9._fAF3H23ckP4QtF1Po3epuZWxmbwpI8Q26hRPDTh32Y`

Algo que podemos hacer es intentar encontrar el `secret` de este token en caso de que no se haya escogido uno muy seguro. De esta forma lo podremos modificar seguramente.
En la consola:
```bash
john --wordlist=/home/josgtg/wordlists/rockyou.txt jwt.txt
```
Este comando nos arroja `ilovepico` como secret. Esto nos permite simplemente cambiar el token jwt para hacernos pasar por el admin.

`picoCTF{jawt_was_just_what_you_thought_bbb82bd4a57564aefb32d69dafb60583}`

## Notas

Se utilizó la página [jwt.lannysport.net](https://jwt.lannysport.net/)  ara modificar el token jwt.
