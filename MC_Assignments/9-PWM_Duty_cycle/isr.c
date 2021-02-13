#include "main.h"
#include "pic_specific.h"

extern unsigned char duty_change;

void interrupt isr(void)
{
		static unsigned short count = 0;
		if (TMR0IF)
		{
				//Add 3036 with 2 extra cycle
				TMR0 = TMR0 + 3038;
				//Increment count till 200 to get 5 sec
				if (count++ == 200)
				{
						//Reset count
						count = 0;
						//Reset duty cycle to 25
						duty_change = 25;
						//Turn OFF timer0
						TMR0ON = OFF;
				}
				//Clear the interrupt flag
				TMR0IF = 0;
		}
}

