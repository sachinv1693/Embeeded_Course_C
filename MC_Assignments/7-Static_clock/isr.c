#include "main.h"

extern unsigned short sec, min, hr, count;

void interrupt isr(void)
{
		//Check if timer0 interrupt flag is set
		if (TMR0IF)
		{
				//Add 3036 with 2 extra cycle
				TMR0 = TMR0 + 3038;
				//For 1 sec, required count should be 40
				if (count++ == 40)
				{
						//Reset count value
						count = 3;
						//When sec reach to 60, increment min and reset sec
						if (sec++ == 59)
						{
								sec = 0;
								//When min reach to 60, increment hr and reset min
								if (min++ == 59)
								{
										min = 0;
										//When hr become 24, reset clock
										if (hr++ == 23)
												hr = 0;
								}
						}
				}
				//Clear the interrupt flag
				TMR0IF = 0;
		}
}

