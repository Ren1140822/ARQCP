#include <stdio.h>
#include "sum_n.h"

int main()
{
	int n;
	
	printf("Quer o somatório até que número?\n");
	scanf("%d", &n);
	
	int soma = sum_n(n);
	
	printf("O somatório dos números é %d\n", soma);
	
	return(0);
}
