#include "abcde.tab.c"
#include "lex.yy.c"
#include "yyerror.c"

int main()
{
 int s;
 printf("\n>>> parsing <<<");
 if (yyparse() ==0) printf("\n SUCC\n\n");
 else printf("\n FAIL...\n\n");
 return(1);

}

