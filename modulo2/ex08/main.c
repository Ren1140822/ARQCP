#include <stdio.h>
#include "asm.h"


char varA=0;
short varB=0;
int varC=0,varD=0;
long long int res=0;
int main(void) 
{
	varA=9;
	varB=20;
	varC=30;
	varD=12;
	res=ex8();
	printf("%lld",res);
	return 0;
}
