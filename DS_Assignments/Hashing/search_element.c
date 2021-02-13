#include "main.h"

Status search_element(Hash_t a[] , data_t data)
{
		//Calculate the key(index) using hash function
		data_t key = HASH_FUNCTION(data);
		Hash_t* temp = &a[key];
		//Else iterate till last node to find the given data
		data_t node_count = 0;
		while (temp)
		{
				node_count++;
				//Check if node contains the given data
				if (temp -> value == data)//If data is found
				{		
						printf("\n%d is found at index %d, link %d\n\n", data, key, node_count);
						return SUCCESS;
				}
				temp = temp -> link;
		}
		return FAILURE;
}

