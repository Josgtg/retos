# Reto: asm2

## Descripción

What does asm2(0x7,0x29) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. Source

## Solución

```asm
asm2:
	<+0>:	endbr32 
	<+4>:	push   ebp
	<+5>:	mov    ebp,esp
	<+7>:	sub    esp,0x10  # Se restó 0x10 a un registro, en este caso retrocede en memoria
	<+10>:	mov    eax,DWORD PTR [ebp+0xc]  # Serie de moves hacia el stack. Existen porque se movió esp
	<+13>:	mov    DWORD PTR [ebp-0x4],eax
	<+16>:	mov    eax,DWORD PTR [ebp+0x8]
	<+19>:	mov    DWORD PTR [ebp-0x8],eax
	<+22>:	jmp    0x11d0 <asm2+35>

	<+24>:	add    DWORD PTR [ebp-0x4],0x1  # Se suma 1 a 0x29
	<+28>:	add    DWORD PTR [ebp-0x8],0xf7  # Se suma 0xf7 a 0x7
	<+35>:	cmp    DWORD PTR [ebp-0x8],0x30c8  # Es ebp-0x8 menor o igual a 0x30c8?
	<+42>:	jle    0x11c5 <asm2+24>  # Nos regresamos a la línea 24

	<+44>:	mov    eax,DWORD PTR [ebp-0x4] # Salimos cuando ebp-0x8 sea mayor a 0x30c8
	<+47>:	leave  
	<+48>:	ret    
```

`0x5c`
