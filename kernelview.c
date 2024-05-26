#include <string.h>

void *memcpy(void *dest, void *src, size_t n);

#define KSIZE 1024
char kbuf[KSIZE];

int copy_from_kernel(void *user_dest, int maxlen) {
    size_t len = KSIZE < (size_t)maxlen ? KSIZE : (size_t)maxlen;
    memcpy(user_dest, kbuf, len);
    return (int)len;
}
