#include <stdio.h>

void square(int* num, int size);

int main()
{
	int size;
	double av;
	//Input size
	printf("Enter the size of the array: ");
	scanf("%d", &size);
	int arr[size];
	printf("----Fill up the array----\n");
	for (int i = 0;i < size; i++)
	{
			printf("Enter element %d: ", i+1);
			scanf("%d", &arr[i]);
	}

	square(arr, size);

	printf("---The sqaure of the array elements---\n");
	for (int i = 0; i < size; i++)
	{
			printf("%d ", arr[i]);
	}
	printf("\n");
	return 0;
}

void square(int arr[], int size)
{
		for (int i = 0;i < size; i++)
		{
				arr[i] *= arr[i];
		}
}
