#include <stdio.h>
#include "asm.h"

long long int res=0;
int num=4;
int main(void)
{
	res=getFactorial();
	printf("Factorial is %lld.\n",res);
}
