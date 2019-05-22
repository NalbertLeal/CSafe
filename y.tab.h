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
     BOOLEAN_LITERAL = 260,
     COMMA = 261,
     INT_TYPE = 262,
     FLOAT_TYPE = 263,
     BOOLEAN_TYPE = 264,
     CHAR_TYPE = 265,
     STRING_TYPE = 266,
     PLUS = 267,
     MINUS = 268,
     TIMES = 269,
     DIVIDE = 270,
     ID = 271,
     AND = 272,
     OR = 273,
     END = 274,
     EQUALS = 275,
     MOD = 276,
     POW = 277,
     VARIABLE = 278,
     BITWISE_AND = 279,
     BITWISE_OR = 280,
     LESS_THAN = 281,
     GREATER_THAN = 282,
     EQUALS_THAN = 283,
     LEFT_PARENTHESIS = 284,
     RIGHT_PARENTHESIS = 285,
     LEFT_BRACKET = 286,
     RIGHT_BRACKET = 287,
     IF = 288,
     ELSE = 289
   };
#endif
/* Tokens.  */
#define INTEGER_LITERAL 258
#define FLOAT_LITERAL 259
#define BOOLEAN_LITERAL 260
#define COMMA 261
#define INT_TYPE 262
#define FLOAT_TYPE 263
#define BOOLEAN_TYPE 264
#define CHAR_TYPE 265
#define STRING_TYPE 266
#define PLUS 267
#define MINUS 268
#define TIMES 269
#define DIVIDE 270
#define ID 271
#define AND 272
#define OR 273
#define END 274
#define EQUALS 275
#define MOD 276
#define POW 277
#define VARIABLE 278
#define BITWISE_AND 279
#define BITWISE_OR 280
#define LESS_THAN 281
#define GREATER_THAN 282
#define EQUALS_THAN 283
#define LEFT_PARENTHESIS 284
#define RIGHT_PARENTHESIS 285
#define LEFT_BRACKET 286
#define RIGHT_BRACKET 287
#define IF 288
#define ELSE 289




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 10 "parser.y"
{
    int iValue;
    struct node * npValue;
}
/* Line 1529 of yacc.c.  */
#line 122 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

