#include <stdio.h>
#include "asm.h"


long long res=0;
int main(void)
{
	res=getArea();
	printf("Rectangle area is %lld m².\n",res);
}
