#include <stdio.h>

int main()
{
	//Input a character
	char ch;
	printf("Enter a character: ");
	//It has to be scaned using operator %c
	scanf("%c", &ch);

	//We are not allowed to use any logical operators like && or ||
	//Following the ASCII table sequentially to keep the flow of if statements
	//Taking help from man page of ASCII table (man ascii)


	//From '\0' to '/' (Special characters)
	if (ch >= '\0')
	{
		if (ch <= '/')
			printf("%c is a special character\n", ch);
	}
	//From '0' to '9' (Digits)
	if (ch >= '0')
	{
		if (ch <= '9')
			printf("%c is a digit\n", ch);
	}
	//From ':' to '@' (Special characters)
	if (ch >= ':')
	{
		if (ch <= '@')
			printf("%c is a special character\n", ch);
	}
	//From 'A' to 'Z' (upper case)
	if (ch >= 'A')
	{
		if(ch <= 'Z')
			printf("%c is upper case character\n", ch);
	}
	//From '[' to '`' (Special characters)
	if (ch >= '[')
	{
		if (ch <= '`')
			printf("%c is a special character\n", ch);
	}
	//From 'a' to 'z' (lower case)
	if (ch >= 'a')
	{
		if(ch <= 'z')
			printf("%c is lower case character\n", ch);
	}
	//From '{' to '~' (Special Characters)
	if (ch >= '{')
	{
		if(ch <= '~')
			printf("%c is a special character\n", ch);
	}
	return 0;
}

