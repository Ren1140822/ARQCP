#include <stdio.h>


void changes( int * ptr){

	int numero = *ptr; // atribui se a numero o numero apontado por ptr
	numero = numero >> 8 & 0x0000000f; //shift a direita 8 bits , atribui se a numero o valor dos 4 bits menos significativos do segundo byte menos significativo apontado por ptr atravez de uma mascara logica
	if( numero > 7 ){ 
		*ptr = *ptr ^ 0x00000f00; // caso numero seja maior que 7 , usa se um xor no valor apontado de modo a trocar os bits necessarios 
	}
	
}
