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

/* [[\/\*([^*]]|[\r\n]|[\*+[^*\/]]|[[\r\n]*\*+\/]|[\/\/.*] 		;    */

/*	int num_lines = 0, num_chars = 0;
  
\n	++num_lines; 
.   ++num_chars;
*/

%%

","												          { return (COMMA_C); }
";"														      { return (SEMI_COLLON); }
"true"												      { return (LITERAL_TRUE); }
"false"														  { return (LITERAL_FALSE); }
"if"															  { return (IF_C); }
"else"														  { return (ELSE_C); }
"switch"														{ return (SWITCH); }
"case"															{ return (CASE); }
"default"														{ return (DEFAULT); }
"return"													  { return (RETURN); }
"for"															  { return (FOR); }
"while"														  { return (WHILE); }
"continue"													{ return (CONTINUE); }
"break"												      { return (BREAK); }

"short"														  { return (TYPE_SHORT); }
"int"														    { return (TYPE_INT); }
"long"														  { return (TYPE_LONG); }
"float"														  { return (TYPE_FLOAT); }
"double"														{ return (TYPE_DOUBLE; }
"signed"                            { return (TYPE_SIGNED); }
"unsigned"                          { return (TYPE_UNSIGNED); }
"char"                              { return (TYPE_CHAR); }
"bool"                              { return (TYPE_BOOL); }
"void"														  { return (TYPE_VOID); }
"typedef"                           { return (TYPEDEF); }
"struct"                            { return (STRUCT); }
"union"                             { return (UNION); }
"enum"                              { return (ENUM); }
"const"                             { return (CONST); }
"static"                            { return (STATIC); }

[\/\/.*\n]													{ return (COMMENTARY); };


""           							          { return (TAB_NEWlINE); };
[\".+[^\\]\"]												{ return (LITERAL_STRING); }
[1-9]*\.[0-9]+										  { return (LITERAL_FLOAT); }
[0-9]+														  { return (LITERAL_INT); }
"(" 			  											  { return (PARENTESIS_OPEN); }
")"				  											  { return (PARENTESIS_CLOSE); }
"{" 			  												{ return (BRACE_OPEN); }
"}"				 												  { return (BRACES_CLOSE); }
"[" 			  												{ return (BRACKET_OPEN); }
"]"			 													  { return (BRACKET_CLOSE); }
"**"															 	{ return (POW_OP); }
"*"																  { return (MULT_OP) }
"/"																  { return (DIVIS_OP); }
"%"																  { return (MOD_OP);}
"+"																  { return (ADD_OP); }
"-"																  { return (SUB_OP); }
"=="															  { return (EQUAL_OP); }
"!="															  { return (NOTEQUAL_OP); }
">="															  { return (BIGGER_EQUAL_OP); }
"<="															  { return (LESS_EQUAL_OP); }
">"																  { return (BIGGER_THAN_OP); }
"<"																  { return (LESS_THAN_OP); }
"&&"															  { return (AND_OP); }
"||"															  { return (OR_OP); }
"!"																  { return (NOT_OP); }
"="																  { return (ASSIGN_OP); }

[\_a-z][a-z0-0]*										{ return (ID); }
%%


int main(void)
{
  yylex();
  
  return 0;
}
