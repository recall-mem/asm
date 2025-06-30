section .data
	num0 DB 3, 1, 0
	num1 DB 2
	num2 DB 1

section .text
global _start

_start:
	MOV bh, [num0+1] ; ebx exit code = 1
	MOV ecx, [num1]  
	MOV eax, 1 		 ; 1 -> exit systemcall
	INT 0x80

