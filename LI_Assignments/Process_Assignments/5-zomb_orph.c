#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <unistd.h>

void print_status(pid_t pid)
{
		char str[20] = {'\0'};
		sprintf(str, "/proc/%d/status", pid);
		int fd = open(str, O_RDONLY);
		char ch, no_of_lines = 0;
		while (no_of_lines != 3)
		{
				read(fd, &ch, 1);
				printf("%c", ch);
				if (ch == '\n')
						no_of_lines++;
		}
		close(fd);
}

int main()
{
		pid_t pid1 = fork();//pid1 is child-1's pid in parent
		if (pid1)
		{
				//Parent
				pid_t pid2 = fork();
				if (pid2)
				{
						//Same parent
						//Print the status of sleeping child
						sleep(1);
						print_status(pid1);
						sleep(3);
						//Now child 1 is zombie
						print_status(pid1);
				}
				else
				{
						//Second Child
						//Print status of parent
						sleep(6);
						printf("Process %d cleared by init\n\n", pid1);
				}
		}
		else
		{
				//First Child
				printf("A child is created with pid %d\n\n", getpid());
				sleep(3);
		}
		return 0;
}

