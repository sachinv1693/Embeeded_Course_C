#include "slist_struct.h"

Status delete_last(Slist** head)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
			    printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Slist* temp = *head;
		//Check if we have only 1 node in the list
		if (temp -> link == NULL)
		{
		        //Free the removed node
				free(temp);
				//Let's make the node to be removed as NULL
				temp = NULL;
				//Update head pointer
				*head = NULL;
				return SUCCESS;
		}
		while (temp -> link -> link)
		{
				temp = temp -> link;
		}
		//Free the removed node
		free(temp -> link);
		//Let's make the node to be removed as NULL
		temp -> link = NULL;
		return SUCCESS;
}

