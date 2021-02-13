#include <stdio.h>
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
		char str[80] = {'\0'};//Store a string
		printf("Enter a string: ");
		scanf("%[^\n]", str);
		convert_to_uppercase(str);//Convert the string into uppercase
		//Now create a shared memory & copy the size & the string
		int shmid = shmget('B', 80, IPC_CREAT | 0664);
		//Attach a ponter to the starting address of shared mem
		char* ptr = shmat(shmid, NULL, 0);
		strcpy(ptr, str);//Store the string from next address
		shmdt(ptr);//Detach the process P1
		printf("Case converted string is stored onto shared memory by P1!\n");
		return 0;
}

