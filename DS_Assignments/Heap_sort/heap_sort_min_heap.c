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
void MinHeapify(int A[], int i, int size);
void BuildMinHeap(int A[], int size);
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

void MinHeapify(int A[], int i, int size)
{
		int Sm;
		int L = 2 * i + 1;
		int R = 2 * i + 2;
		if (A[L] < A[i] && (L < size))
				Sm = L;
		else
				Sm = i;
		if (A[R] < A[Sm] && R < size)
				Sm = R;
		if (i != Sm)
		{
				SWAP(A[i], A[Sm]);
				MinHeapify(A, Sm, size);
		}
}

void BuildMinHeap(int A[], int size)
{
		for (int i = (size / 2) - 1; i >= 0; i--)
		{
				MinHeapify(A, i, size);
		}
}

void HeapSort(int A[], int size)
{
		BuildMinHeap(A, size);
		for (int i = size - 1; i >= 0; i--)
		{
				SWAP(A[0], A[i]);
				MinHeapify(A, 0, i);
		}
}

