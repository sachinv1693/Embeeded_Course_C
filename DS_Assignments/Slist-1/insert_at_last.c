#include "slist_struct.h"

Status insert_at_last(Slist** head, data_t data)
{
		//Create a new node
		Slist* new = malloc(sizeof(Slist));
		//Check if node is created or not
		if (new == NULL)
		{
				printf("Error: Unable to allocate dynamic memory!\n\n");
				return FAILURE;
		}
		//Update the data and link
		new -> data = data;
		new -> link = NULL;
		//Check whether the list is empty
		if (*head == NULL)
		{
				//Update head
				*head = new;
				return SUCCESS;
		}
		//Take a local reference of head
		Slist* temp = *head;
		//Traverse till the last node
		while (temp -> link)
		{
				temp = temp -> link;
		}
		//Establish a link between last + new node and update the tail
		temp -> link = new;
		return SUCCESS;
}

