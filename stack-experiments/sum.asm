section .text
    global _start

sum:
    push rbp
    mov rbp,rsp

    mov rax,[rbp+16]
    mov rbx,[rbp+24]

    add rax,rbx
    mov rcx,rax

    pop rbp
    ret 16

_start:
    push 30
    push 40
    call sum
    
    mov rax, 60
    xor rdi,rdi
    syscall