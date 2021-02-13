#include <stdio.h>
#include <unistd.h>
#include <signal.h>

int no_of_receptions = 1;

void sig_handler(int arg)
{
		if (arg == SIGINT)
		{
				printf("SIGINT signal received %d times\n", no_of_receptions);
				if (no_of_receptions++ == 5)
						signal(SIGINT, SIG_DFL);
		}
		else if (arg == SIGTSTP)
				printf("SIGTSTP signal received\n");
}

int main()
{
		signal(SIGINT, sig_handler);
		signal(SIGTSTP, sig_handler);
		while(1)
		{
				printf("Inside main\n");
				sleep(1);
		}
}

