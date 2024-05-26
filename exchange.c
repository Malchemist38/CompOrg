long exchange(long *xp, long y) {   // xp in %rdi, y in %rsi
    long x = *xp;                   // movq (%rdi), %rax - Get x at xp. Set as return value.
    *xp = y;                        // movq %rsi, (%rdi) - Store y at xp.
    return x;                       // ret - Return the old value of x.
}

int main (int argc, char* argv[]) {
    return 0;
}

/*
    My compiler generates the following output for the above:
    exchange:
	movl	(%rcx), %eax
	movl	%edx, (%rcx)
	ret
*/