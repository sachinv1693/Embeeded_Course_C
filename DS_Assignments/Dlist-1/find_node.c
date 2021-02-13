#include "dlist_struct.h"

Status find_node(Dlist** head, data_t data)
{
		data_t node_count = 0;
		//Check whether the list is empty
		if (*head == NULL)
		{
				printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		Dlist* temp = *head;
		while (temp)
		{
				node_count++;
				if(temp -> data == data)
				{
						 printf("First occurrence of %d is found at node %d\n\n", data, node_count);
						return SUCCESS;
				}
				temp = temp -> next;
		}
		return FAILURE;
}

