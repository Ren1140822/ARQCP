#include <stdio.h>
#include "asm.h"

int op1=2147483648,op2=2147483648;
long long int res=0;
int main(void)
{
	res = sum2ints2();
	
	if(res==0)
	{
		printf("Carry flag was activated\n");
		return 0;
	}
	printf("Carry flag was NOT activated\n");
		return 0;
}
