#include <stdio.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>
#include <fcntl.h>
#include <ctype.h>

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
		//Read from the same shared memory with key 'B'
		int shmid = shmget('B', 80, IPC_CREAT | 0664);
		//Attach a pointer which points to shared memory base address
		char* ptr = shmat(shmid, NULL, 0);
		//Read the shared memory area
		char str[80] = {'\0'};//String to display
		strcpy(str, ptr);//Copy the string from shared memory
		strrev(str, strlen(str), 0);//Reverse the string
		printf("String reversed by P2 as: %s\n", str);
		shmdt(ptr);//Detach the pointer from this shared memory
		shmctl(shmid, IPC_RMID, NULL);//Destroy process P2
		return 0;
}

