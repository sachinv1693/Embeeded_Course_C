/*
   Title = C-type Library
   Name = Sachin Vaze
   Date = August 30, 2019
   Description -
   i) Input = A character and type option
   ii) Output = Print if the given character is in the given category
 */

#include <stdio.h>

//Function prototypes
int is_alpha(char ch);
int is_digit(char ch);
int is_alnum(char ch);
int is_ascii(char ch);
int is_blank(char ch);

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				char ch;
				//Input the character
				printf("\nEnter the character: ");
				scanf("%c", &ch);
				//Use getchar to get the user entered value
				getchar();
				//User choice based on given function options
				int opt;
				printf("\n----Function Options----\
								\n1. is_alpha()\
								\n2. is_digit()\
								\n3. is_alnum()\
								\n4. is_ascii()\
								\n5. is_blank()\n");
				printf("\nEnter your choice: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://is_alpha()
								if (is_alpha(ch))
								{
										//True
										printf("%c is an alphabet\n\n", ch);
								}
								else
								{
										//False
										printf("%c is not an alphabet\n\n", ch);
								}
								break;
						case 2://is_digit()
								if (is_digit(ch))
								{
										//True
										printf("%c is a digit\n\n", ch);
								}
								else
								{
										//False
										printf("%c is not a digit\n\n", ch);
								}
								break;
						case 3://is_alnum()
								if (is_alnum(ch))
								{
										//True
										printf("%c is an alphanumeric character\n\n", ch);
								}
								else
								{
										//False
										printf("%c is not an alphanumeric character\n\n", ch);
								}
								break;
						case 4://is_ascii()
								if (is_ascii(ch))
								{
										//True
										printf("%c is an ascii character\n\n", ch);
								}
								else
								{
										//False
										printf("%c is not an ascii character\n\n", ch);
								}
								break;
						case 5://is_blank()
								if (is_blank(ch))
								{
										//True
										printf("%c is a blank character\n\n", ch);
								}
								else
								{
										//False
										printf("%c is not a blank character\n\n", ch);
								}
								break;
						default://Invalid option
								printf("Invalid option selected!\n\n");
				}
		printf("Do you want to continue? (y/n): ");
		scanf("\n%c", &choice);
				getchar();

}
while (choice == 'y');	
return 0;
}

int is_alpha(char ch)
{
		//Checking the range of all alphabets
		if (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z')
		{
				return 1;
		}
		else
		{
				return 0;
		}
}

int is_digit(char ch)
{
		//Checking the range of all digits
		if (ch >= '0' && ch <= '9')
		{
				return 1;
		}
		else
		{
				return 0;
		}
}

int is_alnum(char ch)
{
		//Simply invoke is_alpha() and is_digit() and OR them
		return (is_alpha(ch) || is_digit(ch));
}

int is_ascii(char ch)
{
		//Checking the range of all ascii characters i.e. 0-127
		if (ch >= 0 && ch <= 127)
		{
				return 1;
		}
		else
		{
				return 0;
		}
}

int is_blank(char ch)
{
		//Checking space i.e. ASCII 9 and tab(\t) i.e. ASCII 32 
		if (ch == 9 && ch == 32)
		{
				return 1;
		}
		else
		{
				return 0;
		}
}

