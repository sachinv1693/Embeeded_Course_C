#include "slist_struct.h"

Status insert_sorted(Slist** head, data_t data)
{
		//Check whether the list is empty
		if (*head == NULL)
		{
				//Create a new node to be inserted
				Slist* new = malloc(sizeof(Slist));
				//Check whether node created or not
				if (new == NULL)//Error
				{
						printf("Error: Unable to allocate dynamic memory.\n");
						return FAILURE;
				}
				new -> data = data;//Assign given data to new node
				*head = new;//MAke head to point to newly created node
				new -> link = NULL;//Link of only 1 node is NULL
				return SUCCESS;
		}
		//Sort the given list using bubble sort technique
		Slist* outer = *head;//An outer pointer
		while (outer -> link)//Iterate till last node
		{
				Slist* inner = outer -> link;//Inner pointer set to next node
				while (inner)//Iterate till last node
				{
						if (outer -> data > inner -> data)
						{//Swap data
								data_t temp = inner -> data;
								inner -> data = outer -> data;
								outer -> data = temp;
						}
						inner = inner -> link;//Move inner pointer to next node
				}
				outer = outer -> link;//Move outer pointer to next node
		}
		//Now let's add the new node at its appropriate position
		outer = *head;
		while (outer -> link)
		{
				if (data > (outer -> data) && data <= (outer -> link -> data))
				{
						return insert_after(head, outer -> data, data);
				}
				outer = outer -> link;
		}
		if (data <= outer -> data)
		{
				return insert_at_first(head, data);
		}
		else
				return insert_after(head, outer -> data, data);
}

