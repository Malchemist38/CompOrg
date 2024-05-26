	.file	"decode.c"
	.text
	.globl	decode1
	.def	decode1;	.scl	2;	.type	32;	.endef
	.seh_proc	decode1
decode1:
	.seh_endprologue
	movl	(%rcx), %r10d
	movl	(%rdx), %r9d
	movl	(%r8), %eax
	movl	%r10d, (%rdx)
	movl	%r9d, (%r8)
	movl	%eax, (%rcx)
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
