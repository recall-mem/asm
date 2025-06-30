section .data
	list1 DB 1,2,3,4

section .text
global _start

_start:
	MOV eax, 0
	MOV cl, 0 ;sum of list1
loop:
	MOV bl, [list1 + eax]
	ADD cl, bl
	INC eax
	CMP eax, 4
	JL loop

	MOV eax, 1
	MOV ebx, 1
	INT 0x80
