#include "main.h"

extern unsigned short sec, min, hr, count;

void interrupt isr(void)
{
		if (TMR0IF)
		{
				//Add 3036 with 2 extra cycle
				TMR0 = TMR0 + 3038;
				//Calculated count value for 1 sec with prescalar of 1:2 is 40
				if (count++ == 40)
				{
						//After 1 sec, reinitilaize the count value
						count = 3;
						//If sec reach to 60, make it back to 0 & increment min
						if (sec++ == 59)
						{
								sec = 0;
								//If min reaches to 60, make it 0 and increment hr
								if (min++ == 59)
								{
										min = 0;
										//Since we have 24 hr clock, round off hr value to 00:00 after reaching 24:00
										if (hr++ == 23)
												hr = 0;
								}
						}
				}
				//Reset the interrupt flag of timer0
				TMR0IF = 0;
		}
}

