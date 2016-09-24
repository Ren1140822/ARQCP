#include <stdio.h>
#include "asm.h"

int op1=2147483647,op2=1;
long long int res=0;
int main(void)
{
	res= sum2ints();
	printf("%lld - this number wouldnt fit on a 32 bit register or variable.\n",res);
}
