section .text
	global ft_strdup
	extern ft_strlen
	extern ft_strcpy
	extern _malloc


ft_strdup:
	push rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	pop rdi
	cmp rax, byte 0
	je end
	mov rsi, rdi
	mov rdi, rax
	call ft_strcpy
	ret

end:
	xor rax, rax
	ret
