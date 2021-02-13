#include <stdio.h>
#include <string.h>
#include <signal.h>

void handler(int arg)
{
		printf("SIGINT received\n");
}

void handler_2(int arg, siginfo_t* info, void* unused)
{
		printf("SIGINT received handler2 from %d\n", info -> si_pid);
}

int main()
{
		struct sigaction act, oldact;
		//Fill all the structure values with 0
		memset(&act, 0, sizeof(act));
		//act.sa_handler = handler;//One argument function
		act.sa_sigaction = handler_2;//Three argument function
		act.sa_flags = SA_SIGINFO;//must for three argument function
		sigaction(SIGINT, &act, &oldact);
		while(1);
		return 0;
}

