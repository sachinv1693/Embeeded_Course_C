#include "slist_struct.h"

Status delete_element_pos(Slist** head, data_t pos)
{
		//Check whether the list is empty
		if (*head == NULL)
		{
				printf("%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		Slist* current = *head;
		if (pos == 1)
		{
				*head = current -> link;
				//Free the node
				free(current);
				//Let's make the node to be removed as NULL
				current = NULL;
				return SUCCESS;		   
		}
		data_t count = 1;
		while (current -> link)
		{
				count++;
				if (count == pos)
				{
						Slist* temp = current -> link -> link;
						free(current -> link);
						current -> link = temp;
						return SUCCESS;
				}
				current = current -> link;
		}
		printf("Number of nodes in the list: %d\n", count);
		return FAILURE;
}

