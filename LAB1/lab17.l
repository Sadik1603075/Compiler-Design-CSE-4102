%option noyywrap

%{
#include<stdio.h>
%}


digit [0-9]



%%
(" ")+ { }
{digit}+ {printf(" %s => NUM\n",yytext);}
("+") { printf(" %s => OP\n",yytext);}
. {printf(" %s => unknown \n",yytext);}
%%



int main()
{
    yylex();
}
