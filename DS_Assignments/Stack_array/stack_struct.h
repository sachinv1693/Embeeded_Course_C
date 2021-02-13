#ifndef STACK_H
#define STACK_H

#include <stdio.h>
#include <stdlib.h>

#define SIZE                5
#define STACK_IS_EMPTY      "Stack is empty"
#define STACK_IS_FULL       "Stack is full"

typedef int data_t;

typedef struct node
{
		data_t top;
		data_t arr[SIZE];
}Stack;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status push(Stack* s, data_t data);
Status pop(Stack* s);
data_t peek(Stack* s);
void peep(Stack* s);

#endif

