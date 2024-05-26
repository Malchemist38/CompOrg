#include <stdio.h>

int uadd_ok(unsigned x, unsigned y) {
    unsigned sum = x + y;
    if (sum >=x) {
        return 1; // No overflow
    }
    else {
        return 0; // Overflow occurred
    }
}

int main() {
    unsigned num1, num2;

        printf("Enter 1st positive integer: ");
        scanf("%u", &num1);
        printf("Enter 2nd positive integer: ");
        scanf("%u", &num2);
    if (uadd_ok(num1, num2)) {
        printf("These integers can be safely added\n");
        return 0;
    }
    printf("These integers will cause overflow\n");
    return 0;
}