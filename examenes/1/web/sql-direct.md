# Reto: SQL Direct

## Descripción

Connect to this PostgreSQL server and find the flag!

## Solución

Se nos da acceso directo a una base de datos PostgreSQL. Lo primero que intento es ver las tablas de la base de datos:
```sql
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';
-- La única tabla se llama 'flags'

SELECT * FROM flags;
-- 1 | Luke      | Skywalker | picoCTF{L3arN_S0m3_5qL_t0d4Y_73b0678f}
```

`picoCTF{L3arN_S0m3_5qL_t0d4Y_73b0678f}`
