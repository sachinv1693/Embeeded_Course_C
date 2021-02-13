#include <stdio.h>
#include <time.h>//Path is inside /usr/include
#include <sys/time.h>//Path is inside /usr/include/sys

int main()
{
		struct timeval my_time;
		time_t var = time(NULL);
		struct tm* obj;
		printf("Epoch time in sec: %ld\n", var);
		printf("Epoch date : %s", ctime(&var));
		obj = localtime(&var);
		gettimeofday(&my_time, NULL);
		printf("Time of day in sec: %lu\n", my_time.tv_sec);
		printf("Time of day in micro-sec: %lu\n", my_time.tv_usec);
		//Day of month is correct vale
		//Month is returned as 0 to 11. So do +1 in the obtained value
		//Year is calculated after 1900. So add 1900 to get exact year
		printf("Today's date is: %d/%d/%d\n", obj -> tm_mday, obj -> tm_mon + 1, obj -> tm_year + 1900);
		return 0;
}

