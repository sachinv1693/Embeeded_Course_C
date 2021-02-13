#include "dlist_struct.h"

Status insert_at_first(Dlist** head, Dlist** tail, data_t data)
{
		//Create a new node
		Dlist* new = malloc(sizeof(Dlist));
		//Check if node is created or not
		if (new == NULL)
		{
				printf("Error: Unable to allocate dynamic memory!\n\n");
				return FAILURE;
		}
		//Update the data
		new -> data = data;
		//Update backward link of new node
		new -> prev = NULL;
		//Update the forward link of new node
		new -> next = *head;
		//Update the backward link of current head node only if it is not NULL
		if (*head)
				(*head) -> prev = new;
		else
				*tail = new;
		//Update head
		*head = new;
		return SUCCESS;
}

