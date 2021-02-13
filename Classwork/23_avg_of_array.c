#include <stdio.h>

int main()
{
		int length;
		//Input the length of the array
		printf("Enter the length of the array: ");
		scanf("%d", &length);
		if (length > 0)
		{
		int arr[length], sum = 0;
		printf("Enter the array elements - \n");
		for (int i = 0; i < length; i++)
		{
				printf("Enter the element no. %d: ", i + 1);
				scanf("%d", &arr[i]);
		}
		float avg;
		for (int i = 0; i < length; i++)
		{
				sum += arr[i];
		}
		avg = (double) sum / length;
		printf("\nAverage of the array is: %f\n", avg);
		}
		else
		{
				printf("Error: Array length should be positive\n");
		}

		return 0;
}
