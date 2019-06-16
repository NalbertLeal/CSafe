%{
    #include <stdio.h>
    #include "./hash.h"

    extern char Data_Type[50];

    extern void yyerror();
    extern int yylex();
    extern char* yytext;
    extern int yylineno;

    HashTable* single_table;

%}

%define parse.lac full
%define parse.error verbose

%union {
    int intVal;
    char* dataType;
    char* str;
    float floatVal;
    char charVal;
}

%start program

%token INTEGER_LITERAL FLOAT_LITERAL BOOLEAN_LITERAL STRING_VALUE
%token COMMA COLON
%token INT_TYPE FLOAT_TYPE BOOLEAN_TYPE CHAR_TYPE STRING_TYPE VOID_TYPE
%token PLUS MINUS TIMES DIVIDE

%token UNARY_MINUS UNARY_PLUS

%token ID
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
                | STATEMENTS;

STATEMENTS      : STATEMENT
                | STATEMENT STATEMENTS;

STATEMENT       : ASSIGNMENT END
                | FOR_STATEMENT
                | IF_STATEMENT
                | WHILE_STATEMENT
                | FUNCTION
                | FUNCTION_CALL
                | SWITCH_STM
                | RETURN_STM
                | BLOCK;

TYPE            : INT_TYPE
                | FLOAT_TYPE {$<str>$ = (char*)malloc(7); sprintf($<str>$, "%s%c", "double",'\0');}
                | BOOLEAN_TYPE
                | VOID_TYPE
                | CHAR_TYPE {$<str>$ = (char*)malloc(5); sprintf($<str>$, "%s%c", "char",'\0');}
                | STRING_TYPE
                | ID;

LOGICAL_OP      : AND
                | OR
                | BITWISE_AND
                | BITWISE_OR
                | LESS_THAN
                | GREATER_THAN
                | EQUALS_THAN;

ARITHMETIC_OP   : PLUS
                | MINUS
                | TIMES
                | DIVIDE
                | POW
                | MOD;

FUNCTION        : TYPE ID LEFT_PARENTHESIS FUNCTION_PARAMS RIGHT_PARENTHESIS BLOCK;

RETURN_STM      : RETURN TERM END;

TERM_LIST       : TERM
                | TERM COMMA TERM_LIST;

ID_PARAMS       : TYPE ID
                | TYPE ID COMMA ID_PARAMS;

FUNCTION_PARAMS : /* empty */
                | ID_PARAMS;

FUNCTION_CALL   : ID LEFT_PARENTHESIS TERM_LIST RIGHT_PARENTHESIS END;

OPERATOR        : ARITHMETIC_OP
                | LOGICAL_OP;

UNARY_OPERATOR  : UNARY_PLUS
                | UNARY_MINUS;

TERM            : VARIABLES
                | INTEGER_LITERAL
                | FLOAT_LITERAL
                | BOOLEAN_LITERAL;

EXPRESSION      : TERM
                | TERM OPERATOR EXPRESSION
                | LEFT_PARENTHESIS EXPRESSION RIGHT_PARENTHESIS;

UNARY_EXPR      : TERM UNARY_OPERATOR
                | UNARY_OPERATOR TERM

VARIABLES       : ID;

BLOCK           : LEFT_BRACKET STATEMENTS RIGHT_BRACKET;

ASSIGNMENT      : VARIABLES EQUALS EXPRESSION
                | TYPE VARIABLES EQUALS EXPRESSION {
                    printf("%s", $<str>1);
                }
                | UNARY_EXPR;

IF_STATEMENT    : IF LEFT_PARENTHESIS EXPRESSION RIGHT_PARENTHESIS BLOCK ELSE_STATEMENT

ELSE_STATEMENT  : ELSE STATEMENT
                | /* empty */;

FOR_STATEMENT   : FOR LEFT_PARENTHESIS ASSIGNMENT END EXPRESSION END ASSIGNMENT RIGHT_PARENTHESIS LEFT_BRACKET STATEMENTS RIGHT_BRACKET;

WHILE_STATEMENT : WHILE LEFT_PARENTHESIS EXPRESSION RIGHT_PARENTHESIS BLOCK;

SWITCH_STM      : SWITCH LEFT_PARENTHESIS ID RIGHT_PARENTHESIS LEFT_BRACKET CASE_LIST DEFAULT_STM RIGHT_BRACKET;

CASE_STATEMENT  : CASE TERM COLON STATEMENTS
                | CASE TERM COLON STATEMENTS BREAK END;

CASE_LIST       : CASE_STATEMENT
                | CASE_STATEMENT CASE_LIST;

DEFAULT_STM     : DEFAULT COLON STATEMENTS;


%%

int main (void) {
    single_table = newHashTable();

    return yyparse();
}