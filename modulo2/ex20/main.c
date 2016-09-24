#include <stdio.h>
#include "asm.h"

short res=0;
int num=-2;
int main(void)
{
	res=function();
	printf("Result is %d.\n",res);
}


