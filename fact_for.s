	.file	"fact_for.c"
	.text
	.globl	fact_for
	.def	fact_for;	.scl	2;	.type	32;	.endef
	.seh_proc	fact_for
fact_for:
	.seh_endprologue
	movl	$1, %edx
	movl	$2, %eax
	jmp	.L2
.L3:
	imull	%eax, %edx
	addl	$1, %eax
.L2:
	cmpl	%ecx, %eax
	jle	.L3
	movl	%edx, %eax
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
