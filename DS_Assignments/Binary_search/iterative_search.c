#include "binary_search.h"

Status search_iterative(data_t* arr, data_t size, data_t key)
{
		data_t f = 0, l = size - 1, mid;
		while (f <= l)
		{
				mid = (f + l) / 2;
				if (arr[mid] == key)
				{
						printf("\nFirst occurrence of key found at index %d\n\n", mid);
						return SUCCESS;
				}
				else if (key < arr[mid])
						l = mid - 1;
				else
						f = mid + 1;
		}
		return FAILURE;
}

