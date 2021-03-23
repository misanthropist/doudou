#include <stdio.h>

#include "cs2.c"

int main() {
    printf("hello, world\n");
    test_show_bytes(12345);
    char *s = "12水";
    show_char(s);
    return 0;
}
