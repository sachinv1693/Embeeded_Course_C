#include "pic_specific.h"

void interrupt isr(void)
{
	static unsigned short count, count1;
     
	if (TMR1IF)
	{
		//	LED1 = 1;

		TMR1 = TMR1 + 3038;

		if (count++ == 10)
		{
			count = 0;
			LED1 = !LED1;
		}
		if (count1++ == 20)
		{
			count1 = 0;
			RB1 = !RB1;
		}
		TMR1IF = 0;
	}
}
