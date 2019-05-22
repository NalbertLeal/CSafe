%{
    typedef struct node {
        struct node *left;
        struct node *right;
        int tokcode;
        char *token;
    } node;
%}

%union {
    int iValue;
    struct node * npValue;
}

%token <iValue> INTEGER_LITERAL FLOAT_LITERAL BOOLEAN_LITERAL
%token COMMA
%token INT_TYPE FLOAT_TYPE BOOLEAN_TYPE CHAR_TYPE STRING_TYPE
%token PLUS MINUS TIMES DIVIDE
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

%type <npValue> STATEMENT EXPRESSION ASSIGNMENT

%%

program:        /* empty */
                | STATEMENTS;

STATEMENTS      : STATEMENT
                | STATEMENT STATEMENTS;

STATEMENT       : ASSIGNMENT END
                | IF_STATEMENT
                | BLOCK;

TYPE            : INT_TYPE
                | FLOAT_TYPE
                | BOOLEAN_TYPE
                | CHAR_TYPE
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

OPERATOR        : ARITHMETIC_OP
                | LOGICAL_OP;

LITERAL         : INTEGER_LITERAL
                | FLOAT_LITERAL
                | BOOLEAN_LITERAL;

TERM            : VARIABLES
                | INTEGER_LITERAL
                | FLOAT_LITERAL;

EXPRESSION      : TERM
                | TERM OPERATOR EXPRESSION
                | LEFT_PARENTHESIS EXPRESSION RIGHT_PARENTHESIS;

VARIABLES       : ID;

BLOCK           : LEFT_BRACKET STATEMENTS RIGHT_BRACKET;

ASSIGNMENT      : VARIABLES EQUALS EXPRESSION
                | TYPE VARIABLES EQUALS EXPRESSION;

IF_STATEMENT    : IF LEFT_PARENTHESIS EXPRESSION RIGHT_PARENTHESIS BLOCK ELSE_STATEMENT

ELSE_STATEMENT  : ELSE STATEMENT
                | /* empty */;