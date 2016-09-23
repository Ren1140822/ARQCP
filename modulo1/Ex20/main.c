#include <stdio.h>
#include "Ex20.h"
int main(void)
{
	char string[14]= "tooltoolivei\0";
	char word[8]="tool\0";
	char *address[10];
	find_all_words(string,word,address);		
	
}
