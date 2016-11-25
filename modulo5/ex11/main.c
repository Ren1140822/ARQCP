#include <stdio.h>
#include <stdlib.h>
#include "criar_matriz.h"
#include "contar_pares.h"
int main(){
	int y,k,i,j,nr_pares;
	int **matriz;
	y=4;
	k=4;	
    matriz=cria_matriz(y,k); 					
	printf("Valores:\n");
     for (i=0;i<y;i++){		 
        for (j=0;j<k;j++){
            printf(" %d ", matriz[i][j]);
        }    
        printf("\n"); 
    }
   nr_pares = conta_pares(matriz,y,k);
   printf("Existe(m) %d numero(s) par(es) na matriz.\n",nr_pares);
   free(matriz); //liberta memoria alocada pelo calloc
   return 0;
}

