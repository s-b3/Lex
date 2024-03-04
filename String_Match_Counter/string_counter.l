/*Program to count the number of times the name sumedha appears*/
%{
        #include<stdio.h>
        int times=0;
%}
%%

"sumedha" {times++;}
[.] {;}

%%
int yywrap(){
return 1;
}
main(){
 printf("Enter the input string:\n");
 yylex();
 printf("The number of times the name sumedha appears=%d\n",times);
}
 
