#include <stdio.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/shm.h>
#include <unistd.h>
#include <fcntl.h>
#include <ctype.h>

void strrev(char* s, int size, char iter)
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
		//Read from shared memory
		char str[80] = {'\0'};
		//Open the shared memory of the same size with key 'B'
		int shmid = shmget('B', 80, IPC_CREAT | 0664);
		//Attach a pointer which points to shared memory base address
		char* ptr = shmat(shmid, NULL, 0);
		//Get the string from shared memory
		strcpy(str, ptr);
		shmdt(ptr);//Detach the pointer from this shared memory
		shmctl(shmid, IPC_RMID, NULL);//Destroy process P1
		int size = strlen(str);
		strrev(str, size, 0);//Reverse the string
		printf("String is reversed by P3\nSo the resultant string is: %s\nNow writing the modified string into fifo file 'TO_FIFO'\n", str);
		//Create a FIFO file by name "TO_FIFO"
		mkfifo("TO_FIFO", 0664);
		//Open the FIFO file "TO_FIFO" in read only mode
		int fd = open("TO_FIFO", O_WRONLY);
		if (fd == -1)//Handle the error while opening the file
		{
				perror("open");
				return -1;
		}
		write(fd, &size, sizeof(int));
		write(fd, str, size);
		close(fd);
		return 0;
}

