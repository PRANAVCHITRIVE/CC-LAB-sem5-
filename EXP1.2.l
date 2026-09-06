%{
/*
Name : PRANAV CHITRIVE
PRN  : 24070521084
Experiment : Introduction to LEX Tool, Metadata and Patterns
*/


#include<stdio.h>
int count = 0;
%}

%%
"//".* { count++;}
.|\n {}
%%

int main(){
    printf("Enter a C Code: ");
    yylex();
    printf("The Frequency of single line comments is/are : %d\n", count);
    return 0;
}

int yywrap(){
    return 1;
}
