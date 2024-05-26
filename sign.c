#include <stdio.h>

// Define sum_elements function outside of main
float sum_elements(float a[], unsigned length) {
    int i;
    float result = 0;

    for (i = 0; i <= length-1; i++) // Corrected loop condition
        result += a[i];
    return result;
}

int main() {
    int x = -999999999; // Arbitrary value for x
    int y = -999999999; // Arbitrary value for y

    unsigned ux = (unsigned) x;
    unsigned uy = (unsigned) y;

    if (x + y == uy + ux) {
        printf("Expression is true!\n");
        printf("\n%d\t%d\n", x+y, uy+ux);
    } else {
        printf("Expression is false!\n");
    }

    // Declaring an array and length
    float arr[5] = {1.5, 2.3, 3.7, 4.1, 5.2};
    unsigned length = 0;

    // Call sum_elements function
    printf("Sum of elements: %f\n", sum_elements(arr, length));

    return 0;
}
