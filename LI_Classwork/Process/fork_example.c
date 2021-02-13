#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		int pid = getpid();
		printf("Before fork %d\n", pid);
		fork();
		if (pid == getpid())
		{
				printf("This is parent %d\n", getpid());
		}
		else
		{
				printf("This is child %d\n", getpid());
		}
		printf("Using ppid, parent pid = %d\n", getppid());
		return 0;
}

