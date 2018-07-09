section .data
data db "section .data%cdata db %c%s%c, 0%cpath db %c./Sully_%%d.s%c, 0%cperm db %cw%c, 0%ccmd db %cnasm -f macho64 Sully_%%d.s -o Sully_%%d.o && ld -lSystem -macosx_version_min 10.8 -o Sully_%%d Sully_%%d.o && ./Sully_%%d%c, 0%ci dd %d%cbuffer: times 1024 db 0%csection .text%cglobal start%cglobal _main%cextern _fopen%cextern _sprintf%cextern _fprintf%cextern _fclose%cextern _system%c_main:%ccmp DWORD [rel i], 0%cjl end%cpush rbp%cmov rbp, rsp%csub rsp, 16%clea rdi, [rel buffer]%clea rsi, [rel path]%cmov rdx, [rel i]%ccall _sprintf%clea rdi, [rel buffer]%clea rsi, [rel perm]%ccall _fopen%cmov rcx, 69%cmov r11, 3%cwhile_push:%ccmp rcx, 0%cje before_while_quot%cpush 10%csub rcx, 1%cjmp while_push%cbefore_while_quot:%cmov r10, [rel i]%csub r10, 1%cpush r10%cwhile_quot:%ccmp r11, 0%cje put_in_file%csub r11, 1%cpush 10%cpush 34%cpush 34%cjmp while_quot%cput_in_file:%cpush 10%cmov rdi, rax%clea rsi, [rel data]%cmov rdx, 10%cmov rcx, 34%clea r8, [rel data]%cmov r9, 34%cmov rbx, rax%ccall _fprintf%cmov rdi, rbx%ccall _fclose%clea rdi, [rel buffer]%clea rsi, [rel cmd]%cmov r10d, DWORD [rel i]%cmov rdx, r10%cmov rcx, r10%cmov r8, r10%cmov r9, r10%cleave%cpush r10%ccall _sprintf%clea rdi, [rel buffer]%ccall _system%cpop r10%cend:%cret", 0
path db "./Sully_%d.s", 0
perm db "w", 0
cmd db "nasm -f macho64 Sully_%d.s -o Sully_%d.o && ld -lSystem -macosx_version_min 10.8 -o Sully_%d Sully_%d.o && ./Sully_%d", 0
i dd 5
buffer: times 1024 db 0
section .text
global start
global _main
extern _fopen
extern _sprintf
extern _fprintf
extern _fclose
extern _system
_main:
cmp DWORD [rel i], 0
jl end
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel buffer]
lea rsi, [rel path]
mov rdx, [rel i]
call _sprintf
lea rdi, [rel buffer]
lea rsi, [rel perm]
call _fopen
mov rcx, 69
mov r11, 3
while_push:
cmp rcx, 0
je before_while_quot
push 10
sub rcx, 1
jmp while_push
before_while_quot:
mov r10, [rel i]
sub r10, 1
push r10
while_quot:
cmp r11, 0
je put_in_file
sub r11, 1
push 10
push 34
push 34
jmp while_quot
put_in_file:
push 10
mov rdi, rax
lea rsi, [rel data]
mov rdx, 10
mov rcx, 34
lea r8, [rel data]
mov r9, 34
mov rbx, rax
call _fprintf
mov rdi, rbx
call _fclose
lea rdi, [rel buffer]
lea rsi, [rel cmd]
mov r10d, DWORD [rel i]
mov rdx, r10
mov rcx, r10
mov r8, r10
mov r9, r10
leave
push r10
call _sprintf
lea rdi, [rel buffer]
call _system
pop r10
end:
ret