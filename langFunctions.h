#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char Data_Type[50];
int noOfIdentifiers = 0;

struct IdentifierStructure
{
    char* value;
    char* data_type;
}identifiers[20];

extern int yylineno;

void clearBuffers() {
    int i = 0;
    while(Data_Type[i] != '\0') {
        Data_Type[i] = '\0';
        i++;
    }
}

void storeDataType(char* data_type) {
    strcpy(Data_Type, data_type);
}

char* retrieveDataType() {
    return Data_Type;
}

int isDuplicate(char* identifier) {
    int i;
    for(i = 0; i < noOfIdentifiers; i++) {
        if(strcmp(identifier, identifiers[i].value) == 0) {
            return 1;
        }
    }
    return 0;
}

void storeIdentifier(char* identifier, char* identifier_data_type) {
    identifiers[noOfIdentifiers].value = identifier;
    identifiers[noOfIdentifiers].data_type = identifier_data_type;
    noOfIdentifiers++;
}

void AssignmentError(char* data_type) {
    printf("\nERROR ON LINE %d : \nInvalid Assignment! Expected '%s', but found '%s \n'", yylineno, Data_Type, data_type);
    exit(0);
}

void DuplicateIdentifierError(char* identifier) {
    printf("\nERROR ON LINE %d : \nDuplicate identifier '%s' found.\n", yylineno, identifier);
    exit(0);
}