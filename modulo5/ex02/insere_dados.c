#include "insere_dados.h"
#include <stdlib.h>
#include <string.h>

void insere_dados(Aluno *p, int numero, char *nome, 
char *morada, int idade){
	p->numero = numero; //insere numero do aluno na estrutura
	//insere nome do aluno na estrutura, posição a posição pois é um char pointer
	int i=0;
	while (*(nome+i)!='\0')
	{
		p->nome[i]=*(nome+i);
		i++;
	}
	
	//insere a morada do aluno na estrutura, posição a posição pois é um char pointer
	i=0;
	while (*(morada+i)!='\0')
	{
		p->morada[i]=*(morada+i);
		i++;
	}
	p->idade = idade; //insere a idade do aluno na estrutura

}
