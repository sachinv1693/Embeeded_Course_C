#include <stdio.h>
#include "queue_struct.h"
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

//Initialize semaphore
sem_t full, empty;

//Set front and rear podata_ter as NULL
Queue* front = NULL, *rear = NULL;
data_t opt, data, count = 0;//Set initial count as 0

void* producer(void* arg)
{
		for (data_t data = 0; data < 10; data++)
		{
				printf("Producer thread %lu\n", pthread_self());
				printf("Full %ld\n", full);
				sem_wait(&full);
				if (enqueue(&front, &rear, &count, data))
				{
						printf("\nEnqueue successful!\n\n");
						print_queue(front, rear);
				}
				else
				{
						printf("\n%s\nEnqueue failed!\n\n", QUEUE_FULL);
				}
				printf("Job added to queue\n");
				sem_post(&empty);
		}
}

void* consumer(void* arg)
{
		for (data_t i = 0; i < 10; i++)
		{
				printf("Thread %lu starting work\n", pthread_self());
				sem_wait(&empty);
				if (dequeue(&front, &rear, &count))
				{
						printf("\nDequeue successful!\n\n");
						print_queue(front, rear);
				}
				else
				{
						printf("\n%s\nDequeue failed!\n\n", QUEUE_EMPTY);
				}
				printf("Job done from queue\n");
				sem_post(&full);
		}
}

data_t main()
{
		sem_init(&full, 0, 5);
		sem_init(&empty, 0, 0);
		pthread_t tid1, tid2;

		pthread_create(&tid1, NULL, producer, NULL);
		pthread_create(&tid2, NULL, consumer, NULL);

		pthread_join(tid1, NULL);
		pthread_join(tid2, NULL);

		printf("\n");
		return 0;
}

