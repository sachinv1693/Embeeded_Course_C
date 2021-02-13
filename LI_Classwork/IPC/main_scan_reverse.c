#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/shm.h>
#include <fcntl.h>
#include <unistd.h>

void strrev(char* s, char size, char iter)
{
        //Swap lower half of the string with its upper half
        if (iter < (size) / 2)
        {
                //Using XOR swapping technique 
                s[iter] ^= s[size - 1 - iter];
                s[size - 1 - iter] ^= s[iter];
                s[iter] = s[size - 1 - iter] ^ s[iter];
                //Recursive call with incremented iter value
                strrev(s, size, ++iter);
        }
        //Implicit return
}

int main()
{
		char str[80];//Store a string
		printf("Enter a string: ");
		scanf("%[^\n]", str);
		char size = strlen(str);//Get the size of the string
		int fds[2];
		pipe(fds);
		pid_t pid1 = fork();
		if (pid1)
		{
				pid_t pid2 = fork();
				//Process P1
				if (pid2)
				{
						//Close read end & write through the pipe
						close(fds[0]);
						write(fds[1], &size, 1);//Write 1 byte size
						write(fds[1], str, size);//Write the string itself
						//Get status of both child processes
						int status1, status2;
						wait(&status1);
						if (WIFEXITED(status1))//Check if P2 is terminated
						{
								printf("String reversing is done by P2!\nStored the string onto the TO_FIFO & P2 is terminated normally\n");
						}
						wait(&status2);
						if (WIFEXITED(status2))//Check if P3 is terminated
						{
								printf("String converted to uppercase by P3!\nNow this string is stored in shared memory & P3 is terminated normally\n");
						}
						//Now read the string from shared memory & display on the screen
					    int shmid = shmget('B', size, IPC_CREAT | 0664);
						//Attach a ponter to the starting address of shared mem
					    char* read_sh = shmat(shmid, NULL, 0);
					    printf("Reversed & case converted string reading from P1: %s\n", read_sh);
					    shmdt(read_sh);//Detach the process P1
					    shmctl(shmid, IPC_RMID, NULL);//Destroy process P1
				}
				else
				{
						//Process P3
						//Execute the binary file of "main_uppercase.c" program
						execl("./Process_3", "Process_3", NULL);
				}
		}
		else
		{
				//Process P2
				//Read the string
				char read_str[80];
				//Close write end & read from pipe
				close(fds[1]);
				read(fds[0], &size, 1);//Read 1 byte size value
				read(fds[0], read_str, size);//Read the string itself
				//Reverse the string which is read from pipe
				printf("Read string = %s\n", read_str);
				strrev(read_str, size, 0);
				printf("Rev string = %s\n", read_str);
				//Share the string using FIFO
				//Create a FIFO by name "TO_FIFO"
				mkfifo("TO_FIFO", 0664);
				//Open the FIFO file in write-only mode
				int fd = open("TO_FIFO", O_WRONLY);
				if (fd == -1)//Handle the error while opening the FIFO file
				{
						perror("open");
						return -1;
				}
				write(fd, &size, 1);//Write 1 byte size value onto FIFO file
				write(fd, read_str, size);//Write the reversed string onto FIFO file
				close(fd);//Close the file
		}
		return 0;
}

