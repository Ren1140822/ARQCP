#include <stdio.h>
#include "line.c"





void multiplication_table(int x)
{
	for(int i=1;i<11;i++){
		line(x,i);
	}
	printf("#############\n");
	
}


