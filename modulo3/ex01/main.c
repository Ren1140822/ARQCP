#include <stdio.h>
#include "asm.h"


char ptr[]  = "ola o meu no me";

int res=0;
int main(void)
{
	
	
	res=space_count();
	printf("Result is %d.\n",res);
}


