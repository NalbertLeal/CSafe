%{
    #include <stdio.h>
    #include "langFunctions.h"

    extern char Data_Type[50];

    extern void yyerror();
    extern int yylex();
    extern char* yytext;
    extern int yylineno;
%}

%define parse.lac full
%define parse.error verbose

%union {
    int intVal;
    char* dataType;
    char* strVal;
    float floatVal;
    char charVal;
}

%start program

%token BOOLEAN_LITERAL
%token <floatVal> FLOAT_LITERAL
%token <intVal> INTEGER_LITERAL
%token <strVal> STRING_VALUE
%token COMMA COLON

%token <intVal> INT_TYPE
%token <floatVal> FLOAT_TYPE
%token <strVal> STRING_TYPE
%token <dataType> DATA_TYPE

%token PLUS MINUS TIMES DIVIDE

%token UNARY_MINUS UNARY_PLUS

%token <strVal> ID
%token AND
%token OR
%token END
%token EQUALS
%token MOD
%token POW
%token VARIABLE
%token BITWISE_AND
%token BITWISE_OR

%token LESS_THAN
%token GREATER_THAN
%token EQUALS_THAN

%token LEFT_PARENTHESIS
%token RIGHT_PARENTHESIS
%token LEFT_BRACKET
%token RIGHT_BRACKET

%token IF
%token ELSE
%token FOR
%token WHILE

%token RETURN
%token SWITCH
%token CASE
%token DEFAULT
%token BREAK

%%

program:        /* empty */
                | DECLARATION
                ;

DECLARATION:    EXPRESSION END { clearBuffers(); }
                | DECLARATION EXPRESSION END { clearBuffers(); }
                ;

EXPRESSION:     DATA_TYPE ID {
                    if(!isDuplicate($2)) {
                        storeDataType($1);
                        storeIdentifier($2, retrieveDataType());
                    } else {
                        DuplicateIdentifierError($2);
                    }
                }
                | EXPRESSION EQUALS NUMBER {;}
                | EXPRESSION COMMA ID
                ;

NUMBER:         INTEGER_LITERAL
                | FLOAT_LITERAL
                | STRING_VALUE
                ;

%%

int main() {
    initSymbolTable();
    yyparse();
    printf("No Errors\n");
    return 0;
}