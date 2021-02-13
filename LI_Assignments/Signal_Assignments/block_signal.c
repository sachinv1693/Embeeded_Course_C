#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

void handler(int arg)
{
		if (arg == SIGINT)
				printf("SIGINT received\n");
		while (1)
		{
				printf("Inside handler\n");
				sleep(1);
		}
}

void handler_fun(int arg, siginfo_t* info, void* unused)
{
		//si_pid is not valid variable for SIGSEGV signal
		printf("Segmentation fault ..!!\nAddress %p caused error\n", info -> si_addr);
		exit(1);
}

int main()
{
		printf("Process %d waiting for signal..\nPress ctrl + C from terminal.\n", getpid());
		struct sigaction act, oldact;
		//Fill all the structure values with 0
		memset(&act, 0, sizeof(act));
		act.sa_handler = handler;//One argument function
		//act.sa_sigaction = handler_fun;//Three argument function
		//act.sa_flags = SA_SIGINFO;//must for three argument function
		sigaddset(&(act.sa_mask), SIGUSR1);
		sigaddset(&(act.sa_mask), SIGTERM);
		sigaddset(&(act.sa_mask), SIGABRT);
		sigaction(SIGINT, &act, &oldact);
		while(1);
		return 0;
}

