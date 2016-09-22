#include <stdio.h>




void change_string_uppercase( char string[], int string_size)
{
	char new_string[string_size] ;
	int new_string_index=0;
	for (int i = 0; i < string_size; i++)
	{
		if(string[i]>64 && string[i]<91)
		{
			new_string[new_string_index] = string[i];
			
			new_string_index++;
		}
		if(string[i]>96 &&string[i]<123)
		{
			new_string[new_string_index] = string[i]-32;
			
			new_string_index++;
		}
		
	}
	for (int i = 0; i < string_size; i++)
	{
		if(new_string[i]>64 && new_string[i]<91)
		{
			printf("%c", new_string[i]);
		}
	}
	
	
}

