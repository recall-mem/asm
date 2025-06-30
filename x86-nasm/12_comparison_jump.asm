section .data


section .text
global _start

_start:
    MOV eax, 5
    MOV ebx, 2

loop:
    CMP eax, ebx ; CMP operatoru cixir.  eax - ebx 
    JG bigger
    JLE end

bigger:
    SUB eax, 1
    ADD eax, 1
    JMP loop

end:
    MOV eax, 1
    INT 0x80