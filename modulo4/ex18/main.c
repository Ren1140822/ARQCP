#include <stdio.h>
#include "somaC.h"
#include "somaS.h"

int main(){

	char v[5] = {'2', 'D', '1', '7', '0'};
	char *vec = v;
	int x = 45650;
	
	printf("Vector de bytes:\n");
	int i = 0;
	while(*(vec+i) != 0) {
		printf("%d ", *(vec+i));
		i++;
	}
	printf("\n");
	
	printf("Somatório de múltiplos de %d: %d em C e %d em S\n", (x>>8), soma_multiplos_xC(vec, x), soma_multiplos_xS(vec, x));
	
	return 0;
	
}
