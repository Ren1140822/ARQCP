#include <stdio.h>
#include <stdlib.h>
#include "struct.h"

int * procura_maiores(Aluno *aluno, int minima, int * maiores) {
	int n_elementos = 0;			
	int * ptr= &n_elementos;	
	
	int i;
	for(i = 0; i < 10; i++) {	
		if(aluno -> notas[i] > minima) {	
			maiores[n_elementos] = aluno ->notas[i];	//n elementos é index que aponta pra inicio das notas do aluno
			n_elementos++;					
			maiores = (int *) realloc(maiores, (n_elementos + 1) * sizeof(int)); //aumenta tamanho do array
		}
	}
	
	return ptr;
}
