	.file	"switch_eg.c"
	.text
	.globl	switch_eg
	.def	switch_eg;	.scl	2;	.type	32;	.endef
	.seh_proc	switch_eg
switch_eg:
	.seh_endprologue
	subl	$100, %edx
	cmpl	$6, %edx
	ja	.L8
	movl	%edx, %edx
	leaq	.L4(%rip), %r9
	movslq	(%r9,%rdx,4), %rax
	addq	%r9, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L4:
	.long	.L7-.L4
	.long	.L8-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.long	.L8-.L4
	.long	.L3-.L4
	.text
.L7:
	leal	(%rcx,%rcx,2), %eax
	leal	(%rcx,%rax,4), %ecx
	jmp	.L2
.L6:
	addl	$10, %ecx
.L5:
	addl	$11, %ecx
.L2:
	movl	%ecx, (%r8)
	ret
.L3:
	imull	%ecx, %ecx
	jmp	.L2
.L8:
	movl	$0, %ecx
	jmp	.L2
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
