int activa_bitEmC (int *vec, int pos){
	int num = *vec;
	int res = 1;
	res = res << pos; //desloca bits para a esquerda até chegar à posição desejada
	res = res | num; //executa a instrução OR
	if(res==num){
		return 0; //bit já estava a 1
	}else{
		return 1; //bit foi alterado
	}
}
