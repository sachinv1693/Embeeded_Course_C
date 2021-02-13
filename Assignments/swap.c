/*
   Title = Swap
   Name = Sachin Vaze
   Date = September 04, 2019
   Description -
   i) Input = 2 integers
   ii) Output = Swap the given integers using pass by reference and bitwise operators
 */

#include <stdio.h>

//Function prototype	
void swap(int* ptr1, int* ptr2);

int main()
{
		char choice;
		do
		{
				int num1, num2;
				//Input numbers
				printf("Enter num 1: ");
				scanf("%d", &num1);
				printf("Enter num 2: ");
				scanf("%d", &num2);
				//Printing values before swapping
				printf("Before swapping, num 1 = %d, num 2 = %d\n", num1, num2);

				//Call Swap function and pass address of num1 and num2
				swap(&num1, &num2);

				//Printing values after swapping
				printf("After swapping, num 1 = %d, num 2 = %d\n\n", num1, num2);
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void swap(int* ptr1, int* ptr2)
{
		*ptr1 ^= *ptr2;
		*ptr2 ^= *ptr1;
		*ptr1 = *ptr2 ^ *ptr1;
}

