# Reto: WebDecode

## Descripción

Do you know how to use the web inspector?
Start searching here to find the flag

## Solución

La flag estaba oculta en una de las páginas del sitio. Se tenía que explorar este sitio y todas sus páginas. Se nos comenta que la flag podía estar encriptada, y al ver una serie larga de letras y números, y recordando lo mucho que les gusta base64 a los de pico se me ocurrió:
```bash
echo "cGljb0NURnt3ZWJfc3VjYzNzc2Z1bGx5X2QzYzBkZWRfZGYwZGE3Mjd9" | base64 -d
# picoCTF{web_succ3ssfully_d3c0ded_df0da727}
```

`picoCTF{web_succ3ssfully_d3c0ded_df0da727}`
