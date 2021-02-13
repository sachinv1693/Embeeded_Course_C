#include <stdio.h>
#include <unistd.h>
#define __USE_GNU
#include <pthread.h>

//Initialize mutex as recursive mutex
pthread_mutex_t mut = PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP;//Recursive mutex

void fun()
{
		//Lock the critical fun() which was already locked
		pthread_mutex_lock(&mut);
		//This is allowed... But unlock this section as many times as it is called 
		printf("Locked by fun\n");
		sleep(1);
		pthread_mutex_unlock(&mut);//Unlock the critical fun()
		printf("Unlocked by fun\n");
}

void* thread_fun(void* arg)
{
		pthread_mutex_lock(&mut);//Lock the critical section
		printf("Locked by thread\n");
		fun();
		pthread_mutex_unlock(&mut);//Unlock the critical section
		printf("Unlocked by thread!\n");
}

int main()
{
		pthread_t tid1, tid2;
		pthread_create(&tid1, NULL, thread_fun, NULL);
		pthread_create(&tid2, NULL, thread_fun, NULL);
		pthread_join(tid1, NULL);
		pthread_join(tid2, NULL);
		printf("\n");
		return 0;
}

