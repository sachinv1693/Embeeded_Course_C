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
void Q_sort(int A[], int low, int high);
int partition(int A[], int low, int high);

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
						printf("\n----Sorting the array using quick sort technique----\n");
						//Sort array using quick sort technique
						Q_sort(arr, 0, size - 1);
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

void Q_sort(int A[], int low, int high)
{
		int i;//A variable to store partition value
		if (low < high)//Continue as long as low < high
		{
				i = partition(A, low, high);
				//Recursive call for lower half of the pivot
				Q_sort(A, low, i - 1);
				//Recursive call for upper half of the pivot
				Q_sort(A, i + 1, high);
		}
}

int partition(int A[], int low, int high)
{
		//Keeping pivot at lower index
		int pivot = low;
		int p = low + 1;
		int q = high;
		while (p <= q)
		{
				while (A[p] < A[pivot])
				{
						p++;
				}
				while (A[q] > A[pivot])
				{
						q--;
				}
				if (p < q)
						SWAP(A[p], A[q]);
		}
		SWAP(A[q], A[pivot]);
		return q;
}

