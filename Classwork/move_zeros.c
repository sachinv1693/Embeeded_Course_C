#include <stdio.h>

void moveZeros(int arr[], int size)
{
		int zeroFound = 0;
		for (int i = 0; i < size; i++)
		{
				if (arr[i])
						arr[zeroFound++] = arr[i];
		}
		for (int i = zeroFound; i < size; i++)
				arr[i] = 0;
}

int main()
{
		int arr[] = {0, 1, 0, 3, 12, 8, 0, 0, 0, 7, 7, 6},
			len = sizeof(arr)/sizeof(arr[0]);
		moveZeros(arr, len);
		printf("Array after moving the zeros: ");
		for (int i = 0; i < len; i++)
		{
				printf("%d ", arr[i]);
		}
		printf("\n");
		return 0;
}
