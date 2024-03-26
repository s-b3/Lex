%{
        #include<stdio.h>
        int vowels=0;
        int consonants=0;
        int blanks=0;
        FILE *f1,*vf,*cf;
%}
%%

[aeiouAEIOU] {vowels++;fprintf(vf,"%s",yytext);}
[a-zA-Z]     {consonants++;fprintf(cf,"%s",yytext);}
[ ]          {blanks++;}
.            ;

%%
int yywrap(){
return 1;
}
main(){
 f1=fopen("input.txt","r");
 vf=fopen("vowels.txt","w");
 cf=fopen("consonants.txt","w");
 yyin=f1;
 yylex();
 printf("The number of vowels=%d\n",vowels);
 printf("The number of consonants=%d\n",consonants);
 printf("The number of blanks=%d\n",blanks);
}
