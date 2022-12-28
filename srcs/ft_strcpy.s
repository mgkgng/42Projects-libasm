section .text
	global	_ft_strcpy

_ft_strcpy:
	xor rax, rax
	jmp loop

loop:
	cmp byte [rsi + rax], 0
	je done
	mov cl, byte [rsi + rax]
	mov byte [rdi + rax], cl
	inc rax
	jmp loop

done:
	mov byte [rdi + rax], 0
	mov rax, rdi
	ret
