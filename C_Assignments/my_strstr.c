/*
   Title = Implement custom strstr fun
   Name = Sachin Vaze
   Date = September 20, 2019
   Description - 
   i) Input = A haystack and a needle
   ii) Output = Print substring starting from given needle
 */

#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>

//Function prototype
char* my_strstr(const char* haystack, const char* needle);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//char arrays to store haystack and needle strings
				char haystack[80], needle[80];
				//Input haystack
				printf("Enter Haystack: ");
				scanf("%[^\n]", haystack);
				//Clear input buffer
				__fpurge(stdin);
				//Input needle
				printf("Enter Needle: ");
				scanf("%[^\n]", needle);
				//Standard string function strstr() output
				printf("\n----------Extracting substring using standard function----------\n");
				char* std_substr = strstr(haystack, needle);
				(std_substr != NULL) ? printf("The substring starting from needle is: %s\n\n", std_substr) : printf("Needle does not exist!\n\n") ;
				//Custom function my_strstr() output
				printf("----------Extracting substring using custom function----------\n");
				char* substr = my_strstr(haystack, needle);
				(substr != NULL) ? printf("The substring starting from needle is: %s\n\n", substr) : printf("Needle does not exist!\n\n") ;
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
				__fpurge(stdin);
		}
		while (choice == 'y');
		return 0;
}

char* my_strstr(const char* haystack, const char* needle)
{
		//return value of substring's address, initialize to NULL
		char* sub = NULL;
		//iterator scanning each string element
		int i = 0;
		//haystack has to be scanned till we get to the end of it
		while (haystack[i] != '\0')
		{
				//Upon finding the matching 1st character of the needle with the haystack's 'i'th character
				if (haystack[i] == *needle)
				{
						//Compare each needle character with haystack value
						int j = 0;
						while (needle[j] != '\0')
						{
								if (haystack[i + j] != needle[j])
								{
										//If not equal, continue in the loop
										break;
								}
								j++;
						}
						//If entire needle value equals the part of haystack, return address of that ith character of haystack
						if (needle[j] == '\0')
						{
								//Typecast hastack's address to (char*) to avoid warning - "Target output discards const keyword"
								sub = (char*) (haystack + i);
								break;
						}
				}
				i++;
		}
		return sub;
}

