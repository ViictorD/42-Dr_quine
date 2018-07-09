section .data
var1 db "section .data%cvar1 db %c%s%c%csection .text%cglobal start%cglobal _main%cextern _printf%c;/*%c;    This program will print its own source when run.%c;*/%cstart:%ccall _main%cret%c_main:%c;/*%c;    This program will print its own source when run.%c;*/%cpush rbp%cmov rbp, rsp%csub rsp, 16%cmov r10, 34%cwhile_push:%ccmp r10, 0%cje call_printf%cpush 10%csub r10, 1%cjmp while_push%ccall_printf:%clea rdi, [rel var1]%cmov rsi, 10%cmov rdx, 34%clea rcx, [rel var1]%cmov r8, 34%cmov r9, 10%ccall _printf%cleave%cret%c"
section .text
global start
global _main
extern _printf
;/*
;    This program will print its own source when run.
;*/
start:
call _main
ret
_main:
;/*
;    This program will print its own source when run.
;*/
push rbp
mov rbp, rsp
sub rsp, 16
mov r10, 34
while_push:
cmp r10, 0
je call_printf
push 10
sub r10, 1
jmp while_push
call_printf:
lea rdi, [rel var1]
mov rsi, 10
mov rdx, 34
lea rcx, [rel var1]
mov r8, 34
mov r9, 10
call _printf
leave
ret
