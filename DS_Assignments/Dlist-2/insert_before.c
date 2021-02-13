#include "dlist_struct.h"

Status insert_before(Dlist** head, Dlist** tail, data_t data, data_t new_data)
{
		//Set a current pointer for iterating into the list
		Dlist* current = *head;
		while (current)
		{
				if (current -> data == data)
				{
						//Create a new node
						Dlist* new = malloc(sizeof(Dlist));
						//Check if node is created or not
						if (new == NULL)
						{
								printf("Error: Unable to allocate dynamic memory!\n\n");
								return FAILURE;
						}
						//Update the new data
						new -> data = new_data;
						//Update backward link of new node
						new -> prev = current -> prev;
						//Update the forward link of new node
						new -> next = current;
						//Update the forward link of previous node if current node is not pointing to head otherwise update head
						if (current != *head)
								current -> prev -> next = new;
						else
								*head = new;
						//Update backward link of current to new
						current -> prev = new;
						return SUCCESS;
				}
				current = current -> next;//Iterate to next node
		}
		printf("%d was not found in the list.\n", data);
		return FAILURE;
}

