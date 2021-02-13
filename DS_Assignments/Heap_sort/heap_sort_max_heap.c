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
void MaxHeapify(int A[], int i, int size);
void BuildMaxHeap(int A[], int size);
void HeapSort(int A[], int size);

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
						printf("\n----Sorting the array using heap sort technique----\n");
						//Sort array using quick sort technique
						HeapSort(arr, size);
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

void MaxHeapify(int A[], int i, int size)
{
		int Lg;
		int L = 2 * i + 1;
		int R = 2 * i + 2;
		if (A[L] > A[i] && L < size)
				Lg = L;
		else
				Lg = i;
		if (A[R] > A[Lg] && R < size)
				Lg = R;
		if (i != Lg)
		{
				SWAP(A[i], A[Lg]);
				MaxHeapify(A, Lg, size);
		}
}

void BuildMaxHeap(int A[], int size)
{
		for (int i = (size / 2) - 1; i >= 0; i--)
		{
				MaxHeapify(A, i, size);
		}
}

void HeapSort(int A[], int size)
{
		BuildMaxHeap(A, size);
		int heapSort = size - 1;
		for (int i = heapSort; i >= 0; i--)
		{
				SWAP(A[0], A[i]);
				MaxHeapify(A, 0, i);
		}
}

