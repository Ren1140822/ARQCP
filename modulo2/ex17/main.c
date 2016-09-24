#include <stdio.h>
#include "asm.h"

unsigned int res=0, num=10;
int main(void)
{
	res=getFibonacci();
	printf("Fibonacci term for %d is %d.\n",num,res);
}

