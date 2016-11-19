#include <stdio.h>
#include "sub_greater.h"

int main () {
	int num1, num2;
	
	printf("Introduza o primeiro número: ");
	scanf("%d", &num1);
	
	printf("Introduza o segundo número: ");
	scanf("%d", &num2);
	
	int * menor = &num1;
	int soma;
	
	soma = sub_greater(num1, num2, menor);
	
	printf("O menor dos dois números é %d e o resultado da subtraçao é %d\n", * menor, soma);
	
	return (0);
}
