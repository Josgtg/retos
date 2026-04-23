# Reto: HideToSee

## Descripción

How about some hide and seek heh?
Look at this image here.

## Solución
Una pista nos recomienda utilizar la herramienta `steghide`, lo que hace sentido pues la imagen nos dice el algoritmo de encrpitación a usar pero el texto no está en ningún lado. La esteganografía es útil para ocultar texto en imágenes.

```bash
steghide --extract -sf atbash.jpg
# Enter passphrase:
# wrote extracted data to "encrypted.txt".
cat encrypted.txt
# krxlXGU{zgyzhs_xizxp_1u84w779}
```

Después podemos usar el algoritmo de atbash en un script de python o con cyberchef, más fácil. El resusltado es el siguiente:
`picoCTF{atbash_crack_1f84d779}`
