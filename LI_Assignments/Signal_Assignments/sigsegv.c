#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>

void handler(int arg)
{
		printf("SIGINT received\n");
}

void handler_fun(int arg, siginfo_t* info, void* unused)
{
		//si_pid is not valid variable for SIGSEGV signal
		printf("Segmentation fault ..!!\nAddress %p caused error\n", info -> si_addr);
		exit(1);
}

int main()
{
		struct sigaction act, oldact;
		//Fill all the structure values with 0
		memset(&act, 0, sizeof(act));
		//act.sa_handler = handler;//One argument function
		act.sa_sigaction = handler_fun;//Three argument function
		act.sa_flags = SA_SIGINFO;//must for three argument function
		sigaction(SIGSEGV, &act, &oldact);
		int* p = (int*) 0xABCD;
		*p = 10;
		while(1);
		return 0;
}

