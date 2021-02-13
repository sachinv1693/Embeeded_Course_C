#include <stdio.h>

double avg(int* num, int size);

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
	av = avg(arr, size);

	printf("The average of the array elements is: %f\n", av);
	return 0;
}

double avg(int arr[], int size)
{
		int sum = 0;
		for (int i = 0;i < size; i++)
		{
				sum += arr[i];
		}
		return (double) sum / size;
}
