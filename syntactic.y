%{
#include<stdio.h>

int yylex(void);
int yyerror(char *s);
extern int yylineno;
extern char * yytext; 
}%

%%
program                 : STATEMENTS                                             {};

STATEMENTS              : STATEMENT                                             {}
                        | STATEMENTS                                            {};

STATEMENT               : FOR                                                   {}
                        | WHILE                                                 {}
                        | SWITCH                                                {}
                        | IF                                                    {}
                        | CONTINUE                                              {}
                        | BREAK                                                 {}
                        | FUNCTION                                              {}
                        | ASSIGN                                                {};

EXPRESSION              : EXPRESSION                                            {}
                        | LITERAL                                               {}
                        | FUNCTION_CALL                                         {}
                        | VARIABLE                                              {}
                        | EXPRESSION PLUS EXPRESSION                            {}
                        | EXPRESSION LESS EXPRESSION                            {}
                        | EXPRESSION TIMES EXPRESSION                           {}
                        | EXPRESSION DIVIDE EXPRESSION                          {}
                        | EXPRESSION MODULUS EXPRESSION                         {}
                        | EXPRESSION POWER EXPRESSION                           {}
                        | EXPRESSION AND EXPRESSION                             {}
                        | EXPRESSION OR EXPRESSION                              {};

LITERAL

VARIABLES               : VARIABLE                                              {}
                        | ID SEMICOMMA ID                                       {};

VARIABLE                : ID                                                    {};

ASSIGN                  : VARIABLE IGUAL EXPRESSION                             {}
                        | VARIABLES IGUAL EXPRESSION                            {};

FOR                     : FOR OPEN_PARENTESIS FOR_ARGS CLOSE_PARENTESIS
                            OPEN_BRACKET STATEMENTS CLOSE_BRACKET               {};

FOR_ARGS                : ASSIGN SEMICOMMA EXPRESSION SEMICOMMA ASSIGN          {}
                        | SEMICOMMA EXPRESSION SEMICOMMA ASSIGN                 {}
                        | ASSIGN SEMICOMMA EXPRESSION SEMICOMMA                 {}
                        | SEMICOMMA EXPRESSION SEMICOMMA                        {};

WHILE                   : WHILE OPEN_PARENTESIS EXPRESSION CLOSE_PARENTESIS
                            OPEN_BRACKET STATEMENTS CLOSE_BRACKET               {};

SWITCH                  : SWITCH OPEN_PARENTESIS ID CLOSE_PARENTESIS
                            OPEN_BRACKET CASES CLOSE_BRACKET                    {};

CASES                   : CASE                                                  {}
                        | CASES                                                 {};

CASE                    : CASE EXPRESSION TWO_DOTS STATEMENTS                   {}
                        | CASE EXPRESSION TWO_DOTS STATEMENTS                   {}
                        | DEFAULT                                               {};

DEFAULT                 : DEFAULT TWO_DOTS STATEMENTS                           {};

IF_STRUCTURE            : IF OPEN_PARENTESIS EXPRESSION CLOSE_PARENTESIS
                            OPEN_BRACKET STATEMENTS CLOSE_BRACKET               {};

ELSE_STRUCTURE          : ELSE OPEN_BRACKET STATEMENTS CLOSE_BRACKET            {};

IF_NESTED               : ELSE IF_STRUCTURE                                     {};

CONTINUE                : CONTINUE                                              {};

BREAK                   : BREAK                                                 {};

FUNCTION                : TYPE ID OPEN_PARENTESIS ARGS CLOSE_PARENTESIS
                            OPEN_BRACKET STATEMENTS CLOSE_BRACKET               {};

FUNCTION_CALL           : ID OPEN_PARENTESIS CLOSE_PARENTESIS                   {}
                        | ID OPEN_PARENTESIS ARGS CLOSE_PARENTESIS              {};

ARGS                    : ID                                                    {}
                        | ID COMMA ARGS                                         {};
%%