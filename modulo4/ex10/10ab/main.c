#include <stdio.h>
#include "conta_bits_zeroC.h"
#include "conta_bits_zeroS.h"

int main(){
	
	int x;
	
	printf("Insira um número: ");
	scanf("%d", &x);
	
	printf("\n");
	
	int bits_zeroC = conta_bits_zeroC(x);
	int bits_zeroS = conta_bits_zeroS(x);
	
	printf("Número de bits ativos de %d: %d em C e %d em Assembly\n",x,bits_zeroC,bits_zeroS);
	
	printf("\n");

return 0;
}
