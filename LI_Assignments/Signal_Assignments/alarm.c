#define _XOPEN_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
#include <signal.h>
#include <unistd.h>

char no_stop = 1;

void snooze_or_stop();

void sig_handler(int arg)
{
		if (arg == SIGALRM)
				snooze_or_stop();
}

void snooze_or_stop()
{
		printf("\nWake up...Alarm!!!\n");
		char opt;
		int snz_time;
		printf("Select an option: 1. Snooze\
			  \n                  2. Stop\n");
		scanf("%hhd", &opt);
		switch (opt)
		{
				case 1://Snooze
						printf("Give time in min to snooze the alarm: ");
						scanf("%d", &snz_time);
						printf("Alarm snoozed for %d min\n", snz_time);
						alarm(snz_time * 60);
						signal(SIGALRM, sig_handler);
						break;
				case 2://Stop
						printf("Alarm stopped!!\n\n");
						no_stop = 0;
		}
}

void get_user_time(char* time_str, int input_len, struct tm* obj, struct tm* read_val)
{
		//Get the time value from 2nd argument
		char* input = strptime(time_str, "%H:%M", read_val);
		if (input == NULL || input_len == 4 && *input == time_str[3] || input_len == 5 && *input == time_str[4])
		{
				printf("Error: Invalid time provided!\n");
				exit(1);
		}
		printf("User provided time: %d:%d\n", read_val -> tm_hour, read_val -> tm_min);
}

void validate_date(struct tm read_val)
{
		//Check if no. of days in a month are apt with that month
		if (read_val.tm_mon == 1 && !(read_val.tm_year % 4) && read_val.tm_mday > 29 || read_val.tm_mon == 1 && read_val.tm_year % 4 && read_val.tm_mday > 28 || read_val.tm_mday > 30 && read_val.tm_mon % 2 && read_val.tm_mon < 7 || read_val.tm_mday > 30 && !(read_val.tm_mon % 2) && read_val.tm_mon >= 7)
		{
				printf("\nError: Invalid date provided!\n\n");
				exit(1);
		}
}

void get_user_date(char* date_str, int input_len, struct tm* obj, struct tm* read_val)
{
		memset(obj, 0, sizeof(obj));
		//Get the time value from 2nd argument
		char* input = strptime(date_str, "%d/%m/%y", read_val);
		if (input == NULL || input_len > 8)
		{
				printf("Invalid date input!\
								\nUsage: ./alarm <hh:mm> [dd/mm/yy]\
								\n     : dd-> (1-31), mm->(1-12)\
								\n     : yy->(0-99) => 00-68: 2000-2068\
								=> 69-99: 1969-1999\
								Failing to use above conventions will result in an error or undefined behavior\n\n");
				exit(1);
		}
		validate_date(*read_val);//validate date as per leap
		printf("User provided date: %d/%d/%d\n", read_val -> tm_mday, read_val -> tm_mon + 1, read_val -> tm_year + 1900);
}

int main(int argc, char* argv[])
{
		struct tm read_val;//Structure variable to store user entries
		time_t var = time(NULL);//Variable to get current epoch time
		struct tm* obj = localtime(&var);//Structure pointer to hold address of contents having local time
		if (argc == 2)//If only 1 command line argument - time
		{
				printf("Current time: %d:%d\n", obj -> tm_hour, obj -> tm_min);
				//Read the argument and store values into the structure
				get_user_time(argv[1], strlen(argv[1]), obj, &read_val);
				//Set the date as today's date
				read_val.tm_year = obj -> tm_year;
				read_val.tm_mon = obj -> tm_mon;
				read_val.tm_mday = obj -> tm_mday;
		}
		else if (argc == 3)//2 command line arguments - time & date
		{
				printf("Current time: %d:%d\n", obj -> tm_hour, obj -> tm_min);
				//Read arguments and store values into the structures
				get_user_time(argv[1], strlen(argv[1]), obj, &read_val);
				printf("Today's date: %d/%d/%d\n", obj -> tm_mday, obj -> tm_mon + 1, obj -> tm_year + 1900);
				get_user_date(argv[2], strlen(argv[2]), obj, &read_val);
		}
		else//Error message
		{
				printf("\nERROR: No or Invalid number of arguments passed!\n");
				printf("Usage: ./alarm <hh:mm> [dd/mm/yy]\n\n");
				exit(1);
		}
		//printf("Read values : %d:%d %d/%d/%d\n", read_val.tm_hour, read_val.tm_min, read_val.tm_mday, read_val.tm_mon + 1, read_val.tm_year + 1900);
		//Check if given time is future time w.r.t. local time
		char future_time = 1, today_it_is = 0;
		if ((read_val.tm_year + 1900) >= (obj -> tm_year + 1900))
		{
				//printf("Year is greater than or equal to current year\n");
				if (read_val.tm_year == obj -> tm_year && read_val.tm_mon >= obj -> tm_mon)
				{
						//printf("Year is equal, month is greater than or equal to current month\n");
						if (read_val.tm_mon == obj -> tm_mon && read_val.tm_mday >= obj -> tm_mday)
						{
								//printf("Month is equal, month day is greater than or equal to current month day\n");
								if (read_val.tm_mday == obj -> tm_mday && read_val.tm_hour >= obj -> tm_hour)
								{
										today_it_is = 1;
										//printf("This is today, hour is greater than or equal to current hour\n");
										if (read_val.tm_hour == obj -> tm_hour && read_val.tm_min <= obj -> tm_min)
										{
												//printf("Hour is equal, min is less than or equal to current min\n");
												future_time = 0;
										}
								}
								else if (read_val.tm_mday == obj -> tm_mday && read_val.tm_hour < obj -> tm_hour)
										future_time = 0;
						}
						else if (read_val.tm_mon == obj -> tm_mon && read_val.tm_mday < obj -> tm_mday)
								future_time = 0;
				}
				else if (read_val.tm_year == obj -> tm_year && read_val.tm_mon < obj -> tm_mon)
						future_time = 0;
		}
		else
				future_time = 0;
		if (future_time)
		{
				(today_it_is) ? printf("Alarm is set at %d:%d for today\n\n", read_val.tm_hour, read_val.tm_min) : printf("Alarm is set at %d:%d on %d/%d/%d\n\n", read_val.tm_hour, read_val.tm_min, read_val.tm_mday, read_val.tm_mon + 1, read_val.tm_year + 1900);
		}
		else
		{
				printf("Sorry!! It's not future time. Alarm cannot be set for given input!\n\n");
				exit(1);
		}
		//Start the alarm with difference in the epoch time values
		printf("Time left in sec = %ld\n", mktime(&read_val) - var);
		//mktime() is used for converting 'struct tm' value to epoch value
		alarm(mktime(&read_val) - var);//Set an alarm with epoch difference
		signal(SIGALRM, sig_handler);//Handle the signal using SIGALRM
		while(no_stop);//Continue till stop is not requested!
		return 0;
}

