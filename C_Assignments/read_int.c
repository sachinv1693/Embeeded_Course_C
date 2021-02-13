/*
   Title = Read Int
   Name = Sachin Vaze
   Date = September 11, 2019
   Description -
   i) Input = An integer
   ii) Output = Display the integer given by user without iusing scanf
 */

#include <stdio.h>
#include <stdio_ext.h>

void read_int(int* ptr);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//Input a number, which is initially 0
				int num = 0;
				printf("Enter an integer(Invalid input results in 0): ");
				//Function call
				read_int(&num);
				printf("The number is: %d\n\n", num);
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
				//Clear input buffer
				__fpurge(stdin);
		}
		while (choice == 'y');
		return 0;
}

void read_int(int* ptr)
{
		//ch to scan every character, neg to indicate negative value, neg_flag to check only first character is '-'
		char ch = '\0'; int neg = 0, neg_flag = 0;
		//Let's use getc() to fetch every character till user enters '\n'
		while ((ch = getchar()) != '\n')
		{
				//Adjust the number with appropriate ten's place
				if (ch >= '0' && ch <= '9')
				{
						*ptr = *ptr * 10 + (ch - 48);
						neg_flag = 1;
				}
				else if (ch == '-' && neg_flag == 0)
				{
						neg++;
				}
				else
				{
						//Clear input buffer
						__fpurge(stdin);
						*ptr = 0;
						return;
				}
		}
		//neg = 1 means value is negative, neg > 1 means more than one '-' sign
		(neg == 1) ? *ptr *= -1 : ((neg > 1) ? *ptr = 0 : *ptr);
}

