# Reto: SansAlpha

## Descripción

The Multiverse is within your grasp! Unfortunately, the server that contains the secrets of the multiverse is in a universe where keyboards only have numbers and (most) symbols.

## Solución

No podemos escribir caracteres. Sin embargo, podemos utilizar expresiones dentro de `$()` y `${}` para insertar caracteres en los prompts.

Los únicos caracteres que podemos ver son los mensajes de error así que forzamos a imprimir uno. Quiero hacer `ls` por lo que necesitamos un mensaje de error con esas dos letras:
```bash
"$( . 1 2>&1)"
# bash: bash: 1: No such file or directory: command not found
```

Después de eso podemos usar las letras para mandar el comando `ls`:
```bash
${_:19:1}${_:2:1}
# blargh  on-calastran.txt
```

Intentamos entrar a blargh. Sin embargo, a nuestro mensaje de error le falta una 'g'.

Lo intentamos por 'globbing':
```bash
${_:19:1}${_:2:1} ./??????/**  # ?????? hace match a blargh (6 letras cualquiera)
# ./blargh/flag.txt  ./blargh/on-alpha-9.tx
```

Encontramos la flag. Ahora, buscar las letras 'cat' no debería ser muy complicado. Usamos una mezcla de las dos técnicas:
```bash
${_:14:1}${_:1:1}${_:30:1} ./??????/????.???
# return 0 picoCTF{7h15_mu171v3r53_15_m4dn355_36a674c0}
```

`picoCTF{7h15_mu171v3r53_15_m4dn355_36a674c0}`

## Referencias

https://lavafroth.is-a.dev/post/picoctf-sansalpha-writeup/
