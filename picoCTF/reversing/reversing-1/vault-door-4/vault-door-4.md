# Reto: vault-door-4

## Descripción

This vault uses ASCII encoding for the password.
The source code for this vault is here: VaultDoor4.java

## Solución

```java
byte[] myBytes = {
    106 , 85  , 53  , 116 , 95  , 52  , 95  , 98  ,
    0x55, 0x6e, 0x43, 0x68, 0x5f, 0x30, 0x66, 0x5f,
    0142, 0131, 0164, 063 , 0163, 0137, 061 , 063 ,
    'd' , 'f' , '6' , '1' , '8' , 'a' , '2' , '3' ,
};
for (int i=0; i<32; i++) {
    System.out.print((char)myBytes[i]);  // + Línea nueva para imprimir
    if (passBytes[i] != myBytes[i]) {
        // return false; + Previene término pronto de la ejecución
    }
}
```

Nuestro print custon nos imprime lo siguiente:
`jU5t_4_bUnCh_0f_bYt3s_13df618a23`

La flag es:
`picoCTF{jU5t_4_bUnCh_0f_bYt3s_13df618a23}`
