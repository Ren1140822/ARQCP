#include <stdio.h>
#include "asm.h"


int main(void)
{
	int res=0;
	int a=6,b=7,c=5;
	res=greater(a,b,c);
	printf("Greater number is %d.\n",res);
}

