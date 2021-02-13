#include <stdio.h>
#include <pthread.h>

#define NO_OF_THREADS    3

typedef struct thread_arg
{
		int first;
		int last;
}arg_t;

void* thread_fun(void* arg)
{
		arg_t* ptr = (arg_t*)arg;
		unsigned long int fact = 1;
		for (int i = ptr -> first; i <= ptr -> last; i++)
		{
				fact *= i;
		}
		return (void*) fact;
}

int main()
{
		pthread_t tid[NO_OF_THREADS];
		int num;
		arg_t var[NO_OF_THREADS];

		unsigned long int ret[NO_OF_THREADS], result = 1;
		printf("Enter value to find factorial: ");
		scanf("%d", &num);

		//Divide given number in 3 parts
		int partition = num / NO_OF_THREADS;

		for (int i = 0; i < NO_OF_THREADS; i++)
		{
				var[i].first = (i) ? var[i - 1].last + 1 : 1;
				var[i].last = (i == NO_OF_THREADS - 1) ? num : (i + 1) * partition;
		}

		for (int i = 0; i < NO_OF_THREADS; i++)
		{
				pthread_create(&tid[i], NULL, thread_fun, &var[i]);
				pthread_join(tid[i], (void**) &ret[i]);
				result *= ret[i];
		}

		printf("Calculating factorial using %d threads = %lu\n", NO_OF_THREADS, result);
		printf("\n");
}

