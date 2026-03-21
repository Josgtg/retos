# Reto: WebNet1

## Descripción

We found this packet capture and key. Recover the flag.

## Solución

Entrábamos a wireshark, por fortuna, la key que usamos en el reto anterior era válida también en este y no hacía falta seguir el proceso que se siguió en `WebNet0`. Lo importante en este reto era que la flag ya no estaba en el stream HTTP como tal sino que formaba parte de los archivos que se mandaron en esa comunicación HTTP. Podemos ver estos archivos yendo a File > Export Objects > HTTP.

Me llamó la atención la imagen de unos buitres, al final, se utilizó el comando en la consola:
```bash
strings vulture.jpeg | grep pico
# picoCTF{honey.roasted.peanuts}
```

`picoCTF{honey.roasted.peanuts}`
