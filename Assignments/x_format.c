/*
   Title = X Format
   Name = Sachin Vaze
   Date = August 9, 2019
   Description - 
   i) Input = Number of lines to be printed
   ii) Output = Print the Hello pattern
 */

#include <stdio.h>

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
		//Input the number
		int num;
		printf("Enter the number of lines you want to print: ");
		scanf("%d", &num);

		if (num > 0)//number is positive
		{
				/*Carefully observing the pattern shows that every line has following sequence = space1 + Hello + space2 + Hello + space1*/
				int sp1, sp2;//variable to store space1, space2
				//Iterating from 0 to num-1
				for (int i = 0; i < num; i++)
				{
						if (num % 2 != 0)
						{//num is odd
								//For the first half of the pattern we get exactly i number of space1
								if (i <= num / 2)
								{
										sp1 = i;
								}
								else
								{
										//In the remaining half we get num -i - 1 number of space1

										sp1 = num - i - 1;
								}
								//For num being odd, we get sp2 as
								sp2 = num - 2 * sp1 - 1;
						}
						else
						{//num is even
								//For the first half of the pattern we get exactly i number of space1
								if (i < num / 2)
								{
										sp1 = i;
								}
								else
								{
										//In the remaining half we get num - i - 1 number of space1
										sp1 = num - i -1;
								}
								//For num being even, we get sp2 as
								sp2 = num - 2 * sp1 - 2;
						}
						// Printing spaces and string Hello
						printf("%*s",sp1,"");
						printf("Hello");
						printf("%*s",sp2,"");
						printf("Hello\n");
				}

		}
		else
		{
				//number is negative or zero
				printf("Error: Invalid entry\n");
		}
		printf("Do you want to continue? (y/n): ");
		scanf("\n%c", &choice);
		}
		while(choice == 'y');
		return 0;
}

