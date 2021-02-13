#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		printf("Before fork %d\n", getpid());
		int pid = fork();
		if (pid != 0)
		{
				printf("This is parent %d\n", getpid());
		}
		else
		{
				printf("This is child %d\n", getpid());
		}
		return 0;
}

