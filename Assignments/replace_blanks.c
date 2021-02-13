/*
   Title = Replace Blank spaces with single blank
   Name = Sachin Vaze
   Date = September 27, 2019
   Description -
   i) Input = A string of characters
   ii) Output = Display output string which includes single space in place of one or multiple spaces
 */

#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>

void remove_spaces(char* s);

int main()
{
		char choice, str[80];
		do
		{
				printf("Enter a string with more spaces in between two words: ");
				scanf("%[^\n]", str);
				printf("\n------String with reduced spaces--------\n");
				remove_spaces(str);
				printf("%s\n\n", str);
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
				__fpurge(stdin);

		}
		while (choice == 'y');
		return 0;
}

void remove_spaces(char* s)
{
		int i = 0;
		while (s[i] != '\0' && s[i + 1] != '\0')
		{
				int j = i;
				while (s[j] == ' ' && s[j + 1] == ' ')
				{
						int k = j;
						while (s[k + 1] != '\0')
						{
								s[k] = s[k + 1];
								k++;
						}
						s[k] = '\0';
				}
				i++;
		}
}

