#include <stdio.h>
#include <stdlib.h>
#include "save_grades.h"

int main(){
	
	//criar instância da estrutura Aluno e respetivo apontador
	Aluno a;
	Aluno *ap = &a;
	//criar vetor de notas a inserir
	int notas[10] = {12,19,18,14,20,16,16,17,14,14};
	int *new_grades = NULL;
	//alocação de memória para o vetor de 10 ints
	new_grades = (int*) malloc(10 * sizeof(int));
	new_grades = notas;
	
	//inserir as notas
	save_grades(ap, new_grades);
	
	//imprimir notas inseridas
	int i;
	for(i = 0; i < 10; i++){
		printf("Nota %d: %d\n", (i+1), ap->notas[i]);
	}
	
	return 0;
	
}
