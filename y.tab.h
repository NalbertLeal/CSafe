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
    STRING_VALUE = 260,
    BOOLEAN_LITERAL = 261,
    COMMA = 262,
    COLON = 263,
    PLUS = 264,
    MINUS = 265,
    TIMES = 266,
    DIVIDE = 267,
    MOD = 268,
    POW = 269,
    ID = 270,
    UNARY_MINUS = 271,
    UNARY_PLUS = 272,
    AND = 273,
    OR = 274,
    EQUALS = 275,
    LESS_THAN = 276,
    GREATER_THAN = 277,
    EQUALS_THAN = 278,
    BITWISE_AND = 279,
    BITWISE_OR = 280,
    END = 281,
    LEFT_BRACKET = 282,
    RIGHT_BRACKET = 283,
    LEFT_PARENTHESIS = 284,
    RIGHT_PARENTHESIS = 285,
    IF = 286,
    ELSE = 287,
    FOR = 288,
    WHILE = 289,
    RETURN = 290,
    SWITCH = 291,
    CASE = 292,
    DEFAULT = 293,
    BREAK = 294,
    DATA_TYPE = 295,
    INT_TYPE = 296,
    FLOAT_TYPE = 297,
    BOOLEAN_TYPE = 298,
    CHAR_TYPE = 299,
    STRING_TYPE = 300,
    VOID_TYPE = 301
  };
#endif
/* Tokens.  */
#define INTEGER_LITERAL 258
#define FLOAT_LITERAL 259
#define STRING_VALUE 260
#define BOOLEAN_LITERAL 261
#define COMMA 262
#define COLON 263
#define PLUS 264
#define MINUS 265
#define TIMES 266
#define DIVIDE 267
#define MOD 268
#define POW 269
#define ID 270
#define UNARY_MINUS 271
#define UNARY_PLUS 272
#define AND 273
#define OR 274
#define EQUALS 275
#define LESS_THAN 276
#define GREATER_THAN 277
#define EQUALS_THAN 278
#define BITWISE_AND 279
#define BITWISE_OR 280
#define END 281
#define LEFT_BRACKET 282
#define RIGHT_BRACKET 283
#define LEFT_PARENTHESIS 284
#define RIGHT_PARENTHESIS 285
#define IF 286
#define ELSE 287
#define FOR 288
#define WHILE 289
#define RETURN 290
#define SWITCH 291
#define CASE 292
#define DEFAULT 293
#define BREAK 294
#define DATA_TYPE 295
#define INT_TYPE 296
#define FLOAT_TYPE 297
#define BOOLEAN_TYPE 298
#define CHAR_TYPE 299
#define STRING_TYPE 300
#define VOID_TYPE 301

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 18 "parser.y" /* yacc.c:1909  */

    int intVal;
    char* dataType;
    char* strVal;
    float floatVal;
    char charVal;

#line 154 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
