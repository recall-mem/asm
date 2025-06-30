section .data

section .text
global _start

_start:
    MOV eax, 3
    MOV ebx, 5
    SUB eax, ebx; will set CF flag set
    ADC ecx, 0
    INT 80h
