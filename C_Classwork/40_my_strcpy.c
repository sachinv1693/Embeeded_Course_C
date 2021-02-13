#include <stdio.h>
#include <string.h>

//Function prototype
char* my_strcpy(char *dest, const char *src);

int main()
{
		char src[20];
		char* dest_ptr;
		char dest3[20], dest4[20];
		printf("Enter the string to be copied: ");
		scanf("%[^\n]", src);
		//Using std function
		printf("\n---Copied string using standard function---\n");
		dest_ptr = strcpy(dest3, src);
		printf("Copied string is: %s\n\n", dest_ptr);
		printf("---Copied string using custom function---\n");
		dest_ptr = my_strcpy(dest4, src);
		printf("Copied string is: %s\n\n", dest_ptr);

		return 0;
}

char* my_strcpy(char *dest, const char *src)
{
		int i = 0;
		while(*(src + i) != '\0')
		{
				*(dest + i) = *(src + i);
				i++;
		}
		*(dest + i) = '\0';
		return dest;
}

