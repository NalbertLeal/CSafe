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
     UNARY_MINUS = 271,
     UNARY_PLUS = 272,
     ID = 273,
     AND = 274,
     OR = 275,
     END = 276,
     EQUALS = 277,
     MOD = 278,
     POW = 279,
     VARIABLE = 280,
     BITWISE_AND = 281,
     BITWISE_OR = 282,
     LESS_THAN = 283,
     GREATER_THAN = 284,
     EQUALS_THAN = 285,
     LEFT_PARENTHESIS = 286,
     RIGHT_PARENTHESIS = 287,
     LEFT_BRACKET = 288,
     RIGHT_BRACKET = 289,
     IF = 290,
     ELSE = 291,
     FOR = 292
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
#define UNARY_MINUS 271
#define UNARY_PLUS 272
#define ID 273
#define AND 274
#define OR 275
#define END 276
#define EQUALS 277
#define MOD 278
#define POW 279
#define VARIABLE 280
#define BITWISE_AND 281
#define BITWISE_OR 282
#define LESS_THAN 283
#define GREATER_THAN 284
#define EQUALS_THAN 285
#define LEFT_PARENTHESIS 286
#define RIGHT_PARENTHESIS 287
#define LEFT_BRACKET 288
#define RIGHT_BRACKET 289
#define IF 290
#define ELSE 291
#define FOR 292




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 10 "parser.y"
{
    int iValue;
    struct node * npValue;
}
/* Line 1529 of yacc.c.  */
#line 128 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

