%{
#include<stdio.h>
%}
%%
(aa)*(b)(bb)* {printf("the given string starts with even number of a's and ends with odd number of b's");}
.*            {printf("the given string is invalid");}
%%
int yywrap(){
return 1;
}
int main(){
printf("enter the string:\n");
yylex();
}
