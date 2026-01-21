%{
    #include "sample.tab.h"
%}
%%
int {return INT;}
string {return STRING;}
array {return ARRAY;}
while {return WHILE;}
if {return IF;}
else {return ELSE;}
fun {return FUNC;}
apostle {return APOSTLE}
"==" {return EQ;}
"[" {return L_BRACKET;}
"]" {return R_BRACKET;}
"(" {return L_PARAN;}
")" {return R_PARAN;}
"{" {return L_BRACE;}
"}" {return R_BRACE;}
"=" {return ASSIGN;}
";" {return SEMIC;}
"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}
"<" {return LT;}
">" {return GT;}
"%" {return PER;}
[a-zA-Z][a-zA-Z0-9]* {
    yylval.str= (char*)malloc(sizeof(char) * yyleng);
    strncpy(yylval.str , yytext, yyleng);
    return IDENT;
}
[0-9]+[0-9]* {yylval.num = atoi(yytext); return NUMBER;}
, {return COMMA;}
[ \t\n]+


. {return yytext[0];}
%%