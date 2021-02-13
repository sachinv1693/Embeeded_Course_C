#include <stdio.h>
#include <unistd.h>

int main()
{
		//Message the user to run the program in full screen mode and ENTER to continue
		printf("Make sure you are in full screen mode before you begin...\n");
		printf("Press ENTER key to print progress bar\n");
		//Reads characters till user enters '\n'
		getchar();
		setbuf(stdout, NULL);
		for (int i = 1; i <= 100; i++)
		{
				//Print loading word
				printf("Loading [");
				//Print '-' equal to iteration number
				for (int k = 0; k < i; k++)
				{
						printf("%c", '-');
				}
				//Print blanks and percentage display and use '\r' to replace the same line
				printf("%*s] %-3d%%\r", 100 - i, "", i);
				//sleep for 1 sec
				sleep(1);
		}
		printf("\n\n");
		return 0;
}

