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
		data_t arr[SIZE];
		data_t front, rear, count;
}Queue;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status enqueue(Queue* q, data_t data);
Status dequeue(Queue* q);
void print_queue(Queue q);

#endif

