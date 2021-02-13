#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define DEBUG_ON    0

int index_of_pipe(char index, int argc, char* argv[])
{
		while (index != argc)
		{
				if (!strcmp(argv[index], "|"))
				{
						return index;
				}
				index++;
		}
}

int main(int argc, char* argv[])
{
		if (argc <= 5)//Error if no or invalid no. of arguments given
		{
				printf("\nError: No or invalid no. of arguments passed!\nUsage: ./pipe <command1> '|' <command2> '|' <command3>\n\n");
				return -1;
		}
		//Iterator 'i' to check arguments, index of pipe1 and pipe2 cmds
		char pipe_1_found = 0, pipe_2_found = 0;
		pipe_1_found = index_of_pipe(0, argc, argv);
		pipe_2_found = index_of_pipe(pipe_1_found + 1, argc, argv);
#if DEBUG_ON
		printf("Pipe 1 found at = %d\n", pipe_1_found);
		printf("Pipe 2 found at = %d\n", pipe_2_found);
#endif
		if (!pipe_1_found || !pipe_2_found)//Error if pipe was not found
		{
				printf("Error: Either 1 or both the pipe command/s '|' missing!\nUsage: ./pipe <command1> '|' <command2> '|' <command3>\n\n");
				return -1;
		}
		else if (pipe_1_found == 1 || pipe_2_found == 1)//Check if 1st argument itself is pipe
		{
				printf("Error: 1st command is missing!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		else if (pipe_2_found == pipe_1_found + 1)//Check there are consecutive pipes
		{
				printf("Error: 2nd command is missing!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		else if (pipe_1_found == argc - 1 || pipe_2_found == argc - 1)//Check if last argument is pipe
		{
				printf("Error: 3rd command is missing!\nUsage: ./pipe <command1> '|' <command2>\n\n");
				return -1;
		}
		// Create 2 pipes and 2 pipe_fd arrays
		int pipe1_fds[2];
		int pipe2_fds[2];
		pipe(pipe1_fds);
		pipe(pipe2_fds);
#if DEBUG_ON
		printf("Read fd is at %d\n", fds[0]);
		printf("Write fd is at %d\n", fds[1]);
#endif
		pid_t pid1 = fork();
		if (pid1)
		{
				//Parent
				pid_t pid2 = fork();
				if (pid2)
				{
						//Same Parent
						pid_t pid3 = fork();
						if (pid3)
						{
								//Pipe is not at all used by parent process. So close both pipe ends in parent process
								close(pipe1_fds[0]);//Close pipe1 read end
								close(pipe1_fds[1]);//Close pipe1 write end
								close(pipe2_fds[0]);//Close pipe2 read end
								close(pipe2_fds[1]);//Close pipe2 write end
								int child_status1, child_status2, child_status3;
								waitpid(pid1, &child_status1, 0);
#if DEBUG_ON
								if (WIFEXITED(child_status1))
								{
										printf("Child 1 terminated normally with exit code %d!\n", WEXITSTATUS(child_status1));
								}
#endif
								waitpid(pid2, &child_status2, 0);
#if DEBUG_ON
								if (WIFEXITED(child_status2))
								{
										printf("Child 2 terminated normally with exit code %d!\n", WEXITSTATUS(child_status2));
								}
#endif
								waitpid(pid3, &child_status3, 0);
#if DEBUG_ON
								if (WIFEXITED(child_status2))
								{
										printf("Child 2 terminated normally with exit code %d!\n", WEXITSTATUS(child_status2));
								}
#endif
						}
						else
						{
								//Third child
								//Close both ends of pipe-1
								close(pipe1_fds[0]);
								close(pipe1_fds[1]);
								close(pipe2_fds[1]);//Close the write end & read from pipe-2
								//Duplicate stdin with pipe file from read end
								close(0);
								dup(pipe2_fds[0]);
								//Above 2 lines can also be written as
								//dup2(fds[0], 0);
								//Assign NULL to last argument and pass the next argument's address after the pipe is found to execute the command
								argv[argc] = NULL;
								if (execvp(argv[pipe_2_found + 1], argv + pipe_2_found + 1) == -1)
								{
										printf("Error: Incorrect 2nd command provided!\n");
										exit(1);
								}
						}
				}
				else
				{
						//Second Child
						close(pipe1_fds[1]);//Close the write end of pipe-1
						//Duplicate stdin with pipe1 file from read end
						close(0);
						dup(pipe1_fds[0]);
						close(pipe2_fds[0]);//Close the write end & read from pipe-2
						//Duplicate stdout with pipe2 file from write end
						close(1);
						dup(pipe2_fds[1]);
						//Above 2 lines can also be written as
						//dup2(fds[0], 0);
						//Assign NULL to the argument where pipe2 is found and pass the 1st argument's address to execute the command
						argv[pipe_2_found] = NULL;
						if (execvp(argv[pipe_1_found + 1], argv + pipe_1_found + 1) == -1)
						{
								printf("Error: Incorrect 2nd command provided!\n");
								exit(1);
						}
				}
		}
		else
		{
				//First Child
				//Close both ends of pipe-2
				close(pipe2_fds[0]);
				close(pipe2_fds[1]);
				close(pipe1_fds[0]);//Close read end & write output into the pipe-1
				//Duplicate stdout with pipe file from write end
				close(1);
				dup(pipe1_fds[1]);
				//Above 2 lines can be also written as
				//dup2(fds[1], 1);
				//Assign NULL to the argument where pipe1 is found and pass the 1st argument's address to execute the command
				argv[pipe_1_found] = NULL;
				if (execvp(argv[1], argv + 1) == -1)
				{
						printf("Error: Incorrect 1st command provided!\n");
						exit(1);
				}
		}
}

