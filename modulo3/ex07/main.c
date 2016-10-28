#include <stdio.h>
#include "asm.h"


char vec[] = {' ','b','c','d'};
char *ptr = vec;
int res=0;
int main(void)
{
	
	
	res=encrypt();
	int i=0;
	for (i = 0; i < 4; i++)
	{
			printf("%c\n",vec[i]);
	}
	printf("%d\n",res);

	
	
}



