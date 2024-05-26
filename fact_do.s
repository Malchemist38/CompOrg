	.file	"fact_do.c"
	.text
	.globl	fact_do
	.def	fact_do;	.scl	2;	.type	32;	.endef
	.seh_proc	fact_do
fact_do:
	.seh_endprologue
	movl	$1, %eax
.L2:
	imull	%ecx, %eax
	subl	$1, %ecx
	cmpl	$1, %ecx
	jg	.L2
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
