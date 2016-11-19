void add_byte(char x, int *vec1, int *vec2){
	int i;
	int aux = x << 24;
	for (i=1;i<=*vec1; i++){
		*vec2 = *(vec1+i) + aux;
		vec2++;
	}
}
