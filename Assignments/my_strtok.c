/*
   Title = Implement custom strtok function
   Name = Sachin Vaze
   Date = September 20, 2019
   Description - 
   i) Input = 2 strings - A normal string and delimiter string
   ii) Output = Implementing own strtok function
 */

#include <stdio.h>
#include <stdio_ext.h>//for using __fpurge()
#include <string.h>//For using standard string function

//Function prototype
char* my_strtok(char* str, const char* delim);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//char arrays to store the strings
				char str1[70], str1_cpy[70], str2[30];//str1 is general string and str2 is delimiter, str1_cpy stores the copy of str1 since it gets modified
				//Input str1
				printf("\nEnter string 1: ");
				scanf("%[^\n]", str1);
				//Clear input buffer
				__fpurge(stdin);
				//Input str2
				printf("Enter string 2(delimiter): ");
				scanf("%[^\n]", str2);
				//Clear input buffer
				__fpurge(stdin);
				strcpy(str1_cpy, str1);//store copy of str1 for custom function
				//First call to function
				char* token = strtok(str1, str2);
				char* my_token = my_strtok(str1_cpy, str2);
				//Standard string function strtok() output
				printf("\n----------Extracting substring using standard function----------\n");
				while (token != NULL && *token != '\0')
				{
						printf("TOKEN = %s\n", token);
						token = strtok(NULL, str2);
				}
				//Custom function my_strtok() output
				printf("\n----------Extracting substring using custom function------------\n");
				while (my_token != NULL && *my_token != '\0')
				{
						printf("MY_TOKEN = %s\n", my_token);
						my_token = my_strtok(NULL, str2);
				}
				printf("\nDo you want to continue? (y / n): ");
				scanf("\n%c", &choice);
				__fpurge(stdin);//Clear the input buffer
		}
		while (choice == 'y');
		return 0;
}

char* my_strtok(char* str, const char* delim)
{
		//We need to store the pointer to next token which further gets updated
		static char *s = NULL, *s_begin = NULL;
		//To return last token, let's consider a flag variable last_str
		static char last_str;
		if (str != NULL)//In first call, we pass a non-NULL address for str
		{
				//Set 's' pointing to 'str' address and set last_str flag as 1
				s = str;
				last_str = 1;
		}
		s_begin = s;//s_begin stores the beginning address of each token
		int i = 0, next_tok = 0;//'i' is the iterator & 'next_tok' is flag to notify the presence of non-delimiter byte followed delimiter byte
		while (s[i] != '\0')//Iterate till the end of the str
		{
				int j = 0;//inner iterator
				int match = 0;//Flag to find match with one of the delimiters
				while (delim[j] != '\0')//Iterate till the end of delim 
				{
						//Check match with each delimiter & adjust the flags
						if (s[i] == delim[j])
						{
								s[i] = '\0';//Make the matching character '\0'
								match = 1;//match flag changes to 1
								next_tok = 1;//next_tok flag changes to 1
								break;//break the loop as soon as finding match
						}
						j++;//Increment j
				}
				if (match == 0 && next_tok == 1)//Finding next non-delim byte
				{
		                s = s + i;//Point to next token
						break;
				}
				i++;//Increment i
		}
		//if 's' remains unchanged after iterating then this is the last token
		if (s_begin == s && last_str)//last_str flag should be 1
		{
				last_str = 0;//Set this flag to 0 to avoid repeatation
				return s_begin;//Send back the beginning address of last token
		}
		//If new token address is found, return the string's beginning address else there is no matching delimiter. So 's' is pointing to '\0'. So return NULL
		return (next_tok) ? s_begin : NULL;
}	

