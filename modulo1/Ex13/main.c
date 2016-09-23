#include <stdio.h>
#include "Ex13.h"

int main(void)
{
	char string[13] ={"hello world\0"};
	int vec[13];
	int number_of_finds = find_string_at_index(string,'o',vec);
	for (int i = 0; i <number_of_finds ; i++)
	{
		printf("Letter found in index %d.\n",vec[i]);
	}
	
	return 0;
}
