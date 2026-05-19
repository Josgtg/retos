# Reto: Collaborative Development

## Descripción

My team has been working very hard on new features for our flag printing program! I wonder how they'll work together?

## Solución

En una de las pistas se nos recomienda ver las ramas del repositorio:
```bash
git branch
#    feature/part-1
#    feature/part-2
#    feature/part-3
#  * main
```

Se nos recomienda intentar integrar los cambios en la rama principal pero podemos también simplemente ver sus contenidos y juntarlos nosotros a manita:
```bash
git checkout feature/part-1
# Switched to branch 'feature/part-1'
cat flag.py
# print("Printing the flag...")
#
# print("picoCTF{t3@mw0rk_", end='')
git checkout feature/part-2
# Switched to branch 'feature/part-2'
cat flag.py
# print("Printing the flag...")
#
# print("m@k3s_th3_dr3@m_", end='') 
git checkout feature/part-3
# Switched to branch 'feature/part-3'
cat flag.py
# print("Printing the flag...")
#
# print("w0rk_7ae8dd33}")
```

`picoCTF{t3@mw0rk_m@k3s_th3_dr3@m_w0rk_7ae8dd33}`
