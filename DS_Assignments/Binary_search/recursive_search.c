#include "binary_search.h"

Status search_recursive(data_t* arr, data_t lower, data_t upper, data_t key)
{
		if (upper < lower)
		{
				return FAILURE;
		}
		data_t mid = (lower + upper) / 2;
		if (key == arr[mid])
		{
				printf("\nFirst occurrence of key found at index %d\n\n", mid);
				return SUCCESS;
		}
		if (key < arr[mid])
				return search_recursive(arr, lower, mid - 1, key);
		else
				return search_recursive(arr, mid + 1, upper, key);
}

