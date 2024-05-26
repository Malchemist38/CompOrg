	.file	"absdiff.c"
	.text
	.globl	absdiff
	.def	absdiff;	.scl	2;	.type	32;	.endef
	.seh_proc	absdiff
absdiff:
	.seh_endprologue
	cmpl	%edx, %ecx
	jge	.L2
	movl	%edx, %eax
	subl	%ecx, %eax
.L1:
	ret
.L2:
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	.L1
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
