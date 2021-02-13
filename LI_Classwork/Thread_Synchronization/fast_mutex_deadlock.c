#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

//Initialize mutex as fast mutex
pthread_mutex_t mut = PTHREAD_MUTEX_INITIALIZER;//Fast mutex... Blocks fun() forever "DEADLOCK"

//Task performed inside thread function
void fun()
{
		//Locking the critical fun() which was already locked --not allowed
		pthread_mutex_lock(&mut);
		//So now fun() is blocked forever
		printf("Locked by fun\n");
		sleep(1);
		//Unlock the the critical fun()
		pthread_mutex_unlock(&mut);
		printf("Unlocked by fun\n");
}

void* thread_fun(void* arg)
{
		pthread_mutex_lock(&mut);//Lock the critical section
		printf("Locked by thread\n");
		fun();
		pthread_mutex_unlock(&mut);
		printf("Unlocked by thread!\n");//Unlock critical section
}

int main()
{
		pthread_t tid1;
		pthread_create(&tid1, NULL, thread_fun, NULL);
		pthread_join(tid1, NULL);
		printf("\n");
		return 0;
}

