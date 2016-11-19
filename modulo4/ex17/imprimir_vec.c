#include <stdio.h>

void imprimir_vec(int *vec,int tamanho_vec){
	int i;
	printf("{");
	for(i=0; i<tamanho_vec;i++){
		printf("%X%s", vec[i],i==tamanho_vec-1 ? "":";");
	}
	printf("}\n");
}
