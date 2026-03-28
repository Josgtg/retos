# Reto: Cookie Monster Secret Recipe

## Descripción

Cookie Monster has hidden his top-secret cookie recipe somewhere on his website. As an aspiring cookie detective, your mission is to uncover this delectable secret. Can you outsmart Cookie Monster and find the hidden recipe?

## Solución

Se nos mostraba una página de login. Al querer entrar (yo intenté con admin 1234 pero parece que funciona con cualquier combinación), se nos indica que chequemos las cookies.

En efecto, hay una cookie `secret_recipe`, que no parece nada la flag que buscamos. Recordando la fascinación de esta gente con la base64, intentamos:
```bash
echo "cGljb0NURntjMDBrMWVfbTBuc3Rlcl9sMHZlc19jMDBraWVzX0M0MzBBRTIwfQ%3D%3D" | base64 -d
# picoCTF{c00k1e_m0nster_l0ves_c00kies_C430AE20}base64: invalid input
```

`picoCTF{c00k1e_m0nster_l0ves_c00kies_C430AE20}`
