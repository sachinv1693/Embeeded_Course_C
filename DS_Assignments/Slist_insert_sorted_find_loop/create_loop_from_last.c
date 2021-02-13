#include "slist_struct.h"

Status create_loop_from_last(Slist** head, data_t data, Slist** loop_back_node)
{
		if (*head == NULL)//Check if list is empty
		{
				printf("\n%s\n", LIST_IS_EMPTY);
		        return FAILURE;
		}
		if (*loop_back_node)
		{
				printf("\nA loop alrady exists\n");
				return FAILURE;
		}
		//Create a temp pointer to iterate over the list and a loop back node
		Slist* temp = *head;
		while (temp -> link)//Iterate till last node
		{
				if (temp -> data == data)//If given data found
				{
						*loop_back_node = temp;//Assign temp to this node
				}
				temp = temp -> link;
		}
		if (temp -> data == data)
		{
				*loop_back_node = temp;
		}
		if (*loop_back_node)//If the node was found
		{
				temp -> link = *loop_back_node;//Establish a link between last node and given data's node
				return SUCCESS;
		}
		//Data was not found
		printf("\n%d was not found in the list.\n", data);
		return FAILURE;
}

