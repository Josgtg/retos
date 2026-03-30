# Reto: hideme

## Descripción

Every file gets a flag.
The SOC analyst saw one image been sent back and forth between two people. They decided to investigate and found out that there was more than what meets the eye here.

## Solución

Al abrir la imagen esta es simplemente el logo de picoCTF. Viendo los metadatos no vemos nada inusual e intentamos con `zsteg`.
Al hacer esto, ocurre algo curioso:
```bash
zsteg flag.png
# [?] 3191 bytes of extra data after image end (IEND), offset = 0x9b3b
# extradata:0         .. file: Zip archive data, at least v1.0 to extract, compression method=store
```

Se menciona que se trata eso como un archivo zip. Vamos a seguir esta pista e intentar descomprimir esta 'imagen'. Para mi sorpresa se descomprimió y contenía una carpeta con un archivo adentro que era la flag.
