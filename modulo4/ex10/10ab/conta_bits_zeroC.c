int conta_bits_zeroC(int x){

int cont = 0;
int final = 0;

while (x > 0){
	
	 cont += (x & 1); //Acrescenta o valor do último bit de x ao contador (ou 0 ou 1)
     x = x>>1;
	 final = (32-cont);//subtrai o numero de bits do contador a 32
}    
return final;

}
