#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>

int token;
char *src, *old_src;
int poolsize;
int line;

void next() {
    token = *src++;
    return;
}

void expression(int level) {

}

void program() {
    next();
    while (token > 0) {
        printf("token is: %c\n", token);
        next();
    }
}

/* 虚拟机 **/
int *text, *old_text, *stack;
char *data;

int *pc, *bp, *sp, ax, cycle;

int eval() {
    return 0;
}

int main(int argc, char **argv) {
    int i, fd;

    argc--;
    argv++;

    poolsize = 256*1024;
    line = 1;
    
    if ((fd = open(*argv, 0)) < 0) {
        printf("could not open(%s)\n", *argv);
        return -1;
    }

    if (!(src=old_src=malloc(poolsize))) {
        printf("could not malloc(%d) for source area\n", poolsize);
        return -1;
    }

    if ((i=read(fd,src,poolsize-1)) <= 0) {
        printf("read() returned %d\n", i);
        return -1;
    }
    src[i] = 0;
    close(fd);
    
    if (!(text = old_text = malloc(poolsize))) {
        printf("could not malloc(%d) for text area\n", poolsize);
    }
    if (!(data = malloc(poolsize))) {
        printf("could not malloc(%d) for data area\n", poolsize);
    }
    if (!(stack = malloc(poolsize))) {
        printf("could not malloc(%d) for stack area\n", poolsize);
    }

    memset(text, 0, poolsize);
    memset(data, 0, poolsize);
    memset(stack, 0, poolsize); 

    bp = sp = (int *)((int)stack + poolsize);
    ax = 0;

    program();
    return eval();
}
