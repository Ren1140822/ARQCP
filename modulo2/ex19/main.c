#include <stdio.h>
#include "asm.h"

int res=0;
short current=10,desired=3;
int main(void)
{
	res=getSecondsNeeded();
	printf("%d seconds are needed to perform the operation.\n",res);
}

