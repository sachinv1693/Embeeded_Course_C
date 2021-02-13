/*
   Title = Magic Square
   Name = Sachin Vaze
   Date = October 01, 2019
   Description -
   i) Input = An odd integer greater than 1
   ii) Output = Display a magic square for given input
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototype	
void magic_square(int** arr, int n);
void print_magic_square(int** arr, int size);

int main()
{
		char choice;//User choice to continue the program ( y / n)
		do
		{
				int num;
				//Input number
				printf("Enter an odd integer greater than 1: ");
				scanf("%d", &num);
				if ((num > 1) && (num % 2))//Validity check
				{
						//Array of pointers declaration
						int* arr[num];
						for (int i = 0; i < num; i++)
						{
								arr[i] = (int*)calloc(num, sizeof(int));//To initialize all elements with zero, we use calloc
						}
						printf("\n-----Displaying the magic square-----\n");
						//sum = n(n*n + 1)/2
						printf("Note that the summation of numbers in a row, column or diagonal form = %d\n\n", num * (num *num + 1) / 2);
						//Call magic_square filling and printing functions
						magic_square(arr, num);
						print_magic_square(arr, num);
						for (int i = 0; i < num; i++)//free dynamically allocated memory to store 2D array elements
						{
								free(arr[i]);
						}
				}
				else//Error message
				{
						printf("Error: Invalid Input. It should be an odd integer greater than 1\n");
				}
				printf("\nDo you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void magic_square(int** arr, int n)
{
		//Assign 1 to 0th row and middle column
		int i = 0, j = (n / 2); 
		arr[i][j] = 1;
		for (int x = 2; x <= n * n; x++)
		{
				--i; ++j;//General new value of row and column 
				if (i < 0 && j == n)//Corner Case
				{
						++i; --j;//Restore the row and column values
						arr[++i][j] = x;//Just change the row and assign new value
						continue;
				}
				i = (i < 0) ? n - 1: i;//Roll over row value upon exceeding the limit
				j = (j == n) ? 0: j;//Roll over column value upon exceeding the limit
				if(arr[i][j] == 0)//Assign the new value if the place is zero 
				{
						arr[i][j] = x;
				}
				else//means the place is already occupied
				{
						++i; --j;//Restore row and column values
						arr[++i][j] = x;//Assign the new value
				}
		}
}

void print_magic_square(int** arr, int size)
{
		for (int i = 0; i < size; i++)
		{
				for (int j = 0; j < size; j++)
				{
						printf("%3d\t", arr[i][j]);//Keeping proper spacing & 3 digits right aligned
				}
				printf("\n");
		}
}

