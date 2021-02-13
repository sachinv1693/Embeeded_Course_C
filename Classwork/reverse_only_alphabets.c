#include <stdio.h>
#include <ctype.h>
#include <string.h>

//Function prototype
void reverse_only_alphabets(char* s1);

int main()
{
		char str[100];
		printf("Enter the string: ");
		scanf("%[^\n]", str);
		//Call the function
		reverse_only_alphabets(str);
		printf("Result: %s\n\n", str);
		return 0;
}

void reverse_only_alphabets(char* s1)
{
		//A pointer pointing to the first character of the string
		char* ptr1 = s1;
		//A pointer pointing to the last character of the string
		char* ptr2 = s1 + strlen(s1) - 1;
		//Loop through the string till both pointers have the same address
		while (ptr1 != ptr2)
		{
				 if (isalpha(*ptr1) && isalpha(*ptr2))
				 {
						 *ptr1 ^= *ptr2;
						 *ptr2 ^= *ptr1;
						 *ptr1 = *ptr2 ^ *ptr1;
						 ptr1++, ptr2--;
				 }
				 else if(isalpha(*ptr1) && !isalpha(*ptr2))
				 {
						 ptr2--;
				 }
				 else
				 {
						 ptr1++;
				 }
		}
}

