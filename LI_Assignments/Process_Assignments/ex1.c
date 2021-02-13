#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

void signalHandler(int p)
{
		if (p == SIGCHLD)
		{
				printf("Signal from Child received!\n");
		}
		if (p == SIGTSTP)
		{
			printf("STOP Signal received\n");
		}
		
}

int main(int argc, char* argv[])
{
		struct sigaction act, oldact;
		//Fill all the structure values with 0
		memset(&act, 0, sizeof(act));
		act.sa_handler = signalHandler;//One argument function
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
				//waitpid(pid1, &child_status, WUNTRACED);

				sigaddset(&(act.sa_mask), SIGTSTP);

				sigaction(SIGCHLD, &act, &oldact);
				wait(&child_status);
				/*if (WIFSTOPPED(child_status))
				{			
						printf("Child stopped!\n");
				}*/
				if (WIFEXITED(child_status))
				{
						printf("Child exited with status %d\n\n", WEXITSTATUS(child_status));
				}
		}
		else
		{
				sigaction(SIGCHLD, &act, &oldact);
				//First Child
				printf("\nThis is child process with id %d\n", getpid());
				argv[argc] = NULL;
				//Get the path of the command. Attach the command name to /bin/
				if (execvp(argv[1], argv + 1) == -1)
				{
						printf("Error: Incorrect command provided!\n");
						exit(1);
				}	
		}
		return 0;
}

