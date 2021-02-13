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
void selection_sort(int A[], int size);

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
						printf("\n----Sorting the array using selection sort technique----\n");
						//Sort array using selection sort technique
						selection_sort(arr, size);
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

void selection_sort(int A[], int size)
{
		for (int i = 0; i < size - 1; i++)//Outer loop
		{
				int index_of_min = i;
				for (int j = i + 1; j < size; j++)//Inner loop
				{
						if (A[j] < A[index_of_min])//Sort in ascending order
						{
								index_of_min = j;
						}
				}
				if (index_of_min != i)
				{
						SWAP(A[index_of_min], A[i]);
				}
		}
}

