#include <stdio.h>

#include "change_address.h"


int main (void)
{
	Student p;
	Student * ptr;
	ptr = &p;
	save_data(ptr,25,1140822,"Renato","Rua 1");
	
	printf("Old address: %s.\n",(*ptr).address);
	change_address(ptr,"Rua 2");
	printf("New address: %s.\n",(*ptr).address);
	return 0;
}
