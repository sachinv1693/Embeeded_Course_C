#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		if (fork())
		{
				printf("This is parent %d\n", getpid());
				sleep(50);
		}
		else
		{
				printf("Child %d terminated", getpid());
				return 0;
		}
		return 0;
}

