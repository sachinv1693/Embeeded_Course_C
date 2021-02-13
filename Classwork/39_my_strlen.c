#include <stdio.h>
#include <string.h>
//Function prototype
size_t my_strlen(const char *s);

int main()
{
		char str[80];
		printf("Enter the string: ");
		scanf("%[^\n]", str);
		//Using std function
		printf("---String length using standard function---\n");
		printf("String length is: %zu\n\n", strlen(str));
		//Using custom function
		printf("---String length using custom function---\n");
		printf("String length is: %zu\n\n", my_strlen(str));

		return 0;
}

size_t my_strlen(const char *s)//const char s[]
{
		int count = 0;
		while(*s++ != '\0')
		{
				count++;
		}
		return count;
}

