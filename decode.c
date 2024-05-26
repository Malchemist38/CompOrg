#include <stdio.h>

void decode1 (long *xp, long *yp, long *zp) {
    long x = *xp;   // movq (%rdi), %r8
    long y = *yp;   // movq (%rsi), %rcx
    long z = *zp;   // movq (%rdx), %rax

    *yp = x;        // movq %r8, (%rsi)
    *zp = y;        // movq %rcx, (%rdx)
    *xp = z;        // movq %rax, (%rdi)
}

/*
    My compiler generated this output for the above:
    decode1:
	movl	(%rcx), %r10d
	movl	(%rdx), %r9d
	movl	(%r8), %eax
	movl	%r10d, (%rdx)
	movl	%r9d, (%r8)
	movl	%eax, (%rcx)
*/

int main (int argc, char* argv[]) {
    return 0;
}
