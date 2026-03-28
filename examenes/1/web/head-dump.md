# Reto: head-dump

## Descripción

Welcome to the challenge! In this challenge, you will explore a web application and find an endpoint that exposes a file containing a hidden flag.
The application is a simple blog website where you can read articles about various topics, including an article about API Documentation. Your goal is to explore the application and find the endpoint that generates files holding the server’s memory, where a secret flag is hidden.

## Solución

Se comenta quen hay una documentación de endpoints. Al consultarla, encontramos un endpoint 'curioso' `/heapdump`. Al consultarlo, se descarga un archivo. Buscamos la flag dentro de este archivo y en efecto, ahí la encontramos.

`picoCTF{Pat!3nt_15_Th3_K3y_546786ba}`
