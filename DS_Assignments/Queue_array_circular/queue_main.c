#include "queue_struct.h"

int main()
{
		Queue q;
		//Allocate front & rear to -1 initially and make the count as 0
		q.front = q.rear = -1, q.count = 0;
		char choice;
		data_t opt, data, node_number;
				do
				{
						printf("-------Menu-------\
										\n1. Enqueue\
										\n2. Dequeue\
										\n3. Print queue\
										\nPlease select your option: ");
						scanf("%d", &opt);
						switch (opt)
						{
								case 1://Enqueue
										printf("\nEnter the integer data: ");
										scanf("%d", &data);
										if (enqueue(&q, data))
										{
												printf("\nEnqueue successful!\n\n");
										}
										else
										{
												printf("\n%s\nEnqueue failed!\n\n", QUEUE_FULL);
										}
										break;
								case 2://Dequeue
										if (dequeue(&q))
										{
												printf("Dequeue successful!\n\n");
										}
										else
										{
												printf("\n%s\nDequeue failed!\n\n", QUEUE_EMPTY);
										}
										break;
								case 3://Print queue
										print_queue(q);
										break;
								default://Invalid option
										printf("Error: Invalid option.\n\n");
						}
						printf("Do you want to continue (y / n)? ");
						scanf("\n%c", &choice);
				}
				while (choice == 'y');
		return 0;
}

