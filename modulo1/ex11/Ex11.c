#include <stdio.h>

int palindrome(char *string)
{
	int string_array_index=0,string_size=0,cycle=0;
	 while(cycle==0)
	 {
		 if(string[string_array_index]!='\0')
		 {
			 string_size++;
		 }
		 else{
			 cycle=1;
			 //ends current cycle so i know how many valid chars exist
		 }
		 string_array_index++;
	 }
	int right_index = string_size-1;
	//only going to the middle of the string the other index covers the other side
	for (int i = 0; i < string_size/2; i++)
	{
		
		if(string[i]!=string[right_index])
		{
			return 0;
		}
		right_index--;
	}
	return 1;
		
	
	
}

