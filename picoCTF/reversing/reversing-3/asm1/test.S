stack

[ebp ] < ebp < esp
[ret ] < ebp + 0x4
[0x3ef] < ebp + 0x8
registers
[0x3e6] eax
asm1:
	<+0>:	endbr32 
	<+4>:	push   ebp
	<+5>:	mov    ebp,esp
	<+7>:	cmp    DWORD PTR [ebp+0x8],0x6e6
	<+14>:	jg     0x11d3 <asm1+38>
	<+16>:	cmp    DWORD PTR [ebp+0x8],0x8
	<+20>:	jne    0x11cb <asm1+30>

	<+22>:	mov    eax,DWORD PTR [ebp+0x8]
	<+25>:	add    eax,0x9
	<+28>:	jmp    0x11ea <asm1+61>

	<+30>:	mov    eax,DWORD PTR [ebp+0x8]
	<+33>:	sub    eax,0x9
	<+36>:	jmp    0x11ea <asm1+61>
	<+38>:	cmp    DWORD PTR [ebp+0x8],0x8f8
	<+45>:	jne    0x11e4 <asm1+55>
	<+47>:	mov    eax,DWORD PTR [ebp+0x8]
	<+50>:	sub    eax,0x9
	<+53>:	jmp    0x11ea <asm1+61>
	<+55>:	mov    eax,DWORD PTR [ebp+0x8]
	<+58>:	add    eax,0x9
	<+61>:	pop    ebp
	<+62>:	ret    

