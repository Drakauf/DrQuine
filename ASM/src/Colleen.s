;Colleen in ASM, an horror

section .data
    s db ";Colleen in ASM, an horror%1$c%1$csection .data%1$c    s db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$c    global _main%1$c    global print%1$c    extern _printf%1$c%1$cprint:%1$c    push rbp%1$c    mov rdi, s%1$c    mov rsi, 10%1$c    mov rdx, 34%1$c    mov rcx, s%1$c    xor rax,rax%1$c    call _printf%1$c    pop rbp%1$c    ret%1$c%1$c_main:%1$c    ;This is the main !%1$c    push rbp%1$c    call print%1$c    pop rbp%1$c    ret%1$c", 0

section .text
    global _main
    global print
    extern _printf

print:
    push rbp
    mov rdi, s
    mov rsi, 10
    mov rdx, 34
    mov rcx, s
    xor rax,rax
    call _printf
    pop rbp
    ret

_main:
    ;This is the main !
    push rbp
    call print
    pop rbp
    ret
