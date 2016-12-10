#include <stdio.h>
#include <stdlib.h>
#include "save_data.h"

int main(){
	
	//apontador para instância da estrutura s1
	s1 *sp;
	sp = (s1*) malloc(sizeof(s1));
	
	//inserir dados na estrutura
	save_data(sp, 12, 'L', 10, 'M');
	
	//imprimir resultado esperado e resultado obtido
	printf("Informação enviada: \n");
	printf("Vi: %d\nVc: %c\nVj: %d\nVd: %c\n", 12,'L', 10, 'M');
	printf("\n");
	printf("Informação armazenada na estrutura: \n");
	printf("Vi: %d\nVc: %c\nVj: %d\nVd: %c", sp->i, sp->c, sp->j, sp->d);
	printf("\n");
	
	return 0;
	
}
