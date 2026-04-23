# Reto: Pixelated

## Descripción

I have these 2 images, can you make a flag out of them?
scrambled1.png scrambled2.png

## Solución

Las imágenes por separado, al abrirlas, parecen no tener ningún sentido. Sin embargo, el mensaje está oculto en las dos.

La solución en este caso es el de _sumar_ las imágenes utilizando aritmética de imágenes. Podemos explicar el proceso de la siguiente forma:
Se van a sumar las imágenes de forma que cada pixel `imagenOutput[i]` está conformado por la suma: `(imagen1[i] + imagen2[i]) % 256`. El módulo 256 es debido a que no pueden haber números mayores a 2^8 en un pixel.

El código para lograr esto lo saqué del discord y es el siguiente:
```python
from PIL import Image
import numpy as np

imagen1 = np.asarray( Image.open('scrambled1.png') )
imagen2 = np.asarray( Image.open('scrambled2.png') )

data = imagen1 + imagen2

nueva = Image.fromarray(data)
nueva.save("out.png", "PNG")
```

`picoCTF{8cdf93c3}`

## Notas


## Referencias

