/*
   Title = String Reverse using recursion
   Name = Sachin Vaze
   Date = September 16, 2019
   Description - 
   i) Input = A string
   ii) Output = Print the reversed string without storing in array using recursion
 */
#include <stdio.h>
#include <stdio_ext.h>

//Function prototype
void strrev(char* s, int size);
size_t my_strlen(const char* s);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				char str[80];
				printf("Enter the string: ");
				scanf("%[^\n]", str);

		        int size = my_strlen(str);
				//Call the function
				strrev(str, size);
				printf("The reversed string is: %s\n\n", str);
				printf("Do you want to continue ? (y / n): ");
				scanf("\n%c", &choice);
				__fpurge(stdin);
		}
		while (choice == 'y');
		return 0;
}

void strrev(char* s, int size)
{
		static int i = 0;
		if (i < (size) / 2)
		{
				//Using XOR swapping technique 
				s[i] ^= s[size - 1 - i];
				s[size - 1 - i] ^= s[i];
				s[i] = s[size - 1 - i] ^ s[i];
				i++;
				return strrev(s, size);
		}
		else
		{
				i = 0;
				return;
		}
}

size_t my_strlen(const char* s)
{
		int count = 0;
		while (*s++ != '\0')
		{
				count++;
		}
		return count;
}

