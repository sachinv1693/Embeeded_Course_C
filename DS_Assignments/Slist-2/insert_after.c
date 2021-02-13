#include "slist_struct.h"

Status insert_after(Slist** head, data_t data, data_t new_data)
{
		Slist* current = *head;
		while (current != NULL)
		{
				if(current -> data == data)
				{
						//Create a new node
						Slist* new = malloc(sizeof(Slist));
						//Check whether memory is allocated
						if (new == NULL)
						{
								printf("Error: Unable to allocate dynamic memory!\n\n");
								return FAILURE;
						}
						//Update new node data
						new -> data = new_data;
						//Establish link between new node and next node
						new -> link = current -> link;
						//Update current node's link
						current -> link = new;
						return SUCCESS;
				}
				current = current -> link;
		}
				printf("Data not found in the list!\n");
				return FAILURE;
}

