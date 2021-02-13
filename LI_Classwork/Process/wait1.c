#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
		pid_t child_pid;
		child_pid = fork();

		if (child_pid)
		{
				printf("This is parent\n");
				int status;
				pid_t child;
				//child = wait(&status);//Wait till child terminates
				//We can use waitpid with no option (0) meaning wait for the child process whose group ID is equal to that of the calling process.
				child = waitpid(child_pid, &status, 0);
				if (WIFEXITED(status))
				{
						printf("Child terminated normally with status %d\n", WEXITSTATUS(status));
				}
				else
				{
						printf("Child terminated abnormally\n");
				}
		}
		else
		{
				sleep(10);
				printf("This is child\n");
				//return 30;
				abort();
		}
}
