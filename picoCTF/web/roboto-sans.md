# Reto: Roboto Sans

## Descripción

The flag is somewhere on this web application not necessarily on the website. Find it.
Check this out.

## Solución

El nombre era una tipo pista (rebuscada) para buscar en el archivo robots.txt, donde venían letras raras. En un punto había un `==`, lo cual nos indica que podía ser base64.

Se decodificaba (en la consola):
```bash
echo "anMvbXlmaWxlLnR4dA==" | base64 -d
# js/myfile.txt
```

La flag estaba en /js/myfile.txt

`picoCTF{Who_D03sN7_L1k5_90B0T5_032f1c2b}`
