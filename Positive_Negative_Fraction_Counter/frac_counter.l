/*Lex program to count the number of positive and negative fractions*/
%{
        #include<stdio.h>
        int positive=0,negative=0;
%}
%%
[+]?[0-9]+[.]*[0-9]* {
                positive++;
 }
[-]?[0-9]+[.]*[0-9]* { negative++;}
%%
int yywrap(){
return 1;
}
 main(){
 yylex();
 printf("No.of positive fractions=%d\n",positive);
printf("No.of negative fractions=%d\n",negative);

}
 
