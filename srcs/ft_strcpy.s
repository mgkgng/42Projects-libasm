section .text
	global	_ft_strcpy

_ft_strcpy:
	MOV rdi, rax
	XOR ecx, ecx
	jmp loop

loop:
	CMP BYTE[rsi + ecx], 0
	JE done
	MOV BYTE[rsi + ecx], BYTE[rdi + ecx]
	INC ecx
	JMP loop

done:
	MOV BYTE[rdi + ecx], 0
	RET