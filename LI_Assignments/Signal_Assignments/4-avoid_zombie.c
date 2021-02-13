#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

//Flag to know if one argument function is used or three argument function is used
int one_argument_handler = 1;
int wait_status;

void handler_1(int arg)
{
		printf("SIGCHILD received in handler1\n");
		wait(&wait_status);//wait for child process to terminate
}       

void handler_2(int arg, siginfo_t* info, void* unused)
{       
		printf("SIGCHILD received in handler2 from child pid %d\n", info -> si_pid);
}       

int main()
{
		if (fork())
		{
				struct sigaction act, oldact;
				//Fill all the structure values with 0
				memset(&act, 0, sizeof(act));
			    if (one_argument_handler)
				{
						signal(SIGCHLD, handler_1);//One argument function
				}
				else
				{
						act.sa_sigaction = handler_2;//Three argument function
						act.sa_flags = SA_SIGINFO | SA_NOCLDWAIT;//must for three argument function
						sigaction(SIGCHLD, &act, &oldact);
				}
				sleep(3);//Parent sleeps for more time than child
		}
		else
		{
				sleep(2);//Child sleeps for sometime
		}
}

