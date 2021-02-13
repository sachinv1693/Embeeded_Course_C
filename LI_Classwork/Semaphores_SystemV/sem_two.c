#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <errno.h>
/* We must define union semun ourselves. */
union semun {
	int val;
	struct semid_ds *buf;
	unsigned short int *array;
	struct seminfo *__buf;
};

/* Obtain a binary semaphore ID, allocating if necessary. */
int binary_semaphore_allocation(key_t key, int sem_flags)
{
	return semget (key, 1, sem_flags);
}

/* Deallocate a binary semaphore. All users must have finished their use. Returns -1 on failure. */
int binary_semaphore_deallocate (int semid)
{
	union semun ignored_argument;
	return semctl (semid, 1, IPC_RMID, ignored_argument);
}

/* Initialize a binary semaphore with a value of 1. */
int binary_semaphore_initialize(int semid)
{
	union semun argument;
	unsigned short values[1];
	values[0] = 1;
	argument.array = values;
	return semctl (semid, 0, SETALL, argument);
}

/* Wait on a binary semaphore. Block until the semaphore value is positive, then decrement it by 1. */

int binary_semaphore_wait(int semid)
{
	struct sembuf operations[1];
	/* Use the first (and only) semaphore. */
	operations[0].sem_num = 0;
	/* Decrement by 1. */
	operations[0].sem_op = -1;
	/* Permit undoing. */
	operations[0].sem_flg = SEM_UNDO;
	semop (semid, operations, 1);
}

/* Post to a binary semaphore: increment its value by 1. This returns immediately. */
int binary_semaphore_post(int semid)
{
	struct sembuf operations[1];

	/* Use the first (and only) semaphore. */
	operations[0].sem_num = 0;
	operations[0].sem_op = 1;//Increment by 1.
	/* Permit undoing. */
	operations[0].sem_flg = SEM_UNDO;
	return semop (semid, operations, 1); 
}

int main()
{
	int segment_id;
	char*shared_memory;
	int semid;
	struct shmid_ds shmbuffer;
	int segment_size;
	const int shared_segment_size =0x6400;
	int key=1402;

	segment_id = shmget (0x12345, shared_segment_size,IPC_CREAT | S_IRUSR | S_IWUSR);
	printf("--------2---Allocated a shared segment----\n");
	/*Attach the shared memory segment.*/
	shared_memory =(char*)shmat (segment_id,0,0);
	printf ("-------2---shared memory attached at address %p -------\n ", shared_memory);	

	/*Wait call*/
	semid = semget(key, 1, IPC_CREAT | 0666);
	printf("semid = %d\n", semid);
	printf("%d", binary_semaphore_wait(semid));
	perror("Sem");
	printf("--------2---Wait Call returned--------\n");

	/*printing the content in the shared memory*/
	printf ("%s \n ",shared_memory);                                                                               
	/*Write a string to the shared memory segment.*/
	sprintf (shared_memory,"I am fine. How r u?\n");
	printf("--------2---Message posted.--------\n");
	sleep(6);

	/********Post Call*/
	binary_semaphore_post(semid);
	printf("--------2---Post call returned.---------\n");

	/*Detach the shared memory segment.*/
	shmdt (shared_memory);
	printf("--------2---Detached from the segment-------\n");
	sleep(2);

	/*Deallocate the shared memory segment.*/
	shmctl (segment_id,IPC_RMID,0);
	printf("--------2---Finally Deallocated the shared memory.-------\n");

	return 0;
}
