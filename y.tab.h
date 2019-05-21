/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INTEGER_LITERAL = 258,
     FLOAT_LITERAL = 259,
     COMMA = 260,
     INT_TYPE = 261,
     FLOAT_TYPE = 262,
     BOOLEAN_TYPE = 263,
     CHAR_TYPE = 264,
     STRING_TYPE = 265,
     PLUS = 266,
     MINUS = 267,
     TIMES = 268,
     DIVIDE = 269,
     ID = 270,
     AND = 271,
     OR = 272,
     END = 273,
     EQUALS = 274,
     MOD = 275,
     POW = 276,
     VARIABLE = 277,
     BITWISE_AND = 278,
     BITWISE_OR = 279,
     LEFT_PARENTHESIS = 280,
     RIGHT_PARENTHESIS = 281,
     BOOLEAN_LITERAL = 282
   };
#endif
/* Tokens.  */
#define INTEGER_LITERAL 258
#define FLOAT_LITERAL 259
#define COMMA 260
#define INT_TYPE 261
#define FLOAT_TYPE 262
#define BOOLEAN_TYPE 263
#define CHAR_TYPE 264
#define STRING_TYPE 265
#define PLUS 266
#define MINUS 267
#define TIMES 268
#define DIVIDE 269
#define ID 270
#define AND 271
#define OR 272
#define END 273
#define EQUALS 274
#define MOD 275
#define POW 276
#define VARIABLE 277
#define BITWISE_AND 278
#define BITWISE_OR 279
#define LEFT_PARENTHESIS 280
#define RIGHT_PARENTHESIS 281
#define BOOLEAN_LITERAL 282




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 10 "parser.y"
{
    int iValue;
    struct node * npValue;
}
/* Line 1529 of yacc.c.  */
#line 108 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

