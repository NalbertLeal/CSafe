/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
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
    VOID_TYPE = 268,
    PLUS = 269,
    MINUS = 270,
    TIMES = 271,
    DIVIDE = 272,
    UNARY_MINUS = 273,
    UNARY_PLUS = 274,
    ID = 275,
    AND = 276,
    OR = 277,
    END = 278,
    EQUALS = 279,
    MOD = 280,
    POW = 281,
    VARIABLE = 282,
    BITWISE_AND = 283,
    BITWISE_OR = 284,
    LESS_THAN = 285,
    GREATER_THAN = 286,
    EQUALS_THAN = 287,
    LEFT_PARENTHESIS = 288,
    RIGHT_PARENTHESIS = 289,
    LEFT_BRACKET = 290,
    RIGHT_BRACKET = 291,
    IF = 292,
    ELSE = 293,
    FOR = 294,
    WHILE = 295,
    RETURN = 296,
    SWITCH = 297,
    CASE = 298,
    DEFAULT = 299,
    BREAK = 300
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
#define VOID_TYPE 268
#define PLUS 269
#define MINUS 270
#define TIMES 271
#define DIVIDE 272
#define UNARY_MINUS 273
#define UNARY_PLUS 274
#define ID 275
#define AND 276
#define OR 277
#define END 278
#define EQUALS 279
#define MOD 280
#define POW 281
#define VARIABLE 282
#define BITWISE_AND 283
#define BITWISE_OR 284
#define LESS_THAN 285
#define GREATER_THAN 286
#define EQUALS_THAN 287
#define LEFT_PARENTHESIS 288
#define RIGHT_PARENTHESIS 289
#define LEFT_BRACKET 290
#define RIGHT_BRACKET 291
#define IF 292
#define ELSE 293
#define FOR 294
#define WHILE 295
#define RETURN 296
#define SWITCH 297
#define CASE 298
#define DEFAULT 299
#define BREAK 300

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 11 "parser.y" /* yacc.c:1909  */

    char *str;

#line 148 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
