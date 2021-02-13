#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
		int shmid;
		shmid = shmget('B', 100, IPC_CREAT | 0664);
		char* str = shmat(shmid, NULL, 0);
		scanf("%[^\n]", str);
		while(1);
		shmdt(str);
		return 0;
}

