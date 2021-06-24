%option noyywrap

%{
#include<stdio.h>
%}

%%
("A"|"E"|"I"|"O"|"U"|"a"|"e"|"i"|"o"|"u")("0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9") {printf(" %s => valid\n",yytext);}
. {printf(" %s => unknown \n",yytext);}
%%



int main()
{
    yylex();
}
