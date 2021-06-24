%option noyywrap

%{
#include<stdio.h>
%}

%%
([A-Za-z])([0-9]) {printf(" %s => valid\n",yytext);}
. {printf(" %s => unknown \n",yytext);}
%%



int main()
{
    yylex();
}
