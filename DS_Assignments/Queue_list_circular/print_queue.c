#include "queue_struct.h"

void print_queue(Queue* front, Queue* rear)
{
		if (front == NULL)//Check if queue is empty
		{
				printf("\n%s\n\n", QUEUE_EMPTY);
				return;
		}
		printf("\n");
		if (front == rear)//Check if there is only 1 item in the queue
		{
				printf("%d\n\n", front -> data);//print data
				return;
		}
	    while (front != rear)//Move front till it reaches to rear
		{
				printf("%d", front -> data);//print data
				front = front -> link;//Move front to next link
				if (front == rear)//Check if we reach at rear
						printf("<-%d", front -> data);//then print last data
				else
						printf("<-");//else just print notation
		}	
		printf("\n\n");
}

