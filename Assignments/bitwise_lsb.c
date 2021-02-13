/*
   Title = Bitwise LSB
   Name = Sachin Vaze
   Date = August 26, 2019
   Description -
   i) Input = 4 numbers n, i, a, b
   ii) Output = Print updated i value
 */

#include <stdio.h>

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int n, i, a, b;
				int NO_OF_BITS = sizeof(int) * 8;
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
								//Store binary of n into an array
								int arr_n[NO_OF_BITS];
								printf("\nBinary form of n -\n");
								for (int k = 0; k < NO_OF_BITS; k++)
								{
										if (n & (01 << (NO_OF_BITS - 1 - k)))
										{
												arr_n[NO_OF_BITS - 1 - k] = 1;
										}
										else
										{
												arr_n[NO_OF_BITS - 1 - k] = 0;
										}
										//print the binary of n
										printf("%d", arr_n[NO_OF_BITS - 1 - k]);
								}
								printf("\n");
								//Store binary of i into an array
								int arr_i[NO_OF_BITS];
								printf("\nBinary form of i -\n");
								for (int k = 0; k < NO_OF_BITS; k++)
								{
										if (i & (01 << (NO_OF_BITS - 1 - k)))
										{
												arr_i[NO_OF_BITS - 1 - k] = 1;
										}
										else
										{
												arr_i[NO_OF_BITS - 1 - k] = 0;
										}
										//print the binary of i
										printf("%d", arr_i[NO_OF_BITS - 1 - k]);
								}
								printf("\n\n");
								//No. of bits to be modified
								printf("No. of bits to be modified = b - a + 1: %d\n\n", b - a + 1);
								//Performing the bit replacement
								printf("Replacing %d bits of i starting from its bit position %d from 0th bit of n:\n", b - a + 1, b - a + 1);
								for (int k = 0; k < b - a + 1; k++)
								{
										//Assign (b - a + 1)th position of array_i as per array_n
										arr_i[b - a + 1 + k] = arr_n[k];
								}
								//Printing binary form of new i
								printf("The new value of i becomes - \n");
								for (int k = 0; k < NO_OF_BITS; k++)
								{
										printf("%d", arr_i[NO_OF_BITS - 1 - k]);
								}
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

