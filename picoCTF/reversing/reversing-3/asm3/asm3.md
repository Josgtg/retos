# Reto: asm3

## Descripción

What does asm3(0xc2cb1015,0xb886b227,0xee8ecb38) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. Source

## Solución

En esta ocasión utilizamos una página para ejecutar el código en tiempo real. Se utilizó la página [](). Con el código modificado:
```asm
start:
	push 0xee8ecb38
	push 0xb886b227
	push 0xc2cb1015
	call asm3

asm3:
	push   ebp
	mov    ebp,esp
	xor    eax,eax
	mov    ah,BYTE PTR [ebp+0x9]
	shl    ax,0x10
	sub    al,BYTE PTR [ebp+0xf]
	add    ah,BYTE PTR [ebp+0xe]
	xor    ax,WORD PTR [ebp+0x12]
	nop
	pop    ebp
	ret    
```

`0x000068C6	`
