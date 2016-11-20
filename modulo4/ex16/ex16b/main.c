#include <stdio.h>
#include "changes.h"


int main(void){

	int valor;
	int * ptr;

	printf("Indique o numero desejado: ");
	scanf("%d", &valor);

	ptr = &valor;
	changes(ptr);

	printf("O numero resultante é: %d\n", *ptr);

return 0;

}
