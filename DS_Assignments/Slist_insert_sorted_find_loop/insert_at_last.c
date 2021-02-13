#include "slist_struct.h"

Status insert_at_last(Slist** head, data_t data, Slist** loop_back_node)
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
		new -> link = NULL;
		//Check whether the list is empty
		if (*head == NULL)
		{
				//Update head
				*head = new;
				return SUCCESS;
		}
		//To check for presence of loop
		data_t is_loop = 0;
		//Take a local reference of head
		Slist* temp = *head;
		//Traverse till the last node
		while (temp -> link)
		{
				if ((*loop_back_node) && (temp -> link == *loop_back_node))
				{
						is_loop++;
						if (is_loop == 2 || temp == temp -> link)
						{
		                        //Establish a link between last + new node
								temp -> link = new;
								//Set loop_back_node pointer to NULL
								*loop_back_node = NULL;
								return SUCCESS;
						}
				}
				temp = temp -> link;
		}
	    temp -> link = new;
		//Set loop_back_node pointer to NULL
		*loop_back_node = NULL;
		return SUCCESS;
}

