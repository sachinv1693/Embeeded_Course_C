#include <stdio.h>
#include <string.h>

//Function prototype
char *my_strcat(char *dest, const char *src);

int main()
{
		char src_str[50];
		//Input source string
		printf("Enter the source string: ");
		scanf("%[^\n]", src_str);
		getchar();
		//The destination string should be large enough to accomodate both
		//Note that '\0' character of destination string gets overwritten
		char dest_str[50 + strlen(src_str)];
		//Input destination string
		printf("\nEnter the destination string: ");
		scanf("%100[^\n]", dest_str);
		//Copy the destination string into another string for custom experiment
		//Note that '\0' character of destination string gets overwritten
		char dest_cpy_str[50 + strlen(src_str)];
		char* dest2_str = strcpy(dest_cpy_str, dest_str);
		printf("\n---Appending source string to the destination string---\n");
		printf("\n-----Using standard function-----\n");
		//Call the standard function and store into dest1 pointer
		char* dest1_str = strcat(dest_str, src_str);
		printf("The resulting string is: %s\n", dest1_str);//dest_str can also be used here. The dest_str has now been modified by standard function.
		printf("\n-----Using custom function-----\n");
		//Call the custom function and store into dest2 pointer
		dest2_str = my_strcat(dest_cpy_str, src_str);
		printf("The resulting string is: %s\n\n", dest2_str);
		return 0;
}

char *my_strcat(char *dest, const char *src)
{
		//Pointer pointing to '\0' character of destination string
		char* filler = dest + strlen(dest);
		//Starting with overwriting NUL character keep filling the characters of source string
		int i = 0;
		while (src[i] != '\0')
		{
				filler[i] = src[i];
				i++;
		}
		filler[i] = src[i];
		return dest;
}

