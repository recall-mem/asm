section .text
global _start

_start:
    MOV bl, 0b11111111
    MOV cl, 0b00000001
    ADD bl, cl
    ADC bh, 0   ;add with carry
    MOV eax, 1  ;syscall exit
    INT 80h