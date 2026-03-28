# Reto: Specialer

## Descripción

Reception of Special has been cool to say the least. That's why we made an exclusive version of Special, called Secure Comprehensive Interface for Affecting Linux Empirically Rad, or just 'Specialer'. With Specialer, we really tried to remove the distractions from using a shell. Yes, we took out spell checker because of everybody's complaining. But we think you will be excited about our new, reduced feature set for keeping you focused on what needs it the most. Please start an instance to test your very own copy of Specialer.

## Solución

No hay programas en la distro que tenemos lo cual es horrible. Sólo tenemos acceso a una sección limitada de funciones de bash. El más importante para mí es `echo`, pues podemos imprimir el contenido de un archivo con él.

No existe un `ls` aquí pero hay una forma de ver los archivos de un  directorio y es con el poderosísismo autocompletado.
```bash
cd <tab>;
# .hushlogin  .profile    abra/       ala/        sim/
cd abra/cada <tab>;
# cadabra.txt   cadaniel.txt
```

Así con las otras carpetas. Intentamos imprimir los contenidos:
```bash
echo "$(<abra/cadabra.txt)"
# Nothing up my sleeve!
```

Después de intentar con algunos archivos, el correcto era el de `ala/kazam.txt`.

`picoCTF{y0u_d0n7_4ppr3c1473_wh47_w3r3_d01ng_h3r3_49193632}`

## Referencias

https://mqcybersec.org/writeups/picoctf-specialer/
