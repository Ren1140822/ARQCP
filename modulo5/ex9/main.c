#include <stdio.h>
#include <stdlib.h>
#include "criar_matriz.h"
int main(){
	int y,k,i,j;
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
   printf("Endereço da matriz:%x",(unsigned int)matriz);
   printf("\n"); 
   free(matriz); //liberta memoria alocada pelo calloc
   return 0;
}

