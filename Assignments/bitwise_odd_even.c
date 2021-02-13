/*
   Title = Bitwise Odd Even
   Name = Sachin Vaze
   Date = August 25, 2019
   Description -
   i) Input = An integer
   ii) Output = Determine if the given number is even or odd using bitwise operation
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

						//Get the last bit of the number using AND operation
						if (num & 01)
						{
								//True means last bit is 1, so odd number
								printf("%d is an odd number\n", num);
						}
						else
						{
								//False means last bit is 0, so even number
								printf("%d is an even number\n", num);
						}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');	
		return 0;
}

