#include <stdio.h>
#include <stdlib.h>
int **cria_matriz(int y, int k){
	int **vetor; 
	//vetor de apontadores
	vetor = (int**) calloc(y,sizeof(int*));
	
	if(vetor == NULL){
		printf("Erro.\n");
		exit(1);
	}
	int i;
	for(i = 0; i < y ; i++){
	
		*(vetor+i) = (int*) calloc(k,sizeof(int));  //calloc inicia logo a memoria a 0
		//para cada apontador, cria espaço para k variaveis
		
		if(vetor[i] == NULL){
			printf("Erro.\n");
			exit(1);
		}
	}
	vetor[1][2]=1;  //meter um valor impar so pra testar contagem
	return vetor;
}
