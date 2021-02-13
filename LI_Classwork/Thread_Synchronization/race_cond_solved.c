#include <stdio.h>
#include <pthread.h>

int x;
pthread_mutex_t mut;

void* thread_fun(void* arg)
{
		while (1)
		{
				pthread_mutex_lock(&mut);
				x = 5;
				x += 10;
				printf("%d\n", x);
				pthread_mutex_unlock(&mut);
		}
}

int main()
{
		pthread_mutex_init(&mut, NULL);
		pthread_t tid1, tid2;
		pthread_create(&tid1, NULL, thread_fun, NULL);
		pthread_create(&tid2, NULL, thread_fun, NULL);
		pthread_join(tid1, NULL);
		pthread_join(tid2, NULL);
		printf("\n");
		return 0;
}

