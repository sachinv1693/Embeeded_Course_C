#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		if (fork())
		{
				sleep(1);
				printf("This is parent %d\n", getpid());
		}
		else
		{
				printf("This is child id %d, parent id is  %d\n", getpid(), getppid());
				sleep(2);
				printf("This is child id %d, parent id is  %d\n", getpid(), getppid());
		}
		return 0;
}

