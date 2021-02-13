/*
   Title = Sort float array
   Name = Sachin Vaze
   Date = September 09, 2019
   Description -
   i) Input = Enter array size and its elements
   ii) Output = Sort the array without altering original array
 */

#include <stdio.h>

//Function prototype
void sort_array(float arr[], int size);

int main()
{
		int size;
		char choice;
		do
		{
				printf("Enter the size of array: ");
				scanf("%d", &size);
				if (size > 1)//Validate the array size
				{
						float arr[size];
						printf("\n-----Fill up the array-----\n");
						for (int i = 0; i < size; i++)
						{
								printf("Enter element %d: ", i + 1);
								scanf("%f", &arr[i]);
						}
						printf("\nAfter sorting: ");
						//Passing array's base address and its size to the function
						sort_array(arr, size);
						printf("\nNote: Duplicate elements are printed only once if not all elements are equal");
						printf("\n\n");
				}
				else
				{//Error: Array should contain at least 2 elements
						printf("\nError: Array should contain at least two elements\n\n");
				}
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void sort_array(float arr[], int size)
{
		//First find the min and max element
		int min_index = 0, max_index = 0, small = 0;
		for (int i = 1; i < size; i++)
		{
				min_index = (arr[min_index] > arr[i]) ? i: min_index;
				max_index = (arr[max_index] < arr[i]) ? i: max_index;
		}
		if (min_index == max_index)//If all elements are duplicate print all
		{
				for (int i = 0; i < size; i++)
				{
						printf("%f ", arr[i]);
				}
		}
		else//else print the minimum element
		{
				printf("%f ", arr[min_index]);
		}
		while (min_index != max_index)
		{
				for (int i = 0; i < size; i++)
				{
						//find the small element being larger than min
						if (arr[i] > arr[min_index])
						{
								small = i;
								break;
						}
				}
				for (int j = 0; j < size; j++)//find the next smallest element
				{
						small = (arr[j] <= arr[small] && arr[j] > arr[min_index]) ? j: small;
				}
				min_index = small;//update min
				printf("%f ", arr[min_index]);//print this next min
		}
}

