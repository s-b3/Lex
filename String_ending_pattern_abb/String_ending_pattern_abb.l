%{
#include<stdio.h>
%}
%%
[ab]*abb        {printf("String ends with pattern abb\n");
                printf("The given string is %s\n",yytext);
                printf("The length is %d\n",yyleng);
                }
.*              {printf("The given string does not end with abb");
                 printf("The given string is %s\n",yytext);
                printf("The length is %d\n",yyleng);
                }
%%
int yywrap(){
return 1;
}
int main()
{
  printf("Enter the string:\n");
  yylex();
}
