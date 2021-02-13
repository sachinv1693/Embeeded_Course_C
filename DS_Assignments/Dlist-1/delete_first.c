#include "dlist_struct.h"

Status delete_first(Dlist** head, Dlist** tail)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
			    printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Dlist* temp = *head;
		//Update beackward link of next node if it is not NULL
		if (temp -> next)
				temp -> next -> prev = NULL;
		else
				*tail = NULL;
		//Update head pointer
		*head = temp -> next;
		//Free the removed node
		free(temp);
		//Let's make the node address to be removed as NULL after freeing it
		temp = NULL;
		return SUCCESS;
}

