#include <stdio.h>


int find_string_at_index(char *string,char c,int *vec)
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
			 
		 }
		 string_array_index++;
	 }
	 int int_vec_index=0;
	 for (int i = 0; i < string_size; i++)
	 {
		 
		 if(*(string+i)==c)
		 {
			 vec[int_vec_index]=i;
			 int_vec_index++;
			 
		 }
		 
	 }
	 return int_vec_index;
	 
	
}
