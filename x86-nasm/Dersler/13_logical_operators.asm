section .text
global _start

_start:
	MOV eax, 0b1001
	MOV ebx, 0b0101
	AND eax, ebx
	MOV eax, 0b1001
	MOV ebx, 0b0101
	OR  eax, ebx
	MOV eax, 0b0101
	NOT eax
	AND eax, 0xF
	MOV eax, 1
	INT 0x80
