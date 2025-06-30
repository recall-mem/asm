section .text
global _start

_start:
    MOV cl, 0b01111111
    MOV eax, 1
    INT 0x80