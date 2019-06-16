%{
    #include <stdio.h>
    #include <stdlib.h>
    #include "langFunctions.h"

    extern char Data_Type[50];

    extern void yyerror();
    extern int yylex();
    extern char* yytext;
    extern int yylineno;
    extern FILE* yyin;
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

%token <intVal> INTEGER_LITERAL
%token <floatVal> FLOAT_LITERAL
%token <strVal> STRING_VALUE
%token <strVal> BOOLEAN_LITERAL
            COMMA COLON
            PLUS MINUS TIMES DIVIDE MOD POW 
            ID
            UNARY_MINUS UNARY_PLUS
            AND OR EQUALS LESS_THAN GREATER_THAN EQUALS_THAN BITWISE_AND BITWISE_OR END
            LEFT_BRACKET RIGHT_BRACKET LEFT_PARENTHESIS RIGHT_PARENTHESIS
            IF ELSE FOR WHILE RETURN SWITCH CASE DEFAULT BREAK
%token <dataType> DATA_TYPE
%token <dataType> INT_TYPE FLOAT_TYPE BOOLEAN_TYPE CHAR_TYPE STRING_TYPE VOID_TYPE

%left	PLUS	MINUS
%left	TIMES	DIVIDE    MOD
%right	POW

%%


program:        /* empty */
                | STATEMENTS;

STATEMENTS      : /* empty */
                | STATEMENT END { clearBuffers(); }
                | STATEMENT STATEMENTS { clearBuffers(); }
                ;

STATEMENT       : ASSIGNMENT END
                | FOR_STATEMENT
                | IF_STATEMENT
                | WHILE_STATEMENT
                | FUNCTION
                | FUNCTION_HEADER
                | FUNCTION_CALL
                | SWITCH_STM
                | RETURN_STM
                | BLOCK;

TYPE            : DATA_TYPE  {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                ;


LOGICAL_OP      : AND {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | OR {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | BITWISE_AND {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | BITWISE_OR {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | LESS_THAN {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | GREATER_THAN {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | EQUALS_THAN {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                ;

ARITHMETIC_OP   : PLUS {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | MINUS {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | TIMES {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | DIVIDE {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | POW {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | MOD {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                ;

RETURN_STM      : RETURN TERM END;

TERM_LIST       : TERM {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | TERM COMMA TERM_LIST;

ID_PARAMS       : TYPE ID
                | TYPE ID COMMA ID_PARAMS;

FUNCTION_PARAMS : /* empty */
                | ID_PARAMS;

FUNCTION_CALL   : ID LEFT_PARENTHESIS TERM_LIST RIGHT_PARENTHESIS END;

FUNCTION_HEADER : TYPE ID LEFT_PARENTHESIS FUNCTION_PARAMS RIGHT_PARENTHESIS END 
                    {
                        printf("%s\n", $<strVal>1);
                    }
                ;

FUNCTION        : TYPE ID LEFT_PARENTHESIS FUNCTION_PARAMS RIGHT_PARENTHESIS LEFT_BRACKET STATEMENTS RIGHT_BRACKET 
                    {
                        printf("%s\n", $<strVal>1);
                    }
                ;

OPERATOR        : ARITHMETIC_OP
                | LOGICAL_OP;

UNARY_OPERATOR  : UNARY_PLUS
                | UNARY_MINUS;

TERM            : ID {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | INTEGER_LITERAL
                | FLOAT_LITERAL
                | BOOLEAN_LITERAL;

EXPRESSION      : TERM {
                        allocaStrEmStr($<dataType>$, $<dataType>$);
                    }
                | TERM OPERATOR EXPRESSION
                | LEFT_PARENTHESIS EXPRESSION RIGHT_PARENTHESIS;

UNARY_EXPR      : TERM UNARY_OPERATOR
                | UNARY_OPERATOR TERM

BLOCK           : LEFT_BRACKET STATEMENTS RIGHT_BRACKET;

ASSIGNMENT      : ID EQUALS EXPRESSION
                | TYPE ID EQUALS EXPRESSION {
                        if(!isDuplicate($2)) {
                            storeDataType($<strVal>1);
                            storeIdentifier($2, retrieveDataType());
                        } else {
                            DuplicateIdentifierError($2);
                        }
                    }
                | UNARY_EXPR
                | TYPE ID {
                        if(!isDuplicate($2)) {
                            storeDataType($<strVal>1);
                            storeIdentifier($2, retrieveDataType());
                        } else {
                            DuplicateIdentifierError($2);
                        }
                    }
                ;

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

int main(int argc, char *argv[]) {
    initSymbolTable();
    yyin = fopen(argv[1], "r");
    
    yyparse();
    printf("No Errors\n");
    fclose(yyin);
    return 0;
}