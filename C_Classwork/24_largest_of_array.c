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
				int largest = arr[0];
				for (int i = 1; i < length; i++)
				{
						if (arr[i] > largest)
						{
								largest = arr[i];
						}
				}
				printf("\nLargest element of the array is: %d\n", largest);
		}
		else
		{
				printf("Error: Array length should be positive\n");
		}

		return 0;
}
