#include <stdio.h>
#include "Ex19.h"
#include "find_string_size.h"


void find_all_words(char *str,char *word,char **addrs)
{
	
	int word_size = 0;
	int row_index=0,cycle=1;
	
	char *ptr;
	ptr=find_word(str,word,&str[0]);
	while(cycle==1)
	{								
		if(ptr!=NULL)
		{						
			addrs[row_index]=ptr;		
			row_index++;		
			ptr=find_word(str,word,ptr+1);								
			
		}
		else
		{
			cycle=0;
			printf("\n%d matches found.\n", row_index);
			
		}
		
	}
	
}

