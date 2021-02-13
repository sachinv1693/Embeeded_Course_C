#include "main.h"

/*Note: Since if-else is executed in every function call, time taken for code execution is added into the delay. So, keep non-blocking delay count smaller than that of blocking delay count.*/

void uni_dir_led_train(void)
{
		//Increment the count & reset it when it amounts to certain delay
		if (count++ == 10000)
		{
				count = 0;
				//When i reaches to 16, reinitialize it to 0
				if (++i == 16) 
						i = 0;
		}
		//Turn OFF LEDs in forward direction if i is more than 7
		//Else turn ON LEDs in forward direction
		LED_ARRAY = (i > 7) ? LED_ARRAY & ~(01 << i - 8) : LED_ARRAY | (01 << i);
}

