#include <stdio.h>

int main()
{
		//Input a character
		char ch;
		printf("Enter a character: ");
		//It has to be scaned using operator %c
		scanf("%c", &ch);

		//We are not allowed to use any logical operators like && or ||
		//We are allowed to implement this using switch-case statement only
		//let's use the ... to get range of switch-case to achieve this


		//From '\0' to '/' (Special characters)
		switch (ch)
		{
				//From '0' to '9' (Digits)
				case '0'...'9': printf("%c is a digit\n", ch);
								break;
								//From 'A' to 'Z' (upper case)
				case 'A'...'Z': printf("%c is upper case character\n", ch);
								break;
								//From 'a' to 'z' (lower case)
				case 'a'...'z': printf("%c is lower case character\n", ch);
								break;
								//Special Characters)
				default: printf("%c is a special character\n", ch);
		}

		return 0;
}

