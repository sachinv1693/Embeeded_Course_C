#include "main.h"

/*Note: Since if-else is executed in every function call, time taken for code execution is added into the delay. So, keep non-blocking delay count smaller than that of blocking delay count.*/

void bi_dir_led_train(void)
{
		//Increment count & reset it when it amounts to certain delay
		if (count++ == 10000)
		{
				count = 0;
				//When i reaches to 32, reinitialize it to 0
				if (++i == 32)
						i = 0;
		}
		//Turn OFF LEDs in opposite direction
		if (i > 23)
				LED_ARRAY &= ~(01 << 31 - i);
		//Turn ON LEDs in opposite direction
		else if (i > 15)
				LED_ARRAY |= (01 << 23 - i);
		//Turn OFF LEDs in forward direction
		else if (i > 7)
				LED_ARRAY &= ~(01 << i - 8);
		//Turn ON LEDs in forward direction
		else
				LED_ARRAY |= (01 << i);
}

