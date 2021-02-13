#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

/* We must define union semun ourselves. */
union semun {
	int val;
	struct semid_ds *buf;
	unsigned short int *array;
	struct seminfo *__buf;
};


/* Deallocate a binary semaphore. All users must have finished their use. Returns -1 on failure. */
int binary_semaphore_deallocate (int semid)
{
	union semun ignored_argument;
	return semctl (semid, 1, IPC_RMID, ignored_argument);
}

/* Initialize a binary semaphore with a value of 1. */
int binary_semaphore_initialize (int semid)
{
	union semun argument;
	unsigned short values[1];
	values[0] = 1;
	argument.array = values;
	return semctl (semid, 0, SETALL, argument);
}

/* Wait on a binary semaphore. Block until the semaphore value is positive, then decrement it by 1. */

int binary_semaphore_wait (int semid)
{
	struct sembuf operations[1];
	/* Use the first (and only) semaphore. */
	operations[0].sem_num = 0;
	/* Decrement by 1. */
	operations[0].sem_op = -1;
	/* Permit undoing. */
	operations[0].sem_flg = 0; //SEM_UNDO;
	return semop (semid, operations, 1);
}

/* Post to a binary semaphore: increment its value by 1. This returns immediately. */
int binary_semaphore_post (int semid)
{ struct sembuf operations[1];
	/* Use the first (and only) semaphore. */
	operations[0].sem_num = 0;
	operations[0].sem_op = 1;//Increment by 1.
	/* Permit undoing. */
	operations[0].sem_flg = 0; //SEM_UNDO;
	return semop (semid, operations, 1); 
}

int main()
{
	int segment_id;
	char*shared_memory;
	struct shmid_ds shmbuffer;
	int segment_size;
	const int shared_segment_size =0x6400;
	int key=1402;
	int semid;

	/*Allocate a shared memory segment.*/
	segment_id = shmget(0x12345, shared_segment_size, IPC_CREAT | IPC_EXCL | 0666);
	perror("shmget");
	
	/*Attach the shared memory segment.*/
	shared_memory =(char*)shmat (segment_id,0,0);
	printf ("1---shared memory attached at address %p -------\n ", shared_memory);

	/*Allocating a binary semophore */
	printf("semid = %d\n", (semid = semget(key, 1, IPC_CREAT | 0666)));
	perror("semget");
	printf("1---semophore created.------------\n");

	/*Initialization the semaphore*/
	binary_semaphore_initialize (semid);
	printf("1---The semaphore is initialized.--------\n");

	/*Wait call*/
	binary_semaphore_wait(semid);
	printf("--------1---Wait Call returned--------\n");
	/*Write a string to the shared memory segment.*/
	sprintf (shared_memory,"Hi how r you?\n");
	printf("--------1---Message posted.--------\n");
	sleep(60);

	/********Post Call*/
	binary_semaphore_post(semid);
	printf("--------1---Post call returned.---------\n");

	/*Wait call*/
	binary_semaphore_wait(semid);
	printf("--------1---Wait Call returned--------\n");	

	/*Print out the string from shared memory.*/
	printf ("%s \n ",shared_memory);

	/********Post Call*/
	binary_semaphore_post(semid);
	printf("--------1---Post call returned.---------\n");

	/*Detach the shared memory segment.*/
	shmdt (shared_memory);
	printf("--------1---Detached from the segment-------\n");

	return 0;
}
