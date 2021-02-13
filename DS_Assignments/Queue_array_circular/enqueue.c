#include "queue_struct.h"

Status enqueue(Queue* q, data_t data)
{
		//Check if queue is full
		if (q -> count == SIZE)
				return FAILURE;
		//If queue is empty, increment front
		if (q -> front == -1)
				(q -> front)++;
		//Increment rear and assign value
		q -> rear = ((q -> rear) + 1) % SIZE;
		(q -> arr)[q -> rear] = data;
		//Increment count
		(q -> count)++;
		return SUCCESS;
}

