#include "pic_specific.h"

unsigned short count, count1, count2;

void interrupt isr(void)
{
		if (TMR0IF)
		{
				//Add 3036 with 2 extra cycle
				TMR0 = TMR0 + 3038;

				if (count++ == 20)
				{
						count = 5;
						LED1 = !LED1;
				}
				TMR0IF = 0;
		}
		if (TMR1IF)
		{   
				TMR1 = TMR1 + 3038;

				if (count1++ == 10) 
				{
						count1 = 3;
						LED2 = !LED2;
				}
				TMR1IF = 0;
		}   
		if (TMR2IF)
		{   
				TMR2 = TMR2 + 8;

				if (count2++ == 2500) 
				{
						count2 = 0;
						LED3 = !LED3;
				}
				TMR2IF = 0;
		}   
}

