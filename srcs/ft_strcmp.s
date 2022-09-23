section .text
	global	_ft_strcmp

_ft_strcmp:
	XOR ecx, ecx
	jmp loop

loop:
	CMP BYTE[rdi + ecx] BYTE[rsi + ecx]
	AND -- ca existe lui aussi
	JE done
	INC ecx
	JMP loop

done:
	MOV rax, BYTE[rdi + ecx]
	SUB rax BYTE[rsi + ecx]
	RET