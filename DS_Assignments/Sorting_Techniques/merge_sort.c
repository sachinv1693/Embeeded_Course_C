#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void merge_sort(int A[], int nA);
void merge(int A[], int nA, int L[], int nL, int R[], int nR);

int main()
{
		char choice;//User choice to continue the program
		int size;//Array size
		do
		{
		printf("\nEnter the number of elements: ");
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
				printf("\n----Sorting the array using merge sort technique----\n");
				//Sort array using merge sort technique
				merge_sort(arr, size);
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

void merge_sort(int A[], int nA)
{
		//Base case: return when array size is 1
		if (nA == 1)
				return;
		int mid = nA/2;//Set midpoint as half of obtained size
		//Dynamically allocate memory to store left half
		int* L = malloc(mid * sizeof(int));
		if (L == NULL)//Check if memory is allocated or not
		{
				printf("Unable to allocate dynamic memory\n\n");
				return;
		}
		//Store left half of the array
		for (int i = 0; i < mid; i++)
		{
				L[i] = A[i];
		}
		//Dynamically allocate memory to store right half
		int* R = malloc((nA - mid) * sizeof(int));
		if (R == NULL)//Check if memory is allocated or not
		{
				printf("Unable to allocate dynamic memory\n\n");
				return;
		}
		//Store right half of the array
		for (int i = mid; i < nA; i++)
		{
				R[i - mid] = A[i];
		}
		//Recursively call the function to divide both left and right side
		merge_sort(L, mid);
		merge_sort(R, nA - mid);
        merge(A, nA, L, mid, R, nA - mid);
}

void merge(int A[], int nA, int L[], int nL, int R[], int nR)
{
		int i = 0, j = 0, k = 0;
		while ((i < nL) && (j < nR))
		{
				if (L[i] < R[j])
				{
						A[k] = L[i];
						i++;
				}
				else
				{
						A[k] = R[j];
						j++;
				}
				k++;
		}
		while (j < nR)
		{
				A[k] = R[j];
				j++;
				k++;
		}
		while (i < nL)
		{
				A[k] = L[i];
				i++;
				k++;
		}
		free(L);
		free(R);
}

