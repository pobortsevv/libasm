section .text
	global ft_write
	extern ___error

ft_write:
	mov rax, 0x2000004
	syscall
	ret
