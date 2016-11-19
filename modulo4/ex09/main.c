#include <stdio.h>
#include "asm.h"


int main(void)
{
	int a=2,c=3,b2=4;
	int *b = &b2;
	int res=0;
	res=calc(a,b,c);
	printf("result is %d.\n",res);
	
}






