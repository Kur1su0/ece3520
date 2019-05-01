%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
int yylex (void);
int yyerror (char *s);
%}


%token A
%token B
%token C
%token D
%token E

%% /* grammar*/
string: as bs cs ds es {if ($1==$3) return(0);else return(-1) ;}
;
string: es ds cs bs as {if ($3==$4) return(0);else return(-1) ;}
;
as: A as {$$=1+$2;}
;
as: A {$$=1;}
;
bs: B bs {$$=1+$2;}
;
bs: B {$$=1;}
;


cs: C cs {$$=1+$2;}
;
cs: C {$$=1;}
;

ds: D ds {$$=1+$2;}
;
ds: D {$$=1;}
;

es: E es {$$=1+$2;}
;
es: E {$$=1;}
;

