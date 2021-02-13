#include "dlist_struct.h"

Status insert_after(Dlist** head, Dlist** tail, data_t data, data_t new_data)
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
						//Update forward link of new node
						new -> next = current -> next;
						//Update the backward link of new node
						new -> prev = current;
						//Update the backward link of next node if current node is not pointing to tail otherwise update tail
						if (current != *tail)
								current -> next -> prev = new;
						else
								*tail = new;
						//Update forward link of current to new
						current -> next = new;
						return SUCCESS;
				}
				current = current -> next;//Iterate to next node
		}
		printf("%d was not found in the list.\n", data);
		return FAILURE;
}

