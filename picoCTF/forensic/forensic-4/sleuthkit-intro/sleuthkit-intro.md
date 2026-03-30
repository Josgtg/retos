# Reto: Sleuthkit Intro

## Descripción

Download the disk image and use mmls on it to find the size of the Linux partition. Connect to the remote checker service to check your answer and get the flag.
Note: if you are using the webshell, download and extract the disk image into /tmp not your home directory.

## Solución

Se tiene que descomprimir la imagen de disco que se nos da, después, ejecutamos el comando:
```bash
mmls disk.img
# DOS Partition Table
# Offset Sector: 0
# Units are in 512-byte sectors
# 
#       Slot      Start        End          Length       Description
# 000:  Meta      0000000000   0000000000   0000000001   Primary Table (#0)
# 001:  -------   0000000000   0000002047   0000002048   Unallocated
# 002:  000:000   0000002048   0000204799   0000202752   Linux (0x83)
```

La información que nos interesa es la longitud de la partición de linux.

Nos conectamos al servidor que nos pregunta esta información. De responder correctamente, se nos da la flag.

`picoCTF{mm15_f7w!}`
