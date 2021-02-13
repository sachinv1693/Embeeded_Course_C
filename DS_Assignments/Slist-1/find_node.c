#include "slist_struct.h"

data_t find_node(Slist** head, data_t data)
{
		int node_count = 0;
		//Check whether the list is empty
		if (*head == NULL)
		{
				printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		Slist* temp = *head;
		while (temp != NULL)
		{
				node_count++;
				if(temp -> data == data)
				{
						return node_count;
				}
				temp = temp -> link;
		}
		return FAILURE;
}

