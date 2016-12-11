#include <stdlib.h>
#include <stdio.h>


void copiarString(char * ptr, char * str, int tamanho);

char * create_str(char str[80]){

	char* novoPtr;
	int i = 0;
	
	while(str[i] != 0){									//contador do numero de elementos da string
		i++;
	}
	
	novoPtr = (char *) calloc( i+1, sizeof(char));		//reserva um pedaço da memoria com o tamanho do char
		if(novoPtr == NULL){
			return NULL;
		}				
	
	copiarString(novoPtr, str, i);						//executa a copia da string
	
	return novoPtr;
}


void copiarString(char * ptr, char * str, int tamanho){
	int j;
	
	for (j = 0; j < tamanho; j++){
		*ptr = str[j];									//faz a copia da string char a char
		ptr++;
	}
}
