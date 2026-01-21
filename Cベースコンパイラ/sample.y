%{
    #include <stdio.h>
    #include "sample.tab.h"
    #include "ast.h"
    extern int yylex();
    extern int yyerror();
%}
%{
    extern Node *top;
%}
%union{
    struct node *np;
    int num;
    char* str;
};
%type <np> statements statement idents declarations decl_statement
%type <np> assignment_stmt loop_stmt cond_stmt expression term
%type <np> factor var condition




%token ASSIGN SEMIC <str>IDENT <num>NUMBER COMMA DEFINE ARRAY
%token WHILE IF ELSE L_BRACKET R_BRACKET L_PARAN R_PARAN
%token L_BRACE R_BRACE ADD SUB MUL DIV EQ LT GT FUNC FUNCCALL PER
%%

/*
プログラムの構成案








*/



