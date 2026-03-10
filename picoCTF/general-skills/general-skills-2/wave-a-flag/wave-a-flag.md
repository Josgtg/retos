# Reto: Wave a flag

## Descripción

Can you invoke help flags for a tool or binary? This program has extraordinarily helpful information...
warm

## Solución

En la consola:
```bash
chmod +x warm
./warm -h
```

Otra solución es:
```bash
strings ./warm | grep picoCTF -E -o picoCTF{.*}
```

picoCTF{b1scu1ts_4nd_gr4vy_ac5832c}

