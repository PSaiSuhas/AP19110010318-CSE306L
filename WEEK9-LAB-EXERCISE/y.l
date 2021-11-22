%{
#include "y.y.h"
%}
%%flex 
[ \t\n] {yylval = strdup(yytext);}
[0-9]+ {yylval=atoi(yytext);return NUMBER;}
"="     {yylval = strdup(yytext);return ASSIGN;}
"void" {yylval=strdup(yytext);return VOID;}
"main()" {yylval=strdup(yytext);return MAIN;}
"print" {yylval=strdup(yytext);return PRINT;}
"int" {yylval = strdup(yytext);return INT;}
"var" {yylval = strdup(yytext);return VAR;}
"if" {yylval = strdup(yytext);return IF;}
"else" {yylval = strdup(yytext);return ELSE;}
"while" {yylval = strdup(yytext);return WHILE;}
"for" {yylval = strdup(yytext);return FOR;}
[a-zA-Z_]*[0-9]? {yylval=strdup(yytext);return ID;}
\".*\" {yylval=strdup(yytext);return STRING;} 
. return yytext[0];
%%