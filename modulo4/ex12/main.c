#include <stdio.h>
#include "activaC.h"
#include "activaS.h"

int main(){

	int v;
	printf("Indique um número: ");
	scanf("%d", &v);
	int * vec = &v;
	
	int pos;
	printf("indique posição: ");
	scanf("%d", &pos);
	
	int bitEmC = activa_bitEmC(vec, pos);
	int bitEmS = activa_bitEmS(vec, pos);
	
	if(bitEmC==0 && bitEmS==0){
		printf("Bit na posição %d já estava a 1\n", pos);
	}else{
		printf("Bit na posição %d foi alterado\n", pos);
	}
	return 0;
	
}
