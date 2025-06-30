section .data
	rval DB 1
	eval DB 1


section .text
global _start ; Directive

_start: ; Entry point label for linker
	mov eax, [eval]
	mov ebx, [rval]
	int 0x80
