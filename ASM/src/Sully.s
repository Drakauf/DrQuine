section .data
    kid:
        .name db "Sully_%d.s", 0
        .eName db "Sully_%d", 0
        .rights db "w", 0
        .content db "section .data%1$c    kid:%1$c        .name db %2$cSully_%%d.s%2$c, 0%1$c        .eName db %2$cSully_%%d%2$c, 0%1$c        .rights db %2$cw%2$c, 0%1$c        .content db %2$c%3$s%2$c, 0%1$c    command db %2$cnasm -f macho64 -dFIRSTQUINE=NOP %%1$s.s && ld -macosx_version_min 10.8.0 -lSystem -no_pie -o %%1$s %%1$s.o && rm %%1$s.o && ./%%1$s%2$c, 0%1$c%1$csection .text%1$c    global _main%1$c    extern _fprintf%1$c    extern _fopen%1$c    extern _printf%1$c    extern _malloc%1$c    extern _sprintf%1$c    extern _fclose%1$c    extern _system%1$c%1$c_main:%1$c    push rbp%1$c%1$c    mov rbx, %4$d%1$c    %%ifdef FIRSTQUINE%1$c    sub rbx, 1%1$c    %%endif%1$c    if cmp rbx, 0%1$c    jl quit%1$c%1$c    mov rdi, 10%1$c    call _malloc%1$c    mov r12, rax%1$c%1$c    mov rdi, r12%1$c    mov rsi, kid.name%1$c    mov rdx, rbx%1$c    call _sprintf%1$c%1$c    mov rdi, r12%1$c    mov rsi, kid.rights%1$c    call _fopen%1$c    mov r13, rax%1$c%1$c    cmp r13, 0%1$c    je quit%1$c%1$c    mov rdi, r13%1$c    mov rsi, kid.content%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    mov r8, kid.content%1$c    mov r9, rbx%1$c    call _fprintf%1$c%1$c    mov rdi, r13%1$c    call _fclose%1$c%1$c    mov rdi, 8%1$c    call _malloc%1$c    mov r14, rax%1$c%1$c    mov rdi, r14%1$c    mov rsi, kid.eName%1$c    mov rdx, rbx%1$c    call _sprintf%1$c%1$c    mov rdi, 157%1$c    call _malloc%1$c    mov r15, rax%1$c%1$c    mov rdi, r15%1$c    mov rsi, command%1$c    mov rdx, r14%1$c    call _sprintf%1$c%1$c    mov rdi, r15%1$c    call _system%1$c%1$cquit:%1$c    pop rbp%1$c    ret%1$c", 0
    command db "nasm -f macho64 -dFIRSTQUINE=NOP %1$s.s && ld -macosx_version_min 10.8.0 -lSystem -no_pie -o %1$s %1$s.o && rm %1$s.o && ./%1$s", 0

section .text
    global _main
    extern _fprintf
    extern _fopen
    extern _printf
    extern _malloc
    extern _sprintf
    extern _fclose
    extern _system

_main:
    push rbp

    mov rbx, 5
    %ifdef FIRSTQUINE
    sub rbx, 1
    %endif
    if cmp rbx, 0
    jl quit

    mov rdi, 10
    call _malloc
    mov r12, rax

    mov rdi, r12
    mov rsi, kid.name
    mov rdx, rbx
    call _sprintf

    mov rdi, r12
    mov rsi, kid.rights
    call _fopen
    mov r13, rax

    cmp r13, 0
    je quit

    mov rdi, r13
    mov rsi, kid.content
    mov rdx, 10
    mov rcx, 34
    mov r8, kid.content
    mov r9, rbx
    call _fprintf

    mov rdi, r13
    call _fclose

    mov rdi, 8
    call _malloc
    mov r14, rax

    mov rdi, r14
    mov rsi, kid.eName
    mov rdx, rbx
    call _sprintf

    mov rdi, 157
    call _malloc
    mov r15, rax

    mov rdi, r15
    mov rsi, command
    mov rdx, r14
    call _sprintf

    mov rdi, r15
    call _system

quit:
    pop rbp
    ret
