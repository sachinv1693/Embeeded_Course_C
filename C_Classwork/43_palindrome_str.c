#include <stdio.h>
#include <string.h>

//Function prototype
int is_palindrome(const char *s);

int main()
{
		char str[100];
		printf("Enter the string: ");
		scanf("%[^\n]", str);
		//Call the function
		is_palindrome(str) ? printf("The given string is a palindrome\n\n") : printf("The given string is not a palindrome\n\n");
		return 0;
}

int is_palindrome(const char *s)
{
		//2 pointers pointing to first and last character of the string
		const char* front = s;
		const char* rear = s + strlen(s) - 1;
		//While both pointers meet each other, compare characters
		while (front <= rear)
		{
				if(*front++ != *rear--)
				{
						return 0;
				}
		}
		return 1;
}

