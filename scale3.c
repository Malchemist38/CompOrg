short scale3(short x, short y, short z) {
    short t = 10 * y + z + x * y;
}

int main(int argc, char* argv[]) {
    return 0;
}

/*
    scale3:
        leaq (%rsi, %rsi, 9), %rbx is equivalent to y + y * 9 or 10 * y
        leaq (%rbx, %rdx), %rbx is equivalent to 10 * y + z
        leaq (%rbx, %rdi, %rsi), %rbx is equivalent to 10 * y + z + x * y
*/