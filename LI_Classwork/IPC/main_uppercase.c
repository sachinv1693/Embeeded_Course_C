#include <stdio.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>
#include <fcntl.h>
#include <ctype.h>

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
		char abc[] = "hello";
		//Read from FIFO
		//Open the FIFO file "TO_FIFO" in read only mode
		int fd = open("TO_FIFO", O_RDONLY);
		if (fd == -1)//Handle the error while opening the file
		{
				perror("open");
				return -1;
		}
		char size;//1 byte to store the size
		read(fd, &size, 1);//Read 1 byte size value from FIFO file
		char str[size];//A string of obtained size
		read(fd, str, size);//Read the string from the file
		convert_to_uppercase(str);//Convert the string into uppercase
		printf("Upper case string: %s\n", str);
		//Create a shared memory with key 'B' & of the size of string
		int shmid = shmget('B', size, IPC_CREAT | 0664);
		//Attach a pointer which points to shared memory base address
		char* ptr = shmat(shmid, NULL, 0);
		//Copy the string into shared memory
		strcpy(ptr, str);
		shmdt(ptr);//Detach the pointer from this shared memory
		return 0;
}

