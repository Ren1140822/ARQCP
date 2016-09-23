#include <stdio.h>
#include "Ex12.h"
int main(void)
{
	char string[40]="hello world this is a test of strength\0";
	capitalize_string(string);
	for (int i = 0; i <40 ; i++)
	{
		printf("%c",string[i]);
	}
	return 0;
	
}

