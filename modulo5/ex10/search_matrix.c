#include <stdio.h>
int search_matrix(int **m, int numero, int y, int k){
	int i;
	int j;
	//dois ciclos para percorrer toda a matriz
	for(i = 0; i < y; i++){
		for(j = 0; j < k; j++){
			if(*(*(m+i)+j) == numero){ //testa se o valor na posição atual da matriz corresponde ao número enviado por parâmetro
				return 1;
			}
		}
	}
	return 0;
}
