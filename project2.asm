section	.data

;Problem 1 variable declarations

	msg db "Largest: ", 0xA, 0xD
	len equ $- msg
	
	x dd '400'
	y dd '200'
	z dd '500'

section .bss
	
	largest	dd	4
	smallest dd	4
section	.text
	global _start


_start:
	
	mov ecx, [x]
	cmp ecx, [y]
	jg compare_z

compare_z:
	cmp ecx, [z]
	jg _exit
	mov ecx, [z]

_exit:
	mov [largest], ecx
	mov ecx, msg
	mov dx, len
	mov bx, 1
	mov ax, 4
	int 0x80
	
	mov ecx, largest
	mov dx, 3
	mov bx, 1
	mov ax, 4
	int 0x80

	mov ax, 1
	int 80h

_end:
	mov	rax, 60
	mov	rdi, 0
	syscall
