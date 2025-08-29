section .data
	msg_igual db "É igual"
	len_igual equ $ - msg_igual
	
	msg_diff db "É diferente"
	len_diff equ $ - msg_diff

	section .text
	global _start

	_start:
		mov rax,30
		mov rbx,30
		cmp rax,rbx
		je is_igual
		jmp not_igual
	
	is_igual:
		mov rax,1
		mov rdi,1
		mov rsi,msg_igual
		mov rdx,len_igual
		syscall
		jmp exit

	not_igual:
		mov rax,1
		mov rdi,1
		mov rsi,msg_diff
		mov rdx,len_diff
		syscall

	exit:
		mov rax,60
		xor rdi,rdi
		syscall