section .text
	global	_ft_strlen 

_ft_strlen:
	XOR rax, rax
	jmp loop

loop:
	CMP BYTE [rdi + rax], 0
	JE done
	INC rax
	JMP loop

done:
	RET
