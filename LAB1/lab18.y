
%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NUM ADD SUB EOL 
%start s


%%
s : NUM ADD NUM EOL { printf("Parsing + matched");}
    |NUM SUB NUM EOL { printf("Parsing - matched");};
%%



int main()
{
    yyparse();
    printf("\nParsing Finished.\n");
}

void yyerror(char *s)
{
    fprintf(stderr,"error : %s\n",s);
}
