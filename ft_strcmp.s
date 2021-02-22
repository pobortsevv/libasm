section .text
	global _ft_strcmp

_ft_strcmp:
	xor rcx, rcx
	.next_char:
		movzx rax, byte[rdi + rcx]
		movzx rbx, byte[rsi + rcx]
		cmp rax, rbx
		je .move
		jg greater
		jl less
	.move:
		cmp rax, byte 0
		je equal
		inc rcx
		jmp .next_char


equal:
	xor rax, rax
	ret

greater:
	mov rax, 1
	ret

less:
	mov rax, -1
	ret
