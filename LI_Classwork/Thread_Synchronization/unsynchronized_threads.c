#include <stdio.h>
#include <pthread.h>

//Global variable --accessible from all functions
int x;

void* thread_fun(void* arg)//Task which can be called from multiple threads
{
		while (1)
		{
				x = 5;//Initialize x
				x += 10;//Change x
				printf("%d\n", x);//Print x
		}
}
/* Since 2 threads will access the same global variable x, unexpected output is traced */
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

