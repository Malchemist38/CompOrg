long decode2(long x, long y, long z) {
    y -= z;             // subq %rdx, %rsi
    x *= y;             // imulq %rsi, %rdi

    long result = y;    // movq %rsi, %rax
    result <<= 63;      // salq $63, %rax
    result >>= 63;      // sarq $63, %rax
    result ^= x;        // xorq %rdi, %rax
    return result;
}

/*
    My compiler generated this output for the above:
    decode2:
	subl	%r8d, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movl	$63, %ecx
	sall	%cl, %edx
	sarl	%cl, %edx
	xorl	%edx, %eax
	ret

*/

int main (int argc, char* argv[]) {
    return 0;
}
