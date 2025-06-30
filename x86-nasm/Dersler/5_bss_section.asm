section .bss ; Block Starting Symbol
	num1 RESB 3 ; RESB = reserve bytes. it just reserve bytes 
	
section .data
	num2 DB 3 DUP(2)


section .text
global _start

_start:
	MOV bh, 2
	MOV [num1], bh
	MOV [num1+1], bh 
	MOV ebx, [num2+2]
	MOV eax, 1
	INT 80h
