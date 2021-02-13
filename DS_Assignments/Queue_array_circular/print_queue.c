#include "queue_struct.h"

void print_queue(Queue q)
{
		//Check if queue is empty
		if (q.count == 0)
		{
				printf("\n%s\n\n", QUEUE_EMPTY);
				return;
		}
		printf("\n");
		//Print current elements in the queue based on number of elements present in the queue
	    while (q.count)
		{
				//Print data at front index
				printf("%d", q.arr[q.front]);
				//Increment front circularly
			    q.front = ((q.front) + 1) % SIZE;
				//Decrement count
				q.count--;
				//Print notation till last element
				if (q.count)
						printf("<-");
		}	
		printf("\n\n");
}

