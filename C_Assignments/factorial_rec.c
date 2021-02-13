/*
   Title = Factorial Recursive
   Name = Sachin Vaze
   Date = September 06, 2019
   Description -
   i) Input = A non-negative integer
   ii) Output = Print factorial of the given number using main function only
 */

#include <stdio.h>

int main()
{
		//Number to be entered by user which can be statically modified
		static int num;
		//Store factorial value as 1 initially which can be statically modified
		static int factorial = 1;
		//User choice to continue the program (y / n)
		char choice;
		do
		{
				//Only initially ask for number 
				if (factorial == 1)
				{
						//Input the number
						printf("Enter an integer: ");
						scanf("%d", &num);
				}
				//Recursive case: Calculate factorial
				if (num > 1)//Validate user entry
				{
						//store multiplication of num with value in factorial
						factorial *= num;
						//Reduce the num value
						num--;
						//Recursive call to main() function
						//return statement to continue in the same stack frame otherwise there would be 'num' no. of stack frames to get out of the program.
						return main();
				}
				else
				{//Error or base case achieved
						//Base case: Factorial of 1 or 0 is equal to 1
						if (num >= 0)
						{
								//Statically stored value of factorial
								printf("Factorial of this number: %d\n\n", factorial);
								//Reassign factorial as 1
								factorial = 1;
						}
						else//Error (negative num being entered)
						{
								printf("Error: Invalid Input!\n\n");
						}
				}
				//Ask for repeatative continuation of program
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

