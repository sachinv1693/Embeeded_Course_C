#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function prototype
char* my_strdup(const char *s);

int main()
{
		char src_str[80];
		//Input source string
		printf("Enter the source string: ");
		scanf("%[^\n]", src_str);
		//Duplicating the given string
		printf("\n---Duplicating source string---\n");
		printf("\n-----Using standard function, duplicating into string 1-----\n");
		//Call the standard function
		char* dup_str1 = strdup(src_str);
		if (dup_str1 != NULL)
		{
				printf("The duplicated string is: %s\n", dup_str1);
				free(dup_str1);
		}
		else
		{
				printf("The string cannot be duplicated\n");
		}
		printf("\n-----Using custom function, duplicating into string 2-----\n");
		//Call the custom function
		char* dup_str2 = my_strdup(src_str);
		if (dup_str2 != NULL)
		{
				printf("The duplicated string is: %s\n", dup_str2);
				free(dup_str2);
		}
		else
		{
				printf("The string cannot be duplicated\n");
		}
		return 0;
}

char* my_strdup(const char *s)
{
		//dynamically allocate memory of size of (strlen + NUL character)
		char* p = (char*) malloc((strlen(s) * sizeof(char)) + sizeof(char));
		if (p != NULL)
		{
				p = strcpy(p, s);
		}
		return p;
}

