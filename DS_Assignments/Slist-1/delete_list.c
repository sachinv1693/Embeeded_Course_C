#include "slist_struct.h"

Status delete_list(Slist** head)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
				printf("\n%s\n\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Slist* temp = *head;
		while (temp)
		{
				//Move temp to next node
				temp = temp -> link;
				//Free the removed node
				free(*head);
				//Let's make the node to be removed as NULL
				*head = NULL;
				//Update head pointer
				*head = temp;
		}
		return SUCCESS;
}

