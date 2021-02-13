#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/shm.h>
#include <fcntl.h>
#include <unistd.h>

void convert_to_uppercase(char* s)
{
		while(*s != '\0')
		{
				if (*s >= 'a' && *s <= 'z')
						*s -= 32;
				s++;
		}
}

int main()
{
		int fds[2];
		pipe(fds);
		pid_t pid1 = fork();
		if (pid1)
		{
				char str[80] = {'\0'};//Store a string
				printf("Enter a string: ");
				scanf("%[^\n]", str);
				int size = strlen(str);
				//Close read end & write from pipe
				close(fds[0]);
				write(fds[1], &size, sizeof(int));//Write 1 byte size
				write(fds[1], str, size);//Write the string itself
				close(fds[1]);
				//Get status of both child processes
				int status1;
				wait(&status1);
				if (WIFEXITED(status1))//Check if P2 is terminated
				{
						printf("P2 is terminated normally\n");
				}
				//Read from FIFO
				//Open the FIFO file "TO_FIFO" in read only mode
				int fd = open("TO_FIFO", O_RDONLY);
				if (fd == -1)//Handle the error while opening the file
				{
						perror("open");
						return -1; 
				}
				read(fd, &size, sizeof(int));//Read 4 byte size value from FIFO file
				//A string of obtained size
				char* result_str = calloc((size + 1), sizeof(char));
				read(fd, result_str, size);//Read the string from the file
				close(fd);
				printf("Resultant string is: %s\n", result_str);
				free(result_str);
				return 0;
		}
		else
		{
				//Process P2
				//Read the string
				char read_str[80] = {'\0'};
				int size;
				//Close write end & read from pipe
				close(fds[1]);
				read(fds[0], &size, sizeof(int));//Write 1 byte size
				read(fds[0], read_str, size);//Write the string itself
				close(fds[0]);
				convert_to_uppercase(read_str);//Convert the string into uppercase
				printf("String read from pipe & case converted by P2 as: %s\nNow P2 stores the modified string into shared memory\n", read_str);
				//Now write the string into shared memory & display on the screen
				int shmid = shmget('B', 80, IPC_CREAT | 0664);
				//Attach a ponter to the starting address of shared mem
				char* ptr = shmat(shmid, NULL, 0);
				//Copy the string into shared memory
				strcpy(ptr, read_str);
				shmdt(ptr);//Detach the process P2
		}
		return 0;
}

