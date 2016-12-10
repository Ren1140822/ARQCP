#include <stdio.h>
#include <stdlib.h>
#include "struct.h"
#include "procura_maiores.h"
#include "insere_notas.h"
#include "insere_dados.h"

int main() {
	
	Aluno aluno[5];
	Aluno * ptr = aluno;
	int notas[10] = {14, 13, 15, 12, 9, 10, 20 ,19, 8, 7};
	int * maiores_notas= (int *) malloc(sizeof(int));
	int nota_minima=15;
	int * n_elementos;
	int i;
	
	
	inserir_dados(ptr, 1, "Renato", "Rua 1", 25);
	ptr++;
	inserir_dados(ptr, 2, "Tiago", "Rua 2", 16);
	ptr++;
	inserir_dados(ptr, 3, "Miguel", "Rua 3", 17);
	ptr++;
	inserir_dados(ptr, 4, "Carlos", "Rua 4", 22);
	ptr++;
	inserir_dados(ptr, 5, "Freitas", "Rua 5", 28);
	
	
	insere_notas(ptr, notas); 
	
	
	for(i = 0; i < 10; i++) {
		printf("Notas %d: %d\n", i + 1, aluno[4].notas[i]);
	}
	
	n_elementos = procura_maiores(ptr, nota_minima, maiores_notas);
	int elem = *n_elementos;
	
	printf("\nNotas acima da pedida do Freitas:");
	
	for(i = 0; i < elem; i++) {
		printf("%d\n", *(maiores_notas + i));
	}
	
	
	return 0;
}
