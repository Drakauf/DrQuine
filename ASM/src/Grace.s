%define CONTENT "%%define CONTENT %2$c%3$s%2$c%1$c%1$c%%macro print 1%1$c    mov rdi, rbx%1$c    mov rsi, %%1%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    mov r8, %%1%1$c    call _fprintf%1$c%%endmacro%1$c%1$c%%macro FT 0%1$c;Not so graceful this Grace%1$c%1$csection .data%1$c    kid:%1$c        .name db %2$cGrace_kid.s%2$c, 0%1$c        .rights db %2$cw%2$c, 0%1$c        .content db CONTENT, 0%1$c%1$csection .text%1$c    global _main%1$c    global print%1$c    extern _fprintf%1$c    extern _fopen%1$c    extern _fclose%1$c%1$c_main:%1$c    push rbp%1$c    mov rdi, kid.name%1$c    mov rsi, kid.rights%1$c    call _fopen%1$c    mov rbx, rax%1$c    cmp rbx, 0%1$c    je quit%1$c    print kid.content%1$c    mov rdi, rbx%1$c    call _fclose%1$c%1$cquit:%1$c    pop rbp%1$c    ret%1$c%%endmacro%1$c%1$cFT%1$c"

%macro print 1
    mov rdi, rbx
    mov rsi, %1
    mov rdx, 10
    mov rcx, 34
    mov r8, %1
    call _fprintf
%endmacro

%macro FT 0
;Not so graceful this Grace

section .data
    kid:
        .name db "Grace_kid.s", 0
        .rights db "w", 0
        .content db CONTENT, 0

section .text
    global _main
    global print
    extern _fprintf
    extern _fopen
    extern _fclose

_main:
    push rbp
    mov rdi, kid.name
    mov rsi, kid.rights
    call _fopen
    mov rbx, rax
    cmp rbx, 0
    je quit
    print kid.content
    mov rdi, rbx
    call _fclose

quit:
    pop rbp
    ret
%endmacro

FT
