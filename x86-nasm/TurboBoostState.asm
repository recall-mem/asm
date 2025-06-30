; Check Turbo boost state for i7 10750H CPU
; MSR: 0x1A0 (IA32_MISC_ENABLE)
; Check Bit 38 (6th bit of edx)
; if Bit 38 is 1 turbo is OFF, if 0 turbo is ON



BITS 64 ; generate code for 64 bit mode cpu


section .text
global _start

_start:
    mov ecx, 0x1A0
    rdmsr   ; Read MSR -> EDX:EAX
    ; High bits of 0x1A0 writed to EDX
    
    and dl, 0b01000000
    cmp dl, 0
    jne turbo_off

    mov ebx, 0
    mov eax, 1
    INT 80h

turbo_off:
    mov ebx, 1
    mov eax, 1
    INT 80h
