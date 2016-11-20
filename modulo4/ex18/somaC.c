int soma_multiplos_xC(char *vec, int x){
	int i = 0; //indice da posição do vetor
	int n = 0; //somatório dos múltiplos de x
	char m = (x >> 8) & 0x0000000f; //deslocamento à direita de 8 bits(1 bytes) e obtém só o valor no 2º byte
	while(*(vec+i) != 0) { //percorre todas as posições do vetor até encontrar o zero(fim do vetor)
		if (*(vec+i) % m == 0) { //byte é múltiplo de x
			n += *(vec+i);
		} 
		i++;
	}
	return n;
}
