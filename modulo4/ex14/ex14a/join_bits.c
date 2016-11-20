#include <stdio.h>

int join_bits(int a, int b, int pos){

	int final;
	
	if(pos < 32){

		b = b >> (pos + 1); //move os bits b , para a direita , o numero de vezes descrito em pos
		b = b << (pos + 1); //move os bits b para a posiçao original (o numero de vezes descrito em pos) de modo a que os novos bits a direita fiquem a zero
		a = a << (31 - pos);//move os bits a , para a esquerda , o numero de vezes descrito em pos
		a = a >> (31 - pos);//move os bits a para a posiçao original (o numero de vezes descrito em pos) de modo a que os novos bits a direita fiquem a zero
		final = b + a;		//somatorio pedido no enunciado

	}

return final;

}
