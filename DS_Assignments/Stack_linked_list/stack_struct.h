#ifndef STACK_H
#define STACK_H

#include <stdio.h>
#include <stdlib.h>

#define STACK_IS_EMPTY      "Stack is empty"

typedef int data_t;

typedef struct node
{
		data_t data;
		struct node* link;
}Stack;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status push(Stack** top, data_t data);
Status pop(Stack** top);
data_t peek(Stack* top);
void peep(Stack* top);

#endif

