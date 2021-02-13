#include "main.h"

void print_hash_table(Hash_t a[])
{
		//Iterate over entire size of hash table
		for (data_t i = 0; i < SIZE; i++)
		{
				//Print the index followed by its 1st value
				printf("%d: %d", i, a[i].value);
				//Check if a value is present at the node
				if (a[i].value != -1)
				{
						//Use a temp pointer to iterate till the last link
						Hash_t* temp = &a[i];
						while (temp -> link)
						{
								//Move temp to next link
								temp = temp -> link;
								//Print value at the temp node
								printf("->%d", temp -> value);
						}
				}
				printf("\n");//Move to next line for next index
		}
}

