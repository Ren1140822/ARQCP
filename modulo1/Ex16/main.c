#include <stdio.h>
#include "Ex16.h"

int main(void)
{
	char string1[12] = "helloworld\0";
	char string2[9] = "asdfeaa\0";
	char *ptr=where_exists(string2,string1);
	printf("Address of first ocurrence: %p\nMatch found in letter: '%c'.\n",ptr,*ptr);
	return 0;
}
