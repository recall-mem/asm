


section .text
global _start


_start:
    MOV eax, 0b1010
    SHR eax, 2 ; shift right 

    MOV bl, 0b1000
    SAR bl, 2
    INT 0x80
