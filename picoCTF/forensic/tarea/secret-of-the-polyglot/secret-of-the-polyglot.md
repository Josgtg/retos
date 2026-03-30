# Reto: Secret of the Polyglot

## Descripción

The Network Operations Center (NOC) of your local institution picked up a suspicious file, they're getting conflicting information on what type of file it is. They've brought you in as an external expert to examine the file. Can you extract all the information from this strange file?

## Solución

Primero, checamos los metadatos. Nos damos cuenta que en los metadatos se habla como si la imagen fuera un PNG. Sin embargo, este archivo tiene extensión `.pdf`.

Al abrir el archivo como PDF, se nos muestra una parte de la flag. Si cambiamos la extensión y lo abrimos como PNG, se nos muestra la primera parte. Las unimos y obtenemos la flag.

`picoCTF{f1u3n7_1n_pn9_&_pdf_249d05c0}`
