%{
#include <stdio.h>
#include <stdlib.h>
//pranav-24070521084
void yyerror(const char *s);
int yylex();
%}

%token NUMBER

%%

expr:
      NUMBER
      {
          $$ = $1;
      }

    | expr expr '+'
      {
          $$ = $1 + $2;
      }

    | expr expr '*'
      {
          $$ = $1 * $2;
      }
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid Postfix Expression\n");
}

int main()
{
    printf("Enter postfix expression: ");

    if (yyparse() == 0)
        printf("Valid Postfix Expression\n");

    return 0;
}

