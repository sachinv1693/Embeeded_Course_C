#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <errno.h>
#include <fcntl.h>


//Function prototype	
void fibo_rec(int limit);
void prime_no(int limit);

int main()
{
		int limit;
		//Input limit
		printf("Enter limit of fibonacci series & prime numbers: ");
		scanf("%d", &limit);
		if (limit < 0)
		{
				printf("Invalid limit!\nPlease enter a non-negative number!\n\n");
				return 0;
		}
		printf("\nSuccessfully written fibo series and prime nos. onto the file 'fibo_prime.txt'\nCheck the contents of this file by using cat command!\n\n");
		umask(0);
		//Create a file to write/overwrite prime numbers and fibonacci series
		int fd = open("fibo_prime.txt", O_CREAT | O_TRUNC | O_WRONLY, 0664);
		struct flock fl;//Create a variable of structure struct flock
		fl.l_type = F_WRLCK;//Use Write Lock since we are writing onto the file
		fl.l_whence = SEEK_SET;//Let file offset begin from beginning of file
		fl.l_start = 0;//Starting offset of lock is also set to beginning (0) 
		fl.l_len = 0;//For unknown size of file, we have to set it as 0
		if (fork())
		{
				//Parent
				//Provide parent process pid to structure
				fl.l_pid = getpid();
				//Lock the file
				fcntl(fd, F_WRLCK, &fl);
				//Duplicate stdout with fibo_prime.txt
				close(1);
				dup(fd);
				printf("\nFibonacci series: ");
				fibo_rec(limit);//Prints fibo series till given limit
				printf("\n");
				//Unlock the file
				fcntl(fd, F_UNLCK, &fl);
				wait(NULL);//wait for child process to finish to avoid zombie
		}
		else
		{
				//Child
				//Provide child process pid to structure
				fl.l_pid = getpid();
				//Lock the file
				fcntl(fd, F_SETLK, &fl);
				//Duplicate stdout with fibo_prime.txt
				close(1);
				dup(fd);
				printf("\nPrime numbers   : ");
				prime_no(limit);//Prints prime nos. till given limit
				printf("\n\n");
				//Unlock the file
				fcntl(fd, F_UNLCK, &fl);
		}
		close(fd);
		return 0;
}

void fibo_rec(int limit)
{
		//Declare two static integers to store previous and next value
		static int prev = 0, next = 1;
		//Base case: return on exceeding the limit
		if (prev > limit)
		{
				prev = 0; next = 1;
				return;
		}
		else//Recursive case
		{
				//Limit entry is non-negative
				if (limit >= 0)
				{//Print prev value and adjust the prev and next values
						printf("%d ", prev);
						next += prev;
						prev = next - prev;
				}
				//Recursive function call
				fibo_rec(limit);
		}
}

void prime_no(int limit)
{
		if (limit < 2)//There are no prime numbers before 2
				printf("None");
		for (int num = 1; num <= limit; num++)//Loop from 1 to given limit
		{
				//count flag to check if num is divisible multiple times
				int count = 0;
				//Loop from 2 to half the current num & check divisibility
				//Prime no. is only divisible by 1 and itself
				for (int i = 2; i <= num / 2; i++)
				{
						//Increment count and break if divisibility is found
						if (num % i == 0)
						{
								count++;
								break;
						}
				}
				//Check if count is still 0 except when num is 1 & print
				if (count == 0 && num != 1)
						printf("%d ", num);
		}
}

