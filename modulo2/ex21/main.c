#include <stdio.h>
#include "asm.h"

short res=0;
unsigned int code=103,currentSalary=1200;
int main(void)
{
	res=function();
	printf("Result is %d.\n",res);
}



