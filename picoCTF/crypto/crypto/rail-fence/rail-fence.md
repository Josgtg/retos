# Reto: rail-fence

## Descripción

A type of transposition cipher is the rail fence cipher, which is described here. Here is one such cipher encrypted using the rail fence with 4 rails. Can you decrypt it?

Download the message here.

Put the decoded message in the picoCTF flag format, picoCTF{decoded_message}.

## Solución

El mensaje encriptado es:

`Ta _7N6D8Dhlg:W3D_H3C31N__387ef sHR053F38N43DFD i33___N6`

Utilizamos el siempre confiable cyberchef para resolver este reto. Como nos dicen directamente que es rail fence, lo buscamos en cyberchef. Para nuestra suerte aparece en esta página.

Ahora simplemente copiamos el mensaje cifrado y asignamos el valor de 'key' a 4 por los cuatro raíles que se mencionan.

`picoCTF{WH3R3_D035_7H3_F3NC3_8361N_4ND_3ND_83F6D8D7}`
