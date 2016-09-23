#include <stdio.h>
#include "populate_array.h"
#include "set_verifier.h"




int main(void)
{
	int vec[100];
	populate_array(vec,100);
	int set_number=0;
	set_verifier(vec,100,&set_number);
	printf("Found %d sets that satisfy the condition.\n",set_number);
	return 0;
}

