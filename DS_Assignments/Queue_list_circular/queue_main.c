#include "queue_struct.h"

int main()
{
		//Set front and rear pointer as NULL
		Queue* front = NULL, *rear = NULL;
		char choice;//User choice to continue the program
		data_t opt, data, count = 0;//Set initial count as 0
				do
				{
						printf("-------Menu-------\
										\n1. Enqueue\
										\n2. Dequeue\
										\n3. Print queue\
										\nPlease select your option: ");
						scanf("%d", &opt);//User option
						switch (opt)
						{
								case 1://Enqueue
										printf("\nEnter the integer data: ");
										scanf("%d", &data);
										if (enqueue(&front, &rear, &count, data))
										{
												printf("\nEnqueue successful!\n\n");
										}
										else
										{
												printf("\n%s\nEnqueue failed!\n\n", QUEUE_FULL);
										}
										break;
								case 2://Dequeue
										if (dequeue(&front, &rear, &count))
										{
												printf("\nDequeue successful!\n\n");
										}
										else
										{
												printf("\n%s\nDequeue failed!\n\n", QUEUE_EMPTY);
										}
										break;
								case 3://Print queue
										print_queue(front, rear);
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

