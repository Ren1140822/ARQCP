#include <stdio.h>
#include "asm.h"


char ptr1[]  = "bbbbb";
char ptr2[13];
int res=0;
int main(void)
{
	
	
	str_cpy();
	int i =0;
	for (i = 0; i < 5; i++)
	{
		printf("Result is %c.\n",*(ptr2+i));
	}
	
	
}



