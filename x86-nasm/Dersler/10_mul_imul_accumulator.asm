    ;MUL for unsigned values
    ;IMUL for signed values

section .text
global _start

_start:
    MOV al, 0x7F
    MOV bl, 2
    MUL bl

    MOV eax, 1 ; IMUL Signed vals bitleri ters cevirir menfi elemek ucun
    INT 80h