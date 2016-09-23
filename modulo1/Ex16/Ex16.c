#include <stdio.h>
#include "find_string_size.h"

char *where_exists(char *str1,char *str2)
{
	int str1_size=find_string_size(str1);
	int str2_size= find_string_size(str2);
	int boolean=0;
	char *ptr;
	if(str2_size>str1_size)
	{
		
		for (int i = 0; i < str2_size; i++)
		{
			if(i<str1_size)
			{
				for (int j = 0; j< str1_size; j++)
				{
					if(*(str1+i)==*(str2+j))
					{
						//we need two cycles, letters may not be in the same index
						//debug :printf("%c == %c",*(str1+i),*(str2+j));
						ptr=(str2+j);
						return ptr; 					
					}
					
				}
				
			
				
			}
		}						
	}	
	return NULL;	
}
