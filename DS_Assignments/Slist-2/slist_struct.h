#ifndef SLIST_H
#define SLIST_H

#include <stdio.h>
#include <stdlib.h>

#define LIST_IS_EMPTY "List is empty"

typedef int data_t;

typedef struct node
{
		data_t data;
		struct node* link;
}Slist;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status insert_at_first(Slist** head, data_t data);
Status insert_after(Slist** head, data_t data, data_t new_data);
Status insert_before(Slist** head, data_t data, data_t new_data);
Status delete_element_pos(Slist** head, data_t pos);
Status insert_nth(Slist** head, data_t pos, data_t data);
void print_list(Slist* head);

#endif

