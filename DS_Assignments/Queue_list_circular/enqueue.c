#include "queue_struct.h"

Status enqueue(Queue** front, Queue** rear, data_t* count, data_t data)
{
		if (*count == SIZE)//Check if queue is full
				return FAILURE;
		//Create a new node
		Queue* new = malloc(sizeof(Queue));
		//Check if memory allocated or not
		if (new == NULL)
		{
				printf("\nUnable to allocate dynamic memory\n");
				return FAILURE;
		}
		//Assign data to new node
		new -> data = data;
		if (*count == 0)//Check if 1st item is enqueued
		{
				new -> link = new;//circularly new's link points to itself
				*front = *rear = new;//Both front and rear point to new
				(*count)++;//Increment count
				return SUCCESS;
		}
		(*rear) -> link = new;//rear's link points to new address
		new -> link = *front;//new's link circularly points to front
		*rear = new;//Update rear
		(*count)++;//Increment count
		return SUCCESS;
}

