%{
// Se puede incluir código en C aquí si es necesario.
%}

%%
"int"          { printf("Palabra clave: int\n"); }
"String"          { printf("Palabra clave: String\n"); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identificador: %s\n", yytext); }
[0-9]+         { printf("Número: %s\n", yytext); }
[\+\-\*/]      { printf("Operador: %s\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}
