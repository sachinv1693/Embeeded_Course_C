#include <stdio.h>
#include <string.h>

//Function prototype
void reverse(char* s2, const char *s1);

int main()
{
		char str1[100];
		printf("Enter the string: ");
		scanf("%[^\n]", str1);
		char str2[strlen(str1) + 1];
		//Call the function
		reverse(str2, str1);
		printf("Reversed string is: %s\n\n", str2);
		return 0;
}

void reverse(char *s2, const char* s1)
{
		//A pointer pointing to the last character of the string
		const char* ptr = s1 + strlen(s1) - 1;
		//While pointer comes to first position of the source array, copy its contents to destination array
		int i = 0;
		while (ptr != s1)
		{
				s2[i++] = *ptr--;
		}
		s2[i++] = *ptr;
		s2[i] = '\0';
}

