/*Program to count the number of consonants,vowels and blanks*/
%{
        #include<stdio.h>
        int vowels=0;
        int consonants=0;
        int blanks=0;
%}
%%

[aeiouAEIOU] {vowels++;}
[a-zA-Z]     {consonants++;}
[ ]          {blanks++;}

%%
int yywrap(){
return 1;
}
main(){
 printf("Enter the input string:\n");
 yylex();
 printf("The number of vowels=%d\n",vowels);
 printf("The number of consonants=%d\n",consonants);
 printf("The number of blanks=%d\n",blanks);
}
 
