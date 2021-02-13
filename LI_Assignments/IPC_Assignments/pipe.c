#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char* argv[])
{
		if (argc < 4)
		{
				printf("\nError: No or invalid number of arguments passed!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		char pipe_found = 0, i;
		for (i = 0; i < argc; i++)
		{
				if (!strcmp(argv[i], "|"))
				{
						pipe_found = i;
						break;
				}
		}
		if (pipe_found == 1)//Check if 1st argument itself is pipe
		{
				printf("Error: 1st command is missing!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		else if (pipe_found == argc - 1)//Check if last argument is pipe
		{
				printf("Error: 2nd command is missing!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		else if (!pipe_found)//Error if pipe was not found
		{
				printf("Error: Pipe command '|' is missing!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		int fds[2];
		pipe(fds);
		/* //Debug messages
		printf("Read fd is at %d\n", fds[0]);
		printf("Write fd is at %d\n", fds[1]);
		*/
		pid_t pid1 = fork();
		if (pid1)
		{
				//Parent
				pid_t pid2 = fork();
				if (pid2)
				{
						//Pipe is not at all used by parent process. So close both pipe ends in parent process
						close(fds[0]);//Close read end
						close(fds[1]);//Close write end
						//Same Parent
						int child_status1, child_status2;
						waitpid(pid1, &child_status1, 0);
						/* //Debug message
						if (WIFEXITED(child_status1))
						{
								printf("Child 1 terminated normally with exit code %d!\n", WEXITSTATUS(child_status1));
						}
						*/
						waitpid(pid2, &child_status2, 0);
					    /* //Debug message
						if (WIFEXITED(child_status2))
						{
								printf("Child 2 terminated normally with exit code %d!\n", WEXITSTATUS(child_status2));
						}
						*/
				}
				else
				{
						//Second Child
						close(fds[1]);//Close the write end & read from pipe
						//Duplicate stdin with pipe file from read end
						close(0);
						dup(fds[0]);
						//Above 2 lines can also be written as
						//dup2(fds[0], 0);
						//Assign NULL to last argument and pass the next argument's address after the pipe is found to execute the command
						argv[argc] = NULL;
						if (execvp(argv[pipe_found + 1], argv + pipe_found + 1) == -1)
						{
								printf("Error: Incorrect 2nd command provided!\n");
								exit(1);
						}
				}
		}
		else
		{
				//First Child
				close(fds[0]);//Close read end & write output into the pipe
				//Duplicate stdout with pipe file from write end
				close(1);
				dup(fds[1]);
				//Above 2 lines can be also written as
				//dup2(fds[1], 1);
				//Assign NULL to the argument where pipe is found and pass the 1st argument's address to execute the command
				argv[pipe_found] = NULL;
				if (execvp(argv[1], argv + 1) == -1)
				{
						printf("Error: Incorrect 1st command provided!\n");
						exit(1);
				}
		}
}

