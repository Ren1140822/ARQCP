#include <stdio.h>
#include <stdlib.h>
#include "create_str.h"

int main(void){
	char str[80] = "Modulo final de arqcp";						//inicialização da string
	
	
	char *ptr = create_str(str);		
		
	if(ptr != NULL){
		printf("A copia da string é :%s\n", ptr);				//prints result
	}else{
		printf("ERROR!\nNão foi possivel copiar a string\n");
	}
	free(ptr); 													//free para desalocar a memoria ...
																//...anteriormente alocada ao calloc usado
	return 0;
}
