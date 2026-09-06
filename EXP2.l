%{
#include <stdio.h>

int comments = 0;
int keywords = 0;
int identifiers = 0;
int words = 0;
int lines = 0;
int spaces = 0;
%}

%%
"/*"([^*]|\*+[^*/])*\*+"/"  { comments++; }
"//".*                       { comments++; }
[ \t]+                       { spaces += yyleng; }
\n                           { lines++; }
"int"|"char"|"float"|"double"|"if"|"else"|"while"|"for"|"return" { keywords++; }
[a-zA-Z_][a-zA-Z0-9_]*       { identifiers++; words++; }
[0-9]+                       { words++; }
.                            { }
%%

int main()
{
    yylex();

    printf("Name: Pranav Chitrive    PRN: 24070521084\n");
    printf("Comments: %d\n", comments);
    printf("Keywords: %d\n", keywords);
    printf("Identifiers: %d\n", identifiers);
    printf("Words: %d\n", words);
    printf("Lines: %d\n", lines);
    printf("Spaces: %d\n", spaces);

    return 0;
}

int yywrap()
{
    return 1;
}
