#include "main.h"

/*Note: Since if-else is executed in every function call, time taken for code execution is added into the delay. So, keep non-blocking delay count smaller than that of blocking delay count.*/

void uni_dir_led_train(unsigned char direction)
{
		//Store count value and iterator as static so that its value is updated on every function call
		static unsigned short count = 0, i = 0;
		//Increment the count and reset it when it amounts to certain delay
		if (count++ == 10000)
		{
				count = 0;
				//When i reaches to 16, reinitialize it to 0
				if (++i == 16) 
						i = 0;
		}
		//LED train in forward direction
		if (direction == FORWARD)
		{
				//Turn OFF LEDs in forward direction when i is more than 7
				//Else turn ON LEDs in forward direction
				LED_ARRAY = (i > 7) ? LED_ARRAY & ~(01 << i - 8) : LED_ARRAY | (01 << i);
		}
		//LED train in reverse direction
		else if (direction == REVERSE)
		{
				//Turn OFF LEDs in opposite direction when i is more than 7
				//Else turn ON LEDs in opposite direction
				LED_ARRAY = (i > 7) ? LED_ARRAY & ~(01 << 15 - i) : LED_ARRAY | (01 << 7 - i);
		}
}

