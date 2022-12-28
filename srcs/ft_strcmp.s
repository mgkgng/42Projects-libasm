section .text
	global	_ft_strcmp

_ft_strcmp:
	XOR ecx, ecx
	jmp loop

loop:
	CMP BYTE [rdi + ecx], 0
	JE done
	CMP BYTE [rsi + ecx], 0
	JE done
	CMP BYTE [rdi + ecx], BYTE [rsi + ecx]
	JNE done
	INC ecx
	JMP loop

done:
	MOV rax, BYTE [rdi + ecx]
	SUB rax, BYTE [rsi + ecx]
	RET