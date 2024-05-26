	.file	"decode2.c"
	.text
	.globl	decode2
	.def	decode2;	.scl	2;	.type	32;	.endef
	.seh_proc	decode2
decode2:
	.seh_endprologue
	subl	%r8d, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movl	$63, %ecx
	sall	%cl, %edx
	sarl	%cl, %edx
	xorl	%edx, %eax
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
