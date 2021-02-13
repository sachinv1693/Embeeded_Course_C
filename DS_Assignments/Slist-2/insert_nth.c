#include "slist_struct.h"

Status insert_nth(Slist** head, data_t pos, data_t data)
{
		//Check whether the list is empty
		if (*head == NULL && pos != 1)
		{
				printf("\n%s\nOnly inserting at node position 1 can be done!\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		else if (*head == NULL && pos == 1)
		{
				return insert_at_first(head, data);
		}
		Slist* current = *head;
		data_t node_count = 0;
		while (current)
		{
				node_count++;
				if (node_count == pos)
				{
						return insert_before(head, current -> data, data);
				}
				current = current -> link;
		}
		printf("Number of nodes in the list: %d\n", node_count);
		return FAILURE;
}

