section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx
	cmp rsi, 0
	je end
	.next_char:
		mov ah, [rsi + rcx]
		mov [rdi + rcx], ah
		cmp [rsi + rcx], byte 0
		je end
		inc rcx
		jmp .next_char
end:
	mov rax, rdi
	ret
