%{
#include <stdio.h>

int count = 0;
%}

%%
[Aa][a-zA-Z0-9_]*    { count++; }
[ \t\n]+             { }
.                    { }
%%

int main()
{
    yylex();

    printf("Name: Pranav Chitrive    PRN: 24070521084\n");
    printf("Number of words starting with 'A': %d\n", count);

    return 0;
}

int yywrap()
{
    return 1;
}
