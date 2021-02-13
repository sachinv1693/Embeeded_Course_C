#include "main.h"

Status delete_element(Hash_t a[], data_t data)
{
		//Calculate the key(index) using hash function
		data_t key = HASH_FUNCTION(data);
		Hash_t* temp = &a[key];
		if (temp -> value == data)//If data is found at first node
		{
				//Check if next node is present
				if (temp -> link)
				{
						//As long as next's next node's link is not NULL, keep copying next node's data to current node's data
						while (temp -> link -> link)
						{
								temp -> value = temp -> link -> value;
								temp = temp -> link;
						}
						//Copy the last node's data to to its previous node
						temp -> value = temp -> link -> value;
						//Now free the memory of last node
						free(temp -> link);
						//Assign NULL address to the link of 2nd last node
						temp -> link = NULL;
						//Now the 2nd last node has become the last node
				}
				else
						//Assign -1 to 1st node's value
						temp -> value = -1;
				//Since the first node was not created dynamically, we don't have to use free.
				return SUCCESS;
		}
		//Else iterate till last node to find the given data
		while (temp -> link)
		{
				//Check if next node contains the given data
				if (temp -> link -> value == data)//If data is found
				{		
						Hash_t* to_be_freed = temp -> link;
						temp -> link  = temp -> link -> link;
						free(to_be_freed);
						to_be_freed = NULL;
						return SUCCESS;
				}
				temp = temp -> link;
		}
		printf("\n%s\n", DATA_NOT_FOUND);
		return FAILURE;
}

