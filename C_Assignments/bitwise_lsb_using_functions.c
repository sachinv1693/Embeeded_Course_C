/*
   Title = Bitwise LSB
   Name = Sachin Vaze
   Date = August 26, 2019
   Description -
   i) Input = 4 numbers n, i, a, b
   ii) Output = Print updated i value
 */

#include <stdio.h>

//Function prototypes
void print_bin_form(int num);
void replacement(int n, int i, int a, int b);

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int n, i, a, b, NO_OF_BITS = sizeof(int) * 8;
				//Input the numbers
				printf("\nEnter the value of n: ");
				scanf("%d", &n);
				printf("Enter the value of i: ");
				scanf("%d", &i);
				printf("Enter the value of a: ");
				scanf("%d", &a);
				if (a > 0 && a < NO_OF_BITS)//Validate the range of a
				{
						printf("Enter the value of b: ");
						scanf("%d", &b);
						if (b >= a && b < NO_OF_BITS)//Validate the range of b
						{
								//Binary form of n
								printf("\nBinary form of n -\n");
								print_bin_form(n);
								//Binary form of i
								printf("\nBinary form of i -\n");
								print_bin_form(i);
								//No. of bits to be modified
								printf("\nNo. of bits to be modified = b - a + 1: %d\n\n", b - a + 1);
								//Performing the bit replacement
								printf("Replacing %d bits of i starting from its bit position %d from 0th bit of n:\n", b - a + 1, b);
								//Call replacement function
								replacement(n, i, a, b);
								printf("\n\n");
						}
						else
						{
								//Error exceeding range of b
								printf("Error: Value of b should be in the range a <= b <= %d\n\n", NO_OF_BITS - 1);
						}
				}
				else
				{
						//Error exceeding range of a
						printf("Error: Value of a should be in the range 0 < a <= %d\n\n", NO_OF_BITS - 1);
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');	
		return 0;
}

void print_bin_form(int num)
{
		int NO_OF_BITS = sizeof(int) * 8;
		for (int k = 0; k < NO_OF_BITS; k++)
		{
				if (num & (01 << (NO_OF_BITS - 1 - k)))
				{
						printf("1");
				}
				else
				{
						printf("0");
				}
		}
		printf("\n");
}

void replacement(int n, int i, int a, int b)
{
		//Creating a mask
		unsigned int mask = 0;
		mask = (~mask >> ((sizeof(int) * 8) - (b - a + 1)));
		//Shift and take out appropriate bits
		n &= mask;
		mask <<= (b - a + 1);
		i &= ~mask;
		n <<= (b - a + 1);
		printf("New value of i becomes: %d\n", i | n);
		printf("Binary form of i: ");
		print_bin_form(i | n);
}

