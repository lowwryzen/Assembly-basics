section .bss
    string resb 32
    len equ $ - string

section .text
global _start

_start:
    mov rax,0
    mov rdi,0
    mov rsi,string
    mov rdx,len
    syscall

    mov rax,1
    mov rdi,1
    mov rsi,string
    syscall

    mov rax,60
    xor rdi,rdi
    syscall