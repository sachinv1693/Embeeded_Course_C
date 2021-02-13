#ifndef DLIST_H
#define DLIST_H

#include <stdio.h>
#include <stdlib.h>

#define LIST_IS_EMPTY "List is empty"

typedef int data_t;

typedef struct node
{
		struct node* prev;
		data_t data;
		struct node* next;
}Dlist;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status insert_at_first(Dlist** head, Dlist** tail, data_t data);
Status insert_after(Dlist** head, Dlist** tail, data_t data, data_t new_data);
Status insert_before(Dlist** head, Dlist** tail, data_t data, data_t new_data);
Status delete_element(Dlist** head, Dlist** tail, data_t data);
void print_list(Dlist* head);

#endif

