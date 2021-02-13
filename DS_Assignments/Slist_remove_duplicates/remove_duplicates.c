#include "slist_struct.h"

Status remove_duplicates(Slist** head)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
				return FAILURE;
		}
		//We have at least one node in the list
		//Create a pointer to traverse the linked list
		Slist* scan_node = *head;
		while (scan_node)//Traversing till the last node
		{
				//Store the data of each node
				data_t scan_data = scan_node -> data;
				//Have one more copy of the pointer to iterate and check for the duplicates in remaining nodes
				Slist* temp_node = scan_node;
				while (temp_node)//Check till the very end of list
				{
						if ((temp_node -> link) && (temp_node -> link -> data == scan_data))
						{
								//Store the address of the link to be removed
								Slist* to_be_removed = temp_node -> link;
								//Attach next link's link to current node
								temp_node -> link = temp_node -> link -> link;
								free(to_be_removed);//Free memory
								//Set the pointer to be removed as NULL
								to_be_removed = NULL;
								if (temp_node -> link && temp_node -> link -> data == scan_data)
										continue;//Remove consecutively found duplicates
						}
						temp_node = temp_node -> link;//Check more duplicates
				}
				scan_node = scan_node -> link;//Move to next node
		}
		return SUCCESS;
}

