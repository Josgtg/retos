# Reto: dont-you-love-banners

## Descripción

Can you abuse the banner?


## Solución

Nos hacen un cuestionario donde hay un banner grande que dice 'welcome'. Esto será relevante en el futuro cercano.

Resolvemos las preguntas random que nos hace y entramos al sistema. Nuestra carpeta tiene un archivo 'banner', que es igual al banner que se mostraba.

Como buen hacker nos vamos al directorio /root. Ahí encontramos un archivo flag.txt y un archivo script.py. No podemos ver la flag directamente entonces intentamos con ver script.py.

Podemos ver que el banner es proporcionado por el archivo 'banner' en nuestro directorio. Al saber esto, podemos 'engañar' a este script para que nos muestre el contenido de la flag.

Creamos un simlink:
```bash
ln -s /root/flag.txt ~/banner
```

La próxima vez que entremos al servidor veremos la flag.

`picoCTF{b4nn3r_gr4bb1n9_su((3sfu11y_b3ee718e}`
