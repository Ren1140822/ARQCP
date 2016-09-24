#include <stdio.h>
#include "sum.h"
#include "sub.h"
#include "mul.h"
#include "sub.h"

int res=0,op1=48,op2=231;

int main(void)
{
	res=sum();
	printf("Result is %d after sum.\n",res);
	res=sub();
	printf("Result is %d after sub.\n",res);
	res=mul();
	printf("Result is %d after multiplication.\n",res);
	res=div();
	printf("Result is %d after division.\n",res);
	res=modulus();
	printf("Result is %d after modulus.\n",res);
}

