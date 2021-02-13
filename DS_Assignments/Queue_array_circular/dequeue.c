#include "queue_struct.h"

Status dequeue(Queue* q)
{
		//If queue is empty, cannot dequeue
		if (q -> count == 0)
				return FAILURE;
		//Increment front and update count
		q -> front = ((q -> front) + 1) % SIZE;
		(q -> count)--;
		return SUCCESS;
}

