#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void cleanup(void* arg)
{
		printf("Memory freed\n");
		free(arg);
}

void* thread_fun(void* arg)
{
		//pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, NULL);
		int* ptr = malloc(1000);
		pthread_cleanup_push(cleanup, ptr);
		for (int i = 0; i < 10; i++)
		{
				printf("Inside thread %d\n", i);
				sleep(1);
		}
		pthread_cleanup_pop(1);
		//pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, NULL);
		printf("Loop finished\n");
}

int main()
{
		pthread_t tid;
		pthread_create(&tid, NULL, thread_fun, NULL);
		//sleep(3);
		//pthread_cancel(tid);
		printf("Send request to cancel\n");
		pthread_join(tid, NULL);
		return 0;
}

