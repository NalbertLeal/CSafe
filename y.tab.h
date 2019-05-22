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
     COLON = 262,
     INT_TYPE = 263,
     FLOAT_TYPE = 264,
     BOOLEAN_TYPE = 265,
     CHAR_TYPE = 266,
     STRING_TYPE = 267,
     PLUS = 268,
     MINUS = 269,
     TIMES = 270,
     DIVIDE = 271,
     UNARY_MINUS = 272,
     UNARY_PLUS = 273,
     ID = 274,
     AND = 275,
     OR = 276,
     END = 277,
     EQUALS = 278,
     MOD = 279,
     POW = 280,
     VARIABLE = 281,
     BITWISE_AND = 282,
     BITWISE_OR = 283,
     LESS_THAN = 284,
     GREATER_THAN = 285,
     EQUALS_THAN = 286,
     LEFT_PARENTHESIS = 287,
     RIGHT_PARENTHESIS = 288,
     LEFT_BRACKET = 289,
     RIGHT_BRACKET = 290,
     IF = 291,
     ELSE = 292,
     FOR = 293,
     WHILE = 294,
     SWITCH = 295,
     CASE = 296,
     DEFAULT = 297,
     BREAK = 298
   };
#endif
/* Tokens.  */
#define INTEGER_LITERAL 258
#define FLOAT_LITERAL 259
#define BOOLEAN_LITERAL 260
#define COMMA 261
#define COLON 262
#define INT_TYPE 263
#define FLOAT_TYPE 264
#define BOOLEAN_TYPE 265
#define CHAR_TYPE 266
#define STRING_TYPE 267
#define PLUS 268
#define MINUS 269
#define TIMES 270
#define DIVIDE 271
#define UNARY_MINUS 272
#define UNARY_PLUS 273
#define ID 274
#define AND 275
#define OR 276
#define END 277
#define EQUALS 278
#define MOD 279
#define POW 280
#define VARIABLE 281
#define BITWISE_AND 282
#define BITWISE_OR 283
#define LESS_THAN 284
#define GREATER_THAN 285
#define EQUALS_THAN 286
#define LEFT_PARENTHESIS 287
#define RIGHT_PARENTHESIS 288
#define LEFT_BRACKET 289
#define RIGHT_BRACKET 290
#define IF 291
#define ELSE 292
#define FOR 293
#define WHILE 294
#define SWITCH 295
#define CASE 296
#define DEFAULT 297
#define BREAK 298




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 10 "parser.y"
{
    int iValue;
    struct node * npValue;
}
/* Line 1529 of yacc.c.  */
#line 140 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

