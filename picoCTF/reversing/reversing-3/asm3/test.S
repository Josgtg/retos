.intel_syntax noprefix
.global main

main:
	push 0xee8ecb38
	push 0xb886b227
	push 0xc2cb1015
	call asm3
	add esp, 0x12
	ret

asm3:
	endbr32 
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

