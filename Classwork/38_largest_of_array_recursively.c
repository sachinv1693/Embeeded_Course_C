#include <stdio.h>

int largest_of_array(int arr[], int size, int largest)
{
		//Recursive part, size passed in the argument should be valid
		if (size > 2)
		{
				//If current index element is smaller than next index
				if (largest < *(arr + 1))
				{
						//Call recursively by passing the new largest value
						return largest_of_array(arr + 1, size - 1, *(arr + 1));
				}
				else
				{
						//Call recursively keeping the same largest value
						return largest_of_array(arr + 1, size - 1, largest);
				}
		}
		//Terminating condition: the last check
		//Largest between current largest and last element
		if (largest < *(arr + 1))
		{
				largest = *(arr + 1);
		}
		return largest;
}

int main()
{
		int size, largest;
		printf("Enter the size of array: ");
		scanf("%d", &size);
		if (size > 1)//Validate the array size
		{
				int arr[size];
				printf("\n-----Fill up the array-----\n");
				for (int i = 0; i < size; i++)
				{
						printf("Enter element %d: ", i + 1);
						scanf("%d", &arr[i]);
				}
				//Passing array's base address, size and 1st element of the array as largest initially
				largest = largest_of_array(arr, size, arr[0]);
				printf("\nThe largest number in the given array is: %d\n", largest);
		}
		else
		{
				printf("\nError: Array should contain at least two elements\n");
		}
		return 0;
}

