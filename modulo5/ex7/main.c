#include <stdio.h>
#include "struct.h"
#include "insere_dados.h"

int main() {
	
	s2 var;
	s2 * ptr = &var;
	short vw[3];
	int vj = 3;
	char vc[3];
	int i;
	vw[0]=2;
	vw[1]=4;
	vw[2]=6;
	vc[0]='a';
	vc[1]='b';
	vc[2]='c';
	insere_dados(ptr, vw, vj, vc); 
	
	printf("W:\n");
	for(i=0;i<3;i++){
		printf("%hi\n", ptr->w[i]);
	}
	printf("J: %d\n",ptr->j);
		
	printf("C:\n");
	for(i=0;i<3;i++){
		printf("%c\n", ptr->c[i]);
	}
	
	return 0;
}
