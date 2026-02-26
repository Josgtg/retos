# Reto: Cookies

## Descripción

Who doesn't love cookies? Try to figure out the best one.

## Solución

Noté que la cookie `name` era clave, pues el server parecía usarla para determinar si una palabra era válida. El tema es que era un número que iba de 1 a posiblemente valores infinitos así que se necesitaba automatización. Esto se consiguió con un comando de bash:
```bash
for i in {1..100}; do
	curl -s -H "Cookie: name=${i}" -L http://wily-courier.picoctf.net:63686/ | grep -o picoCTF{.*}
done
```

picoCTF{3v3ry1_l0v3s_c00k135_a4dadb49}

## Notas

`curl` es un programa que se puede utilizar para mandar peticiones HTTP. Las opciones usadas hacen lo siguiente:
- s: Oculta output para que no se sature tanto la salida
- H: Manda un header personalizado, en este caso se le dice que mande una Cookie concreta.
- L: Importante para seguir redirecciones pues inicialmente solo regresaba una página de redirección.

`curl` regresa el HTML crudo de la página que regrese el servidor. Si es la página con la flag, grep la va a imprimir.
