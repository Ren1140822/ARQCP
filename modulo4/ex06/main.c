#include <stdio.h>
#include "test_equal.h"

int main ()
{
	char string1 [100];
	char string2 [100];
	
	printf("Introduza a primeira frase:\n");
	fgets(string1, 100, stdin); //chars->onde a string lida é guardada,tamanho maximo da string,por onde os carateres sao lidos
	
	printf("Introduza a segunda frase:\n");
	fgets(string2, 100, stdin);
	
	char * a = string1;
	char * b = string2;
	
	int retorno = test_equal(a, b);
	
	if (retorno == 0) {
		printf("As strings não são iguais.\n");
	} else {
		printf("As string são iguais.\n");
	}
	
	return(0);
}
