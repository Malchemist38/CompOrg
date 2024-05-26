	.file	"fact_while.c"
	.text
	.globl	fact_while
	.def	fact_while;	.scl	2;	.type	32;	.endef
	.seh_proc	fact_while
fact_while:
	.seh_endprologue
	movl	$1, %eax
	jmp	.L2
.L3:
	imull	%ecx, %eax
	subl	$1, %ecx
.L2:
	cmpl	$1, %ecx
	jg	.L3
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movl	$0, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
