#include "main.h"

static void init_config(void)
{
		//Set ADCON1 to 0x0F so that the LED pins become digital pins
		ADCON1 = 0x0F;
		//Initialize LED_ARRAY means PORTB to 0 i.e. all LEDs are OFF initially
		LED_ARRAY = OFF;
		//Set TRISB to 0 so that the PORTB behaves as output port
		TRISB = 0x00;
}

void main(void)
{
		//Initialize LED pin confihurations
		init_config();
		while (1)
		{
#if BLOCKING
				//Call to blocking led_train function
				blocking_led_train();
#else
				//Call to non-blocking led_train function
				non_blocking_led_train();
#endif
		}
}

