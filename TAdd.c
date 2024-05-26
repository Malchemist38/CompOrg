#include <stdio.h>
#include <limits.h>

int tadd_ok(int x, int y) {
    int sum = x + y;
    if ((x > 0 && y > 0 && sum <= 0) || (x < 0 && y < 0 && sum >= 0)) {
        return 0; // Overflow occurred
    } else {
        return 1; // No overflow
    }
}

int main() {
    int num1, num2;

    printf("Enter 1st integer: ");
    scanf("%d", &num1);

    printf("Enter 2nd integer: ");
    scanf("%d", &num2);

    if (tadd_ok(num1, num2)) {
        printf("These integers can be safely added\n");
    } else {
        printf("These integers will cause overflow\n");
    }
    return 0;
}
