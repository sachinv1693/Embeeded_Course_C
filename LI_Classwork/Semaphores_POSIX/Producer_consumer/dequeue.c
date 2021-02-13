#include "queue_struct.h"

Status dequeue(Queue** front, Queue** rear, data_t* count)
{
		if (*count == 0)//Check if queue is empty
				return FAILURE;
		else if (*count == 1)//Check if there is only 1 item in queue
		{
				*front = *rear = NULL;//Make the node to point to NULL
				free(*front);//Free the node
		}
		else
		{
				(*rear) -> link = (*front) -> link;//rear's link points to front's link
				*front = NULL;//NULL the front pointer
				free(*front);//Free front address
				*front = (*rear) -> link;//Update front
		}
		(*count)--;//Decrement count
		return SUCCESS;
}

