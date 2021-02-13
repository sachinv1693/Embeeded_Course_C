#include "slist_struct.h"

Status find_mid(Slist** head, data_t* mid)
{
		//Check whether the list is empty
		if (*head == NULL)
		{
				printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		Slist* current = *head;
		//Count number of nodes in the list
		data_t node_count = 1;
		while (current -> link != NULL)
		{
				node_count++;
				current = current -> link;
		}
		mid[0] = node_count % 2;
		data_t mid_node = node_count / 2;
		node_count = 0;
		current = *head;
		if (mid[0])
		{
				//node_count is odd
		while (current -> link != NULL)
		{
				node_count++;
				if (node_count == mid_node + 1)
				{
						break;
				}
				current = current -> link;
		}
		mid[1] = current -> data;
		return SUCCESS;
		}
		else
		{
				//node_count is even
		while (current -> link != NULL)
		{
				node_count++;
				if (node_count == mid_node)
				{
						break;
				}
				current = current -> link;
		}
		mid[1] = current -> data;
		mid[2] = current -> link -> data;
		return SUCCESS;
		}
}

