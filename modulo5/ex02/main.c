#include <stdio.h>
#include <stdlib.h>
#include "insere_dados.h"

int main(){
	
	//a)
	Aluno *ap;
	Aluno *ap2;
	
	ap2 = (Aluno*) malloc(5 * sizeof(Aluno));//alocação de memória para as 5 instâncias da estrutura Aluno a ser armazenadas no apontador
	ap = ap2; //apontador auxiliar, ao ler a informação para inserir em cada instância da estrutura, será necessário voltar ao início do apontador
	
	//b)
	int numero;
	char nome[80];
	char morada[120];
	int idade;
	int i;
	for(i = 0; i < 5; i++){ //leitura da informação e introdução da mesma na respetiva instância da estrutura
		printf("INFORMAÇÂO PARA O ALUNO %d\n", (i+1));
		printf("Insira o número do aluno: ");
		scanf("%d", &numero);
		printf("Insira o nome do aluno: ");
		scanf("%s", nome);
		printf("Insira a morada do aluno: ");
		scanf("%s", morada);
		printf("Insira a idade do aluno: ");
		scanf("%d", &idade);
		printf("\n");
		insere_dados(ap, numero, nome, morada, idade);
		ap++;
	}
	
	ap=ap2;
	
	//imprimir
	printf("Informação introduzida: \n");
	for(i = 0; i < 5; i++){
		printf("ALUNO %d\n", (i+1));
		printf("Numero: %d\nNome: %s\nMorada: %s\nIdade: %d\n", ap->numero, ap->nome, ap->morada, ap->idade);
		printf("\n");
		ap++;
	}
	
	return 0;
	
}
