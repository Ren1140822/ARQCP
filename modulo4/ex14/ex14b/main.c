#include <stdio.h>
#include "join_bits.h"

int main(void){

	int a, b, pos, final;

	printf("indique o valor de a: ");
	scanf("%d", &a);

	printf("indique o valor de b: ");
	scanf("%d", &b);

	printf("Indique a Posição desejada: ");
	scanf("%d", &pos);

	final = join_bits(a , b, pos);
	printf("Numero final obtido: %d\n", final);

return 0;

}
