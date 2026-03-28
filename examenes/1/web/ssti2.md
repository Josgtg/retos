# Reto: SSTI2

## Descripción

I made a cool website where you can announce whatever you want! I read about input sanitization, so now I remove any kind of characters that could be a problem :)

## Solución



## Notas

(notas de chatsito)

El ataque ocurre cuando un lenguaje de alto nivel pasa una cadena de texto (string) a una función de C de bajo nivel. Aquí tienes el paso a paso:

1. La Entrada: Un atacante proporciona un nombre de archivo como malicious.php%00.jpg.

2. La Validación de Alto Nivel: Tu aplicación (escrita en PHP o Java) ve la extensión .jpg al final. El sistema piensa: "¡Es un archivo de imagen, todo parece seguro!". Ignora el %00 porque lo trata simplemente como un carácter más en la secuencia.

3. La Llamada al Sistema: La aplicación le dice al Sistema Operativo: "Oye, ábreme el archivo malicious.php\0.jpg".

4. La Ejecución de Bajo Nivel: El SO (escrito en C) comienza a leer el nombre del archivo. Lee malicious.php, pero luego llega al \0 (byte nulo). El sistema piensa: "De acuerdo, el nombre del archivo termina justo aquí".

5. El Resultado: El SO ignora el .jpg por completo y ejecuta o abre malicious.php.

## Referencias

