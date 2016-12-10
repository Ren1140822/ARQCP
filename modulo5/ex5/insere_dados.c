#include "struct.h"
#include <string.h>
#include "insere_notas.h"

void inserir_dados(Aluno *p, int numero, char *nome, char *morada, int idade) {
	p->numero = numero;
	strcpy(p->nome, nome);
	strcpy(p->morada, morada);
	p->idade = idade;
}
