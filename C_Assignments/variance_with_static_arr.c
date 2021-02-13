/*
   Title = Variance calculation using static arrays
   Name = Sachin Vaze
   Date = September 13, 2019
   Description -
   i) Input = Size of array and array elements
   ii) Output = Calculate and display variance of given array elements
 */

#include <stdio.h>

//Function prototypes
float mean(int arr[], int size);
float variance(int arr[], int size, float mean);

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int size;
				//Input the array size
				printf("Enter the number of elements: ");
				scanf("%d", &size);
				if (size > 0)//Verify array size
				{
						int arr[size];
						//Fill up the array
						printf("\n---Fill up the array elements---\n");
						for (int i = 0; i < size; i++)
						{
								printf("Enter element %d: ", i + 1);
								scanf("%d", &arr[i]);
						}
						//Calculate mean value
						float avg = mean(arr, size);
						//Calculate variance
						float sigma = variance(arr, size, avg);
						printf("\nVariance = %f\n\n", sigma);
				}
				else//Invalid size
				{
						printf("\nError: Invalid Input\n\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');	
		return 0;
}

float mean(int arr[], int size)
{
		//Calculate total
		float total = 0;
		for (int k = 0; k < size; k++)
		{
				total += arr[k];
		}
		return total / size;
}

float variance(int arr[], int size, float mean)
{
		//Calculate sum
	    float sum = 0;
		for (int k = 0; k < size; k++)
		{
				sum += (arr[k] - mean) * (arr[k] - mean);
		}
		return sum / size;
}

