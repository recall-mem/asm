section .data 
    char DB 'A' ; 'A' = 65
    string DB "ABA",0 ;0 is null terminator

section .text
global _start

_start:
    mov ebx, string
    mov eax, 1
    INT 80h