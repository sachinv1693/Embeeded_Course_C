/*
   Title = Print bits
   Name = Sachin Vaze
   Date = August 23, 2019
   Description -
   i) Input = A number
   ii) Output = Print 32 bit binary form of the given number and its counter part
 */

#include <stdio.h>

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int num;
				//Input the number
				printf("Enter the number: ");
				scanf("%d", &num);

				//If number is negative, make it positive
				if (num < 0)
				{
						num *= -1;
				}

				//32 bit integers
				int NUM_OF_BITS = sizeof(int) * 8;

				//Display message
				printf("\nPrinting bits of %d:\n", num);

				//Iterating over range of integers
				for (int i = 0; i < NUM_OF_BITS; i++)
				{
						//Get bit as per the iterated position
						if (num & (1 << NUM_OF_BITS - i - 1))
						{
								//True
								printf("1");
						}
						else
						{
								//False
								printf("0");
						}
				}
				printf("\n\n");
				//If number is zero, there is no -0, so skip the below part	
				if ( num == 0 )
				{
						goto zero_skip;
				}
				//Display message for negative part
				printf("Printing bits of -%d:\n", num);
				//To get negative part, make the number negative
				num *= -1;
				//Iterating over range of integers
				for (int i = 0; i < NUM_OF_BITS; i++)
				{
						//Get bit as per iterated position
						if (num & (1 << NUM_OF_BITS - i - 1))
						{
								//True
								printf("1");
						}
						else
						{
								//False
								printf("0");
						}
				}
				printf("\n\n");
zero_skip:
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');	
		return 0;
}

