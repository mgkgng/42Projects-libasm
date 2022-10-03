section .text
	global	_ft_strcpy

_ft_strcpy:
	mov rax, rdi
	xor ecx, ecx
	jmp loop

loop:
	cmp byte [rsi + ecx], 0
	je done
	mov byte [rsi + ecx], byte [rdi + ecx]
	inc ecx
	jmp loop

done:
	mov byte [rdi + ecx], 0
	RET