%option noyywrap

%{
#include<stdio.h>
%}

%%
("A"|"E"|"I"|"O"|"U"|"a"|"e"|"i"|"o"|"u") {printf(" %s => vowel\n",yytext);}
("0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9") {printf(" %s => digit\n",yytext);}
. {printf(" %s => consonent \n",yytext);}
%%



int main()
{
    yylex();
}
