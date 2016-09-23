#include <stdio.h>

int main(void)
{
	char string[10] ="HELLoWOR\0";
	char word[7] = "LLow\0";
	
	char *ptr;
	ptr = find_word(string,word,string);
	if(ptr==NULL)
	{
		
		printf("No matches found");
	}
	else{
		printf("Match found\n");
	}
	return 0;
}

