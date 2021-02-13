#include "dlist_struct.h"

Status delete_list(Dlist** head, Dlist** tail)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
				printf("%s\n\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Dlist* temp = *head;
		while (temp)
		{
				//Move temp to next address
				temp = temp -> next;
				//Free the node to be removed
				free(*head);
				//Let's make the node address to be removed as NULL after freeing it to avoid it from becoming a dangling pointer
				*head = NULL;
				//Update head pointer
				*head = temp;
		}
		*tail = NULL;
		return SUCCESS;
}

