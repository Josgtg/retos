# Reto: vault-door-3

## Descripción

This vault uses for-loops and byte arrays.
The source code for this vault is here: VaultDoor3.java

## Solución

Teníamos el código de java de nuevo a nuestra disposición. En este caso, la forma más sencilla de hacerlo era 'revirtiendo' la contraseña que se checaba al final e imprimiéndola.

```java
String s = new String(buffer);
System.out.println(s);  // + Línea nueva
return s.equals("jU5t_a_sna_3lpm11g54e_u_4_m4r042");
```

Ingresamos la contraseña: `picoCTF{jU5t_a_sna_3lpm11g54e_u_4_m4r042}`

Y obtenemos: `jU5t_a_s1mpl3_an4gr4m_4_u_e45012`
