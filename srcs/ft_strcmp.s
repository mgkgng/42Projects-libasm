section .text
	global	_ft_strcmp

_ft_strcmp:
	xor ecx, ecx
	jmp loop

loop:
	cmp byte [rdi + ecx], 0
	je done
	cmp byte [rsi + ecx], 0
	je done
	cmp byte [rdi + ecx], byte [rsi + ecx]
	je done
	inc ecx
	jmp loop

done:
	mov rax, byte [rdi + ecx]
	sub rax, byte [rsi + ecx]
	RET