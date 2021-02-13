#include "main.h"

void glow_alternate_nibbles(void)
{
		//If count reaches to delay limit, make it back to 0
		if (count == 40000)
				count = 0;
		//Glow first 4 leds in the initial half of the delay limit
		//Glow next 4 leds in the later half of the delay limit
		LED_ARRAY = (count++ < 20000) ? 0xF0 : 0x0F;
}

