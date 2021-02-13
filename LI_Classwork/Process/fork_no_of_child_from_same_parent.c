#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		int pid1 = fork();
		if (pid1 != 0)
		{
				int pid2 = fork();
				if (pid2 != 0)
						printf("Same parent\n");
				else
						printf("This is child 2\n");
		}
		else
		{
				printf("This is child 1\n");
		}
		return 0;
}

