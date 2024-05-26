#include <stdio.h>

int main() {
    #if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
        printf("Little-endian\n");
    #elif __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
        printf("Big-endian\n");
    #else
        printf("Endianness not determined\n");
    #endif

    return 0;
}
