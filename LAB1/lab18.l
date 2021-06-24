%option noyywrap

%{
#include "lab18.tab.h"
%}


digit [0-9]



%%
(" ")+ { }
{digit}+ {return(NUM);}
("+") {return(ADD);}
("-") {return(SUB);}
\n {return(EOL);}
. {}
%%



