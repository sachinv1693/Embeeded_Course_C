#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
		pid_t pid1 = fork();
		if (pid1)
		{
				//Parent
				int status;
				do
				{
						printf("Parent is running\n");
				} while (pid1 != waitpid(pid1, &status, WNOHANG));
				printf("Child %d terminated normally with exit status %d\n\n", pid1, WEXITSTATUS(status));
				return 0;
		}
		else
		{
				//First Child
				printf("A child is created with pid %d\n", getpid());
				sleep(0.1);
				return 0;
		}
}

