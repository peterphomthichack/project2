section	.data

;Problem 1 variable declarations

	
	
	num1 dd	600
	num2 dd 200
	num3 dd 500

section .bss
	
	largest	resb	4
	smallest resb	4

section	.text
	global _start


_start:
	
	mov	ecx, [num1]
	cmp	ecx, [num2]
	jg	checking_num3

checking_num3:
	cmp	ecx, [num3]
	jg	num1LargerThanNum3
	mov	ecx, [num3]

num1LargerThanNum3:
	
	mov	[largest], ecx
	jmp	next

next:
	mov	ecx, [num2]
	cmp	ecx, [num3]
	jl	checking_num1

checking_num1:
	cmp	ecx, [num2]
	jl	num2LessThanNum3
	mov	ecx, [num2]

num2LessThanNum3:
	mov	[smallest], ecx
	jmp	_end



_end:
	mov	rax, 60
	mov	rdi, 0
	syscall
