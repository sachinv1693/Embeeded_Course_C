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
Status find_mid(Slist** head, data_t* mid);
Status get_nth_from_last(Slist** head, data_t pos);
void print_list(Slist* head);

#endif

