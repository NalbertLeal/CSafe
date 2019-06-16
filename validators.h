#include <stdio.h>
#include <string.h>

extern char Data_Type[50];

int isValidAssignment(char* givenDataType) {
    if(strcmp(givenDataType, Data_Type)) {
        return 0;
    }
    return 1;
}