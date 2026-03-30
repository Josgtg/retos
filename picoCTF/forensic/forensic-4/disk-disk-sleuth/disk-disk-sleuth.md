# Reto: Disk, disk, sleuth!

## Descripción

Use `srch_strings` from the sleuthkit and some terminal-fu to find a flag in this disk image.

## Solución

Simplemente ejecutamos el siguente comando:
```bash
srch_strigns dds1-apline.flag.img | grep pico
# ffffffff81399ccf t pirq_pico_get
# ffffffff81399cee t pirq_pico_set
# ffffffff820adb46 t pico_router_probe
#   SAY picoCTF{f0r3ns1c4t0r_n30phyt3_5e56e786}
```

`picoCTF{f0r3ns1c4t0r_n30phyt3_5e56e786}`

## Notas

Es necesario instalar The Sleuth Kit para ejecutar el comando `srch_strigns`.
