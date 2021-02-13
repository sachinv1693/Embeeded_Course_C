#ifndef QUEUE_H
#define QUEUE_H

#include <stdio.h>
#include <stdlib.h>

#define SIZE          5

#define QUEUE_EMPTY   "Queue is empty"
#define QUEUE_FULL    "Queue is full"

typedef int data_t;

typedef struct node
{
		data_t data;
		struct node* link;
}Queue;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status enqueue(Queue** front, Queue** rear, data_t* count, data_t data);
Status dequeue(Queue** front, Queue** rear, data_t* count);
void print_queue(Queue* front, Queue* rear);

#endif

