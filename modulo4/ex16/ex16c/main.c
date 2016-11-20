#include <stdio.h>
#include "changes.h"
#include "changes_vec.h"

int main(void){

	int vec [] = { 345678, 54234, 98765, 765443};

	int * ptrvec;
	int valor;
	valor = 4;
	ptrvec = vec;

	printf("O vetor original é: { %d, %d, %d, %d }\n", *ptrvec, *(ptrvec+1), *(ptrvec+2), *(ptrvec+3));

	changes_vec(ptrvec, valor);
	printf("E sofreu as seguintes alteraçoes , assumindo os valores: { %d, %d, %d, %d }\n", *ptrvec, *(ptrvec+1), *(ptrvec+2), *(ptrvec+3));
	
return 0;

}
