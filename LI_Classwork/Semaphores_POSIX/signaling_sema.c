#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

//Initialize semaphore
sem_t sem;

void* thread_1(void* arg)
{
		printf("Thread %lu waiting for work to be done\n", pthread_self());
		sem_wait(&sem);
		printf("Job starting after work\n");
}

void* thread_2(void* arg)
{
		printf("Thread %lu starting work\n", pthread_self());
		sleep(5);
		sem_post(&sem);
}

int main()
{
		sem_init(&sem, 0, 0);
		pthread_t tid1, tid2;

		pthread_create(&tid1, NULL, thread_1, NULL);
		pthread_create(&tid2, NULL, thread_2, NULL);

		pthread_join(tid1, NULL);
		pthread_join(tid2, NULL);

		printf("\n");
		return 0;
}

