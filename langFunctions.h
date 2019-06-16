#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "hash.h"

char Data_Type[50];
HashTable* symbolTable;

struct IdentifierStructure
{
    char* value;
    char* data_type;
}identifiers[20];

extern int yylineno;

void initSymbolTable() {
    if(symbolTable == NULL) {
        symbolTable = newHashTable();
    }
}

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
    HashNode* item = hashSearch(&symbolTable, identifier);
    if(item != NULL) {
        return 1;
    }
    return 0;
}

void storeIdentifier(char* identifier, char* identifier_data_type) {
    HashNode* item = newHashNode(identifier, identifier_data_type);
    hashInsert(&symbolTable, &item);
}

void AssignmentError(char* data_type) {
    printf("\nERROR ON LINE %d : \nInvalid Assignment! Expected '%s', but found '%s \n'", yylineno, Data_Type, data_type);
    exit(0);
}

void DuplicateIdentifierError(char* identifier) {
    printf("\nERROR ON LINE %d : \nDuplicate identifier '%s' found.\n", yylineno, identifier);
    exit(0);
}

void allocaStrEmStr(char* a, char* b) {
    int tamanho_string = strlen(b);
    a = (char*) malloc(tamanho_string); 
    sprintf(a, "%s%c", b,'\0');
}