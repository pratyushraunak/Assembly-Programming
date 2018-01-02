;Hello_world.asm
;Author=Pratyush
;compile=nasm -f elf32 -o hello_world.o hello_world.asm
;link=ld -m elf_i386 hello_world.o -o hello_world
section         .data

msg     db "Hello World!", 0xA, 0xD
len     equ $-msg
section         .text

global  _start

_start:

        mov eax, 4
        mov ebx, 1
        mov ecx, msg
        mov edx, len
        int 0x80


        mov eax, 1
        mov ebx, 0
        int 0x80



