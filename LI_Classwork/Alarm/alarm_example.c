#include <stdio.h>
#include <unistd.h>

int main()
{
		unsigned int my_time = alarm(10);//Returns 0
		printf("Initial alarm return = %u\n", my_time);//Print 0
		sleep(3);//Sleep for 3 sec
		unsigned int new_time = alarm(1);
		printf("New  alarm return = %u\n", new_time);
		//while(1); 
		unsigned int new_time1 = alarm(1);
		printf("New  alarm return = %u\n", new_time1);
		return 0;
}
