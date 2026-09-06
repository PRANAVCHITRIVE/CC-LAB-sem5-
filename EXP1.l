%{
/*
Name : PRANAV CHITRIVE
PRN  : 24070521084
Experiment : Introduction to LEX Tool, Metadata and Patterns
*/

#include<stdio.h>
%}

%%

"sec-B"     { printf("Found sec-B\n"); }

.|\n        { }

%%

int main()
{
    printf("Enter a Statement:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
