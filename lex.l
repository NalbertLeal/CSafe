%{
    #include "y.tab.h"
%}
%%
[ \t\n]             ;
(";")               return(END);
("int")             return(INT_TYPE);
("float")           return(FLOAT_TYPE);
("bool")            return(BOOLEAN_TYPE);
("char")            return(CHAR_TYPE);
("string")          return(STRING_TYPE);
("true")            return(BOOLEAN_LITERAL);
("false")           return(BOOLEAN_LITERAL);

("+")               return(PLUS);
("-")               return(MINUS);
("*")               return(TIMES);
("**")              return(POW);
("\/")              return(DIVIDE);
("(")               return(LEFT_PARENTHESIS);
(")")               return(RIGHT_PARENTHESIS);
("=")               return(EQUALS);
("%")               return(MOD);
(",")               return(COMMA);
("and")             return(AND);
("or")              return(OR);
("&")               return(BITWISE_AND);
("|")               return(BITWISE_OR);
[0-9]+              return(INTEGER_LITERAL);
[a-zA-Z]+           return(ID);
%%
