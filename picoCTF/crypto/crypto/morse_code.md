# Reto: morse-code

## Descripción

Morse code is well known. Can you decrypt this?

Download the file here.

Wrap your answer with picoCTF{}, put underscores in place of pauses, and use all lowercase.

## Solución

No creí que nos pusieran a ESCUCHAR código morse, pero en efecto, se descargaba un .wav con el audio.

Al principio intenté transcribirlo simplemente escuchando. Obviamente esto no salió bien. Después de esa derrota, se me ocurrión analizar las ondas de audio como tal. Seguramente los puntos tengan una onda mucho más corta que las rayas. Utilicé una herramienta que ya tenía a la mano: Audacity.

Esta herramienta, en efecto, me permitió 'ver' el código morse, lo cual ayudó mucho a transcribirlo.

`picoCTF{wh47_h47h_90d_w20u9h7}`
