#include "slist_struct.h"

Status insert_before(Slist** head, data_t data, data_t new_data)
{
		if ((*head) -> data == data)
				return insert_at_first(head, new_data);
		Slist* current = *head;
		if (current -> link == NULL)
		{
				if (current -> data == data)
						return create_and_link_node(current, new_data);
				else
						return FAILURE;
		}
		while (current -> link -> link != NULL)
		{
				if(current -> link -> data == data)
				{
						return create_and_link_node(current, new_data);
				}
				current = current -> link;
		}
		if (current -> link -> link == NULL)
		{
				if (current -> link -> data == data)
						return create_and_link_node(current, new_data);
		}
		else
		{
				printf("Data not found in the list!\n");
				return FAILURE;
		}
}

Status create_and_link_node(Slist* current, data_t new_data)
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
						//Establish link between current node and new node
						current -> link = new;
						return SUCCESS;
}

