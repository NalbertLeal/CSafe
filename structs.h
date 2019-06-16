#ifndef structs_h
#define structs_h

//#include ""
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hash.h"

// to include functions...

int tamanho_str(char* str) {
    int N = 0;
    while(str[N] != '\0') N++;
    return N;
}













#endif