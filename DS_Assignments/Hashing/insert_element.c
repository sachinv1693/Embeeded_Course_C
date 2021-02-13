#include "main.h"

Status insert_element(Hash_t a[], data_t data)
{
		//Calculate the key(index) using hash function
		data_t key = HASH_FUNCTION(data);
		//Check if any value is not present at the given key(index)
		if (a[key].value == -1)
		{
				a[key].value = data;
				return SUCCESS;
		}
		//Create a new node
		Hash_t* new = malloc(sizeof(Hash_t));
		//Check if memory is allocated or not
		if (new == NULL)
		{
				printf("Unable to allocate dynamic memory!\n");
				return FAILURE;
		}
		//Copy obtained key(index) to new node's key
		new -> key = key;
		//Assign new node's value as data and its link as NULL
		new -> value = data;
		new -> link = NULL;
		//Keep the 1st node's address in a temp pointer
		Hash_t* temp = &a[key];
		//Reach at the last node of the Hash table
		while (temp -> link)
		{
				temp = temp -> link;
		}
		//Establish link between last node and new node
		temp -> link = new;
		return SUCCESS;
}

