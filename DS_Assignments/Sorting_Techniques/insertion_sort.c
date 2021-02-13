#include <stdio.h>
#include <stdlib.h>

//Macro to swap elements
#define SWAP(X, Y)                    \
{                                     \
		int temp = X;                 \
		X = Y;                        \
		Y = temp;                     \
}

//Function prototypes
void insertion_sort(int A[], int size);

int main()
{
		char choice;//User choice to continue the program
		int size;//Array size
		do
		{
				printf("Enter the number of elements: ");
				scanf("%d", &size);//Input array size
				if (size > 1)//Validate size
				{
						int arr[size];//Declare array of given size
						printf("\n-----Fill up the array-----\n");
						for (int i = 0; i < size; i++)
						{
								printf("Enter element %d: ", i + 1);
								scanf("%d", &arr[i]);
						}
						printf("\n----Sorting the array using insertion sort technique----\n");
						//Sort array using insertion sort technique
						insertion_sort(arr, size);
						//Print elements after sorting
						for (int i = 0; i < size; i++)
						{
								printf("%d ", arr[i]);
						}
						printf("\n\n");
				}
				else
				{//Invalid array size
						printf("Error: There should be at least 2 elements.\n\n");
				}
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		} while (choice == 'y');
		return 0;
}

void insertion_sort(int A[], int size)
{
		int current, i, j;
		for (i = 0; i < size; i++)//Outer loop
		{
				current = A[i];
				//Find a place for current in range (i - 1) to 0.
				for (j = i - 1; (j >= 0) && (current < A[j]); j--)//Inner loop
				{
						A[j + 1] = A[j];
				}
				A[j + 1] = current;
		}
}

