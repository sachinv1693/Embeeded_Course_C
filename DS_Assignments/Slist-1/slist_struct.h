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
Status insert_at_last(Slist** head, data_t data);
Status insert_at_first(Slist** head, data_t data);
Status delete_first(Slist** head);
Status delete_last(Slist** head);
Status delete_list(Slist** head);
Status delete_element(Slist** head, data_t data);
data_t find_node(Slist** head, data_t data);
void print_list(Slist* head);

#endif

