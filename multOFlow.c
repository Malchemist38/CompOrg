#include <stdlib.h>
#include <string.h>

void* copy_elements(void *ele_src[], int ele_cnt, size_t ele_size) {
    void *result = malloc(ele_cnt * ele_size);
    if (result == NULL)
        return NULL;
    void *next = result;
    for (int i = 0; i < ele_cnt; i++) {
        memcpy(next, ele_src[i], ele_size);
        next += ele_size;
    }
    return result;
}
