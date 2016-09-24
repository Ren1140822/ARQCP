#include <stdio.h>
#include "f.h"
#include "f2.h"
#include "f3.h"
#include "f4.h"
int res=0,resf3=0;
long long int resf2=0,resf4=0;
int i=5,j=7;
int main(void)
{
	
	//can only check one at a time, they all manipulate the same variables
	//so they alter the results
	
	
	//res=f();
	//printf("Result from f is %d.\n",res);
	//resf2= f2();
	//printf("Result from f2 is %lld.\n",resf2);
	//resf3=f3();
	//printf("Result from f3 is %d.\n",resf3);
	resf4= f4();
	printf("Result from f4 is %lld.\n",resf4);
}


