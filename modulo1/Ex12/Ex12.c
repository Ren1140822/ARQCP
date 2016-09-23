#include <stdio.h>


void capitalize_string(char *string)
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
	 //now we got the string size
	 for (int i = 0; i < string_size; i++)
	 {
		 if(i==0)
		 //the first letter has to always become uppercase
		 {
			 *(string+i)=*(string+i)-32;
		 }
		 if(*(string+i)==' ')
		 {
			 //if space is found,  next letter becomes upper
			 *(string+i+1)= *(string+i+1)-32;
		 }
	 }
	 
	
}
