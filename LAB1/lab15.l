%option noyywrap

%{
#include<stdio.h>
%}

%%
([A-Za-z]+) {printf(" %s => word\n",yytext);}
([0-9]+) {printf(" %s => number\n",yytext);}
. {printf(" %s => unknown \n",yytext);}
%%



int main()
{
    yylex();
}
