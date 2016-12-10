#include <stdio.h>
#include <stdlib.h>
#include "search_matrix.h"

int main(){
	
	//matriz para procurar número
	int a[4][3] = {{4,5,7}, {2,3,5}, {2,4,6}, {3,5,7}};
	//inicializar apontador e alocar memória
	int **app = (int **) malloc(4 * sizeof(int*));
	int i;
	for(i = 0; i < 4; i++){
		app[i] = (int *) malloc(3 * sizeof(int));
		app[i] = a[i]; //armazenar matriz no apontador
	}
	
	//ler numero para procurar na matriz
	int numero;
	printf("Introduza número a procurar: ");
	scanf("%d", &numero);
	
	//receber inteiro retornado
	int res = search_matrix(app, numero, 4, 3);
	
	//output solicitado
	if(res == 1){
		printf("Número está na matriz\n");
	}else{
		printf("Número não está na matriz\n");
	}
	
	return 0;
	
}
