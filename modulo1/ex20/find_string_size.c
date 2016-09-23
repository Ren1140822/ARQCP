#include <stdio.h>


int find_string_size(char *string)
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
			 
			 return string_size;
			 //ends current cycle so i know how many valid chars exist
		 }
		 string_array_index++;
	 }
	 return 0;
}
