#include <stdio.h>
#include "Ex6.h"


int main(void)
{
	int x =4;
	int *ptr;
	ptr = &x;
	power_ref(ptr,3);
	return 0;
	
	
}
