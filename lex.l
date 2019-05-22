%{
    #include "y.tab.h"
%}
%%
[ \t\n]             ;
(";")               return(END);

("if")              return(IF);
("else")            return(ELSE);
("for")             return(FOR);
("while")           return(WHILE);
("switch")          return(SWITCH);
("return")          return(RETURN);
("case")            return(CASE);
("default")         return(DEFAULT);
("break")           return(BREAK);

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
("{")               return(LEFT_BRACKET);
("}")               return(RIGHT_BRACKET);
("=")               return(EQUALS);
("%")               return(MOD);
("++")              return(UNARY_PLUS);
("--")              return(UNARY_MINUS);

("<")               return(LESS_THAN);
(">")               return(GREATER_THAN);
("==")              return(EQUALS_THAN);

(":")               return(COLON);
(",")               return(COMMA);
("and")             return(AND);
("or")              return(OR);
("&")               return(BITWISE_AND);
("|")               return(BITWISE_OR);
[0-9]+              return(INTEGER_LITERAL);
[a-zA-Z]+           return(ID);
%%
