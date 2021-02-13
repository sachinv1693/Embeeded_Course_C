#include <stdio.h>
#include <unistd.h>
#define __USE_GNU//Needed for using initializer macro
#include <pthread.h>
#include <errno.h>

//Initialize mutex as error checking mutex
pthread_mutex_t mut = PTHREAD_ERRORCHECK_MUTEX_INITIALIZER_NP;//Recursive mutex

void fun()
{
		//Error message is returned when trying to lock the function again, allowed to lock again though
		if ((pthread_mutex_lock(&mut) == EDEADLK))//Check for Deadlock
		{
				sleep(1);
				printf("Already locked by same thread!!\n");
		}
		else
		{
				printf("Unlocked by fun\n");
				pthread_mutex_unlock(&mut);
		}
}

void* thread_fun(void* arg)
{
		pthread_mutex_lock(&mut);
		printf("Locked by thread\n");
		fun();
		pthread_mutex_unlock(&mut);
		printf("Unlocked by thread!\n");
}

int main()
{
		pthread_t tid1;
		pthread_create(&tid1, NULL, thread_fun, NULL);
		pthread_join(tid1, NULL);
		printf("\n");
		return 0;
}

