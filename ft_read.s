global ft_read
extern ___error

section .text

ft_read:
	mov rax, 0x2000003
	syscall
	ret
