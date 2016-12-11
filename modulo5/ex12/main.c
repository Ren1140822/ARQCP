#include <stdio.h>
#include <stdlib.h>
#include "sum_matrixes.h"

void imprimir_matriz(int ** matriz, int y, int k);

int main(void){
	
	//inicialização de variaveis
	int y=4;
	int k = 4;		
	int cont = 0;
	int i;
	int j;
	
	//criar matrizes
	int **a = criar_matriz(y, k);		
	int **b = criar_matriz(y, k);
	
	//preenchar as matrizes
	for(i = 0; i < y; i++){				
		for(j = 0; j < k; j++){
			*(*(a+i)+j) = cont;			 //para a primeira matriz preencher por ordem crescente
			*(*(b+i)+j) = 1;		     //para a segunda matriz preencher tudo a 1
			cont++;
		}
	}
	
	//impressao das matrizes iniciais
	printf("\nPrimeira Matriz\n");
	imprimir_matriz(a, y, k);
	printf("\nSegunda Matriz\n");
	imprimir_matriz(b, y, k);
	
	int **matriz = sum_matrixes(a, b, y, k); 		
	
	//impressao da matriz soma
	printf("\nMatriz Soma\n");
	imprimir_matriz(matriz, y, k); 			
	
	//free para desalocar a memoria anteriormente alocada ao calloc usado
	free(a);
	free(b);
	free(matriz);
	
	return 0;
}


//metodo de impressao de matrizes
void imprimir_matriz(int ** matriz, int y, int k){
	int i, j;
	for(i = 0; i < y; i++){				
		for(j = 0; j < k; j++){
			printf("%d, ", *(*(matriz+i)+j));
		}
		printf("\n");
	}
}
