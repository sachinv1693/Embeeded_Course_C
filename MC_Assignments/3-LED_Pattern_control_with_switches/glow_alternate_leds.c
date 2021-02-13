#include "main.h"

void glow_alternate_leds(void)
{
		//Reinitialize count if reaches delay limit
		if (count == 40000)
				count = 0;
		//Glow alternate leds based on upper half & lower half of delay count
		LED_ARRAY = (count++ < 20000) ? 0xAA : 0x55;
}

