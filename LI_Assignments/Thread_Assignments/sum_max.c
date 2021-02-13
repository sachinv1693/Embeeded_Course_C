#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#define NO_OF_THREADS    5

/* Global variables (By default initialized to 0) */
int global_sum,//Stores sum
	global_max,//Stores the max value
	N;//Stores user entry

//Initialize mutex as fast mutex
pthread_mutex_t mut = PTHREAD_MUTEX_INITIALIZER;

/* A structure to hold multiple arguments */
typedef struct thread_arg
{
		int* arr;
		int first;
		int last;
		int thread_num;
}arg_t;

void* thread_fun(void* arg)
{
		arg_t* ptr = (arg_t*)arg;
		pthread_mutex_lock(&mut);//Lock the shared resource
		//Initialize first index as last + 1 and last index as respective thread num times thread partition
		ptr -> first = ptr -> last + 1;
		ptr -> last = (ptr -> thread_num) * N / NO_OF_THREADS;
		for (int i = ptr -> first; i <= ptr -> last; i++)
		{
				//Add each element to calculate sum
				global_sum += ptr -> arr[i - 1];
				//Check if array element is greater than max value and update max value
				if (ptr -> arr[i - 1] > global_max)
						global_max = ptr -> arr[i - 1];
		}
		++(ptr -> thread_num);//Increment thread num
		pthread_mutex_unlock(&mut);//Unlock the shared resource
}

int main()
{
		printf("Enter the value of N (>= 500): ");
		scanf("%d", &N);
		if (N < 500)
		{
				printf("Error: Please enter a value greater than or equal to 500\n\n");
				return -1;
		}

		pthread_t tid[NO_OF_THREADS];//Thread Ids
		arg_t var;//Structure variable

		var.arr = malloc(N * sizeof(int));
		for (int i = 0; i < N; i++)
		{
				var.arr[i] = i + 1;
		}
		var.last = 0;//Initialize last element as 0
		var.thread_num = 1;//Initialize thread num as 1

		//Thread create
		for (int i = 0; i < NO_OF_THREADS; i++)
		{
				pthread_create(&tid[i], NULL, thread_fun, &var);
		}

		//Thread join
		for (int i = 0; i < NO_OF_THREADS; i++)
		{
				pthread_join(tid[i], (void**) NULL);
		}

		free(var.arr);//Free up dynamic memory space
		//Display results
		printf("Max value using %d threads = %d\n", NO_OF_THREADS, global_max);
		printf("Sum using %d threads = %d\n\n", NO_OF_THREADS, global_sum);
}

