#include "dlist_struct.h"

Status delete_last(Dlist** head, Dlist** tail)
{
		//Check whether the list is empty
		if (*tail == NULL)//No elements in the linked list
		{
			    printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Dlist* temp = *tail;
		//Update forward link of prev node if it is not NULL
		if (temp -> prev)
				temp -> prev -> next = NULL;
		else
				*head = NULL;
		//Update tail
		*tail = temp -> prev;
		//Free the removed node
		free(temp);
		//Let's make the node address to be removed as NULL after freeing it
		temp = NULL;
		return SUCCESS;
}

