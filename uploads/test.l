%{
    #include<stdio.h>
%}

%%
[0-9]+ {printf("number");}
[a-zA-z_][a-zA-z0-9_-]* {printf("identifier : %s",yytext);}
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
    
}