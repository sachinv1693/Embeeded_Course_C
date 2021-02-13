#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char* argv[])
{
		if (argc < 2)
		{
				printf("\nERROR: No arguments passed!\nPlease pass a linux command as command line arguments\nEg: ./exec_child ls -l\n\n");
				return -1;
		}
		pid_t pid1 = fork();
		if (pid1)
		{
				//Parent
				int child_status;
				wait(&child_status);
				if (WIFEXITED(child_status))
				{
						printf("Child exited with status %d\n\n", WEXITSTATUS(child_status));
				}
		}
		else
		{
				//First Child
				printf("\nThis is child process with id %d\n", getpid());
				argv[argc] = NULL;
				//Get the path of the command. Attach the command name to /bin/
				//Command name is 
				if (execvp(argv[1], argv + 1) == -1)
				{
						printf("Error: Incorrect command provided!\n");
						exit(1);
				}	
		}
		return 0;
}

