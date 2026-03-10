# Reto: GET aHEAD

## Descripción

Find the flag being held on this server to get ahead of the competition

## Solución

Noté que el cambio de color se efectuaba al cambiar el tipo de petición HTTP que se realizaba. Uno de ellos era GET, y siendo que HEAD formaba parte del nombre del reto, pensé en usarla. La petición se puede hacer mediante `curl`.
```bash
curl -s -L -I http://wily-courier.picoctf.net:55917/
```

picoCTF{r3j3ct_th3_du4l1ty_8b13f07}

## Notas

La opción `-I` hace que `curl` mande una petición de tipo HEAD.
