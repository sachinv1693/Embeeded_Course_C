#include "main.h"
#include "pic_specific.h"

//Extern 7SD display count, timer count and incrementer flag
extern unsigned short disp_count, tim_count, inc_flag;

void interrupt isr(void)
{
		//Check timer0 interrupt flag
		if (TMR0IF)
		{
				//Add 3036 with 2 extra cycle
				TMR0 = TMR0 + 3038;
				//Count is 200 for 5 sec delay
				if (tim_count++ == 200)
				{
						//Reinitialize timer count & display count
						tim_count = 0;
						disp_count = 0;
						//Turn OFF inc_flag and turn OFF the timer
						inc_flag = OFF;
						TMR0ON = OFF;
				}
				//Clear the interrupt flag
				TMR0IF = 0;
		}
}

