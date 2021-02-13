#include <stdio.h>
#include <pthread.h>

typedef struct thread_arg
{
		char ch;
		int count;
}arg_t;

void* thread_fun(void* arg)
{
		arg_t* ptr = (arg_t*)arg;
		int i = ptr -> count;
		while(i--)
		{
				fputc(ptr -> ch, stderr);
		}
}

int main()
{
		pthread_t tid1,tid;
		arg_t var, var2;
		printf("Enter char1 and count1\n");
		scanf("\n%c %d", &var.ch, &var.count);
		printf("Enter char2 and count2\n");
		scanf("\n%c %d", &var2.ch, &var2.count);
		pthread_create(&tid, NULL, thread_fun, &var);
		pthread_create(&tid1, NULL, thread_fun, &var2);
         
		pthread_join(tid, NULL);
		pthread_join(tid1, NULL);
		/*
		while(var2.count--)
		{
				fputc(var2.ch, stderr);
		}
		*/
		printf("\n");
}

