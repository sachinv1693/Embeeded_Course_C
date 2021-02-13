#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

//Initialize semaphore
sem_t sem;

void* thread_fun(void* arg)
{
		//Lock the critical fun() which was already locked
		sem_wait(&sem);
		printf("Thread %lu got semaphore\n", pthread_self());
		sleep(3);
		sem_post(&sem);
		printf("Thread %lu released semaphore\n", pthread_self());
}

int main()
{
		sem_init(&sem, 0, 3);
		pthread_t tid[5];
		for (int i = 0; i < 5; i++)
				pthread_create(&tid[i], NULL, thread_fun, NULL);
		for (int i = 0; i < 5; i++)
				pthread_join(tid[i], NULL);
		printf("\n");
		return 0;
}

