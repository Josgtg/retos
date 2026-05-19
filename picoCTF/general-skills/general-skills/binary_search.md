# Reto: Binary Search

## Descripción

Want to play a game? As you use more of the shell, you might be interested in how they work! Binary search is a classic algorithm used to quickly find an item in a sorted list. Can you find the flag? You'll have 1000 possibilities and only 10 guesses.

Cyber security often has a huge amount of data to look through - from logs, vulnerability reports, and forensics. Practicing the fundamentals manually might help you in the future when you have to write your own tools!

## Solución

Nos teníamos que conectar a una página en la que teníamos que adivinar un número del 1 al 1000 en 10 intentos. Nos invitaban a usar manualmente el algoritmo de búsqeda binaria así que eso hice:
```bash
I'm thinking of a number between 1 and 1000.
Enter your guess: 500
Lower! Try again.
Enter your guess: 250
Lower! Try again.
Enter your guess: 125
Higher! Try again.
Enter your guess: 187
Lower! Try again.
Enter your guess: 156
Lower! Try again.
Enter your guess: 140
Higher! Try again.
Enter your guess: 148
Lower! Try again.
Enter your guess: 144
Lower! Try again.
Enter your guess: 142
Lower! Try again.
Enter your guess: 141
Congratulations! You guessed the correct number: 141
Here's your flag: picoCTF{g00d_gu355_de9570b0}
```

`picoCTF{g00d_gu355_de9570b0}`
