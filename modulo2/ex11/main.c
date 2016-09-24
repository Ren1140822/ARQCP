#include <stdio.h>
#include "asm.h"

int op1=25,op2=5;
long long res=0;
int main(void)
{
	res= isMultiple();
	if(res==0)
	{
		printf("%d is multiple of %d.\n",op1,op2);
		return 0;
	}
	
	printf("%d is NOT multiple of %d.\n",op1,op2);
	return 0;
}
