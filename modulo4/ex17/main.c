#include <stdio.h>
#include "add_byte.h"
#include "imprimir_vec.h"
#include "add_bytes.h"

int main(){
	printf("test C\n");
	int vec1[] = {5, 0x0FFFFFFF, 0, -1, 0xF0000000, 0x00FFFFFF};
	int vec2[vec1[0]];
	add_byte(0xFF, vec1, vec2);
	imprimir_vec(vec2, vec1[0]);
	
	
	printf("test Assembly\n");
	add_bytes(0xFF, vec1, vec2);
	imprimir_vec(vec2, vec1[0]);
	
	return 0;
}
