#include <stdlib.h>
#include <stdio.h>



int** criar_matriz(int y, int k);

//somar matrizes
int ** sum_matrixes(int **a, int **b, int y, int k){

	int **matriz = criar_matriz(y, k);
	int i;
	int j;
	
	for(i = 0; i < y; i++){
		for(j = 0; j < k; j++){
			*(*(matriz+i)+j) = (*(*(a+i)+j)) + (*(*(b+i)+j));
		}
	}
	
	return matriz;	
}

//criar matrizes
int ** criar_matriz(int y, int k){
	
	int **a = ( int **) calloc(y, sizeof(int *));
	int j;
	
	if(a == NULL){
		printf("Nao foi possivel reservar a memoria\n");
		exit(1);
	}
	
	
	for(j = 0; j < y; j++){
		*(a+j) = (int*) calloc(k,sizeof(int));
		
		if(a[j] == NULL){
			printf("Nao foi possivel reservar a memoria\n");
			exit(1);
		}
		
	}
	
	return a;
}
