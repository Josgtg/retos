# Reto: vault-door-1

## Descripción

This vault uses some complicated arrays! I hope you can make sense of it, special agent. The source code for this vault is here: VaultDoor1.java

## Solución

El código nos da la flag. Está un poco ofuscado pero lo podemos sacar fácil. Uso un editor de texto que te deja ejecutar una serie de comandos repetitivos y usé esa funcionalidad para convertir el código.
```java
// De:
public boolean checkPassword(String password) {
    return password.length() == 32 &&
        password.charAt(0) == 'd' &&
        password.charAt(29) == '2' &&
        password.charAt(4) == 'r' &&
        password.charAt(2) == '5' &&
        // ...
// A:
public boolean checkPassword(String password) {
    StringBuilder s = new StringBuilder("00000000000000000000000000000000");
    s.setCharAt(0, 'd');
    s.setCharAt(29, '2');
    s.setCharAt(4, 'r');
    s.setCharAt(2, '5');
    // ...
```

Ejecutando el nuevo código obtenemos:

`picoCTF{d35cr4mbl3_tH3_cH4r4cT3r5_1ef266}`
