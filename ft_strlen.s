section .text
	global _ft_strlen

_ft_strlen:
	xor rax, rax
	.next_char:
		cmp [rdi + rax], byte 0
		je end 
		inc rax
		jmp .next_char
end:
	ret
