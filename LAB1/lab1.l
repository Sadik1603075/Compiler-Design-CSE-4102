%option noyywrap

%{
#include<stdio.h>
%}

%%
("A"|"E"|"I"|"O"|"U"|"a"|"e"|"i"|"o"|"u") {printf(" %s => vowel\n",yytext);}
. {printf(" %s => consonent \n",yytext);}
%%



int main()
{
    yylex();
}
