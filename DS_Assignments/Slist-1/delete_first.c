#include "slist_struct.h"

Status delete_first(Slist** head)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
			    printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Slist* temp = *head;
		//Update head pointer
		*head = temp -> link;
		//Free the removed node
		free(temp);
		//Let's make the node to be removed as NULL
		temp = NULL;
		return SUCCESS;
}

