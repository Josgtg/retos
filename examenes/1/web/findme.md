# Reto: findme

## Descripción

Help us test the form by submiting the username as test and password as test!

## Solución

La pista nos recomienda fijarnos en las redirecciones. Este proceso es rápido por lo que alcanzamos a notar que en efecto hay redirecciones pero no sabemos nada de estas págnias intermedias.
Usando un proxy (como el de BurpSuite), podemos detener este proceso e ir paso a paso.

Notamos que las páginas tienen nombres raros y otra vez, lo primero que se me ocurrió fue probar desencriptar en base64:
```bash
echo "cGljb0NURntwcm94aWVzX2Fs" | base64 -d
# picoCTF{proxies_al
echo "bF90aGVfd2F5X2QxYzBiMTEyfQ==" | base64 -d
# l_the_way_d1c0b112}
```

`picoCTF{proxies_all_the_way_d1c0b112}`
