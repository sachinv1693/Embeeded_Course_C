#include "main.h"

Status delete_hash_table(Hash_t a[])
{
		//Iterate over entire hash table
		for (data_t i = 0; i < SIZE; i++)
		{
				//Use a temp pointer to hold address of all links
				Hash_t* temp = &a[i];
				if (temp -> value != -1)//If data is found at first node
				{
						//Delete first node's value
						temp -> value = -1;
						//Iterate till last node to find the given data
						while (temp -> link)
						{
								//Keep address of link to be freed in a pointer
								Hash_t* to_be_freed = temp -> link;
								//Assign next's next link as current's link
								temp -> link  = temp -> link -> link;
								//Free dynamic memory
								free(to_be_freed);
								//Prevent pointer from becoming dangling
								to_be_freed = NULL;
						}
				}
		}
		return SUCCESS;
}

