#include <stdio.h>
#include <pthread.h>

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
		pthread_t tid[3];
		int num;
		arg_t var[3];

		unsigned long int ret[3], result = 1;
		printf("Enter value to find factorial\n");
		scanf("%d", &num);

		//Segregate the number into 3 separate ranges
		//eg: 15 --> (1--5), (6--10), (11--15)

		//Divide given number in 3 parts
		int partition = num / 3;
		/*
		var[0].first = 1;
		var[0].last = partition;

		var[1].first = partition + 1;
		var[1].last = 2 * partition;

		var[2].first = var[1].last + 1;
		var[2].last = num;
		*/

		for (int i = 0; i < 3; i++)
		{
				var[i].first = (i) ? var[i - 1].last + 1 : 1;
				var[i].last = (i == 2) ? num : (i + 1) * partition;
				//printf("Thread %d: first: %d, last: %d\n", i + 1, var[i].first, var[i].last);
		}

		for (int i = 0; i < 3; i++)
		{
				pthread_create(&tid[i], NULL, thread_fun, &var[i]);
				pthread_join(tid[i], (void**) &ret[i]);
				result *= ret[i];
		}

		printf("factorial = %lu\n", result);
		/*
		while(var2.count--)
		{
				fputc(var2.ch, stderr);
		}
		*/
		printf("\n");
}

