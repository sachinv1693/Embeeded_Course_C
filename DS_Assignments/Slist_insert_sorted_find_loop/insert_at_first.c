#include "slist_struct.h"

Status insert_at_first(Slist** head, data_t data)
{
		//Create a new node
		Slist* new = malloc(sizeof(Slist));
		//Check if node is created or not
		if (new == NULL)
		{
				printf("Error: Unable to allocate dynamic memory!\n\n");
				return FAILURE;
		}
		//Update the data
		new -> data = data;
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
				//No elements in the linked list
				//Update the link to NULL address
		        new -> link = NULL;
				//Update head
				*head = new;
				return SUCCESS;
		}
		//Establish a link between first and next node + update head pointer
		new -> link = *head;
		*head = new;
		return SUCCESS;
}

