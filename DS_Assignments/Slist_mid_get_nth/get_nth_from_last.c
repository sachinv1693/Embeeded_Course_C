#include "slist_struct.h"

Status get_nth_from_last(Slist** head, data_t pos)
{
		Slist* current = *head;
		//Count (total number of nodes - 1) in the list
		data_t node_count = 0, count = 0;
		while (current)
		{
				node_count++;
				current = current -> link;
		}
		//Node position should be within the number of nodes
		if (pos <= node_count)
		{
				//Reset current pointer
				current = *head;
				while (current)
				{
						count++;
						if (pos == node_count - count + 1)
						{								
								printf("Data at node position %d from end of the list: %d\n\n", pos, current -> data);
								return SUCCESS;
						}
						current = current -> link;
				}
		}
		printf("\nNumber of nodes in the link list: %d\n", node_count);
		return FAILURE;
}

