#include <stdio.h>
#include "asm.h"


int main(void)
{
	int res=0;
	int x = 5;
	res=square(5);
	printf("%d squared is %d.\n",x,res);
}
