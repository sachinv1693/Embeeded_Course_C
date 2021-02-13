#include "slist_struct.h"

Status delete_element(Slist** head, data_t data)
{
		//Check whether the list is empty
		if (*head == NULL)
		{
				printf("%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//If data is found at head node
		if ((*head) -> data == data)
		{
				Slist* remove = *head;
				*head = (*head) -> link;
				free(remove);
				return SUCCESS;
		}
		//Search for given data in further nodes
		Slist* temp = *head;
		while (temp -> link != NULL)
		{
				//Check if data is found at current's next node
				if (temp -> link -> data == data)
				{
						//Store the address of node to be removed
						Slist* remove = temp -> link;
						//Establish link between current node and its next's next node
						temp -> link = temp -> link -> link;
						free(remove);//Free up the memory
						return SUCCESS;
				}
				temp = temp -> link;
		}
		printf("\n%d was not found in the linked list!\n", data);
		return FAILURE;
}

