	.file	"absdiff_se.c"
	.text
	.globl	absdiff_se
	.def	absdiff_se;	.scl	2;	.type	32;	.endef
	.seh_proc	absdiff_se
absdiff_se:
	.seh_endprologue
	cmpl	%edx, %ecx
	jge	.L2
	addl	$1, lt_cnt(%rip)
	movl	%edx, %eax
	subl	%ecx, %eax
.L1:
	ret
.L2:
	addl	$1, ge_cnt(%rip)
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
	.globl	ge_cnt
	.bss
	.align 4
ge_cnt:
	.space 4
	.globl	lt_cnt
	.align 4
lt_cnt:
	.space 4
	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
