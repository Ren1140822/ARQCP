#include <stdio.h>
#include "find_string_size.h"

char * find_word(char *str, char* word, char *initial_addr)
{
	int string_size = find_string_size(initial_addr);
	int word_size = find_string_size(word);
	int boolean=0,search_index=0;
	char *ptr;
	//first string has to be bigger that the word we're searching
	if(string_size>word_size)
	{		
		//printf("%d, %d",string_size,word_size);
		for (int i = 0; i < word_size ; i++)
		{
			//we dont want to check over our word size, unmapped memory
			if(i<word_size)
			{			
				for (int j = search_index; j< string_size; j++)
				{		
					printf("%c == %c\n",*(word+i),*(initial_addr+j));				
					//checks upper and lowecase scenarios
					if(*(word+i)==*(initial_addr+j)||*(word+i)==*(initial_addr+j)+32||*(word+i)+32==*(initial_addr+j))
					{		
						//just a little output				
						//printf("%c\n",*(word+i));						
						if(boolean ==0){
						//saves the address in which it was found
						 ptr=(initial_addr+j);
						 boolean=1;	
						}	
						//printf("%c == %d\n",*(word+i),j);
						
						search_index=j+1;
						//printf("%d\n", search_index);
						break;
					}
					else{
						//if it found one match then it failed to find the rest of the word
						if(boolean==1)
						{
							return NULL;
							
						}						
					}					
				}	
				if(boolean==0)
				{
					return NULL;
							
				}											
			}						
		}									
	}
	if(boolean==1)
	{
		printf("\n");
		return ptr;
	}
	return NULL;
}
