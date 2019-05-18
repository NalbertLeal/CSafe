/* 
 * Sample Scanner2: 
 * Description: Count the number of characters and the number of lines 
 *              from standard input
 * Usage: (1) $ flex sample2.l
 *        (2) $ gcc lex.yy.c -ll (or -lfl)
 *        (3) $ ./a.out
 *        stdin> whatever you like
 *	      stdin> Ctrl-D
 * Questions: Is it ok if we do not indent the first line?
 *            What will happen if we remove the second rule?
 */


	int num_lines = 0, num_chars = 0;

%%
\n	++num_lines; 
.   ++num_chars;

"true"												{printf("%s : LITERAL_TRUE\n", yytext);}
"false"														{printf("%s : LITERAL_FALSE\n", yytext);}
"if"															{printf("%s : IF_C\n", yytext);}
"else"														{printf("%s : ELSE_C\n", yytext);}
"return"													{printf("%s : RETURN_C\n", yytext);}
"for"															{printf("%s : FOR_C\n", yytext);}
"while"														{printf("%s : WHILE_C\n", yytext);}

"int"														{printf("%s : TYPE_INT\n", yytext);}
"void"														{printf("%s : TYPE_VOID\n", yytext);}

[\/\/.*\n]														;

[[\/\*([^*]]|[\r\n]|[\*+[^*\/]]|[[\r\n]*\*+\/]|[\/\/.*] 		;
[ \t\r\n]           							;
[\".+[^\\]\"]												{printf("%s : LITERAL_STRING\n", yytext);}
[0-9]*\.[0-9]+										{printf("%s : LITERAL_FLOAT\n", yytext);}
[0-9]+														{printf("%s : LITERAL_INT\n", yytext);}
[\()] 			  												{printf("%s : PARENT_OPEN\n", yytext);}
[\)]				  											{printf("%s : PARENT_CLOSE\n", yytext);}
[\{] 			  												{printf("%s : BRACES_OPEN\n", yytext);}
[\}]				 												{printf("%s : BRACES_CLOSE\n", yytext);}
[\[] 			  												{printf("%s : BRACKET_OPEN\n", yytext);}
[\]]			 													{printf("%s : BRACKET_CLOSE\n", yytext);}
[\^]																{printf("%s : POW_OP\n", yytext);}
[\*]																{printf("%s : MULT_OP\n", yytext);}
[\/]																{printf("%s : DIVIS_OP\n", yytext);}
[\%]																{printf("%s : MOD_OP\n", yytext);}
[\+]																{printf("%s : ADD_OP\n", yytext);}
[\-]																{printf("%s : SUB_OP\n", yytext);}
[\=\=]															{printf("%s : EQUAL_OP\n", yytext);}
[\!\=]															{printf("%s : NOTEQUAL_OP\n", yytext);}
[\>\=]															{printf("%s : BIGGER_EQUAL_OP\n", yytext);}
[\<\=]															{printf("%s : LESS_EQUAL_OP\n", yytext);}
[\>]																{printf("%s : BIGGER_THAN_OP\n", yytext);}
[\<]																{printf("%s : LESS_THAN_OP\n", yytext);}
[\&\&]															{printf("%s : AND_OP\n", yytext);}
[\|\|]															{printf("%s : OR_OP\n", yytext);}
[\!]																{printf("%s : NOT_OP\n", yytext);}
[\=]																{printf("%s : ASSIGN_OP\n", yytext);}

[\_a-z][a-z0-0]*													{printf("%s : ID\n", yytext);}
%%


int main(void)
{
  yylex();
  
  return 0;
}